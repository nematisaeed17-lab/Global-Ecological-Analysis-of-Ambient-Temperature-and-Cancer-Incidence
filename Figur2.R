library(ggplot2)
library(gridExtra)

###############################
## Men
###############################

men <- data.frame(
  Cancer = factor(c("Lung","Prostate","Colorectal","Stomach","Liver","All sites"),
                  levels = rev(c("Lung","Prostate","Colorectal","Stomach","Liver","All sites"))),
  
  Type = rep(c("Adjusted","Unadjusted"), each = 6),
  
  Estimate = c(
    -0.23, 0.02, -0.08, -0.59, -0.22, -1.33,
    -1.40,-1.27,-1.07,-0.36,-0.01,-7.80
  ),
  
  Lower = c(
    -0.53,-0.56,-0.33,-0.79,-0.50,-2.70,
    -1.66,-1.75,-1.29,-0.50,-0.22,-8.99
  ),
  
  Upper = c(
    0.06,0.61,0.16,-0.39,0.06,0.03,
    -1.15,-0.78,-0.85,-0.23,0.19,-6.60
  )
)

###############################
## Women
###############################

women <- data.frame(
  Cancer = factor(c("Breast","Lung","Colorectal","Cervical","Thyroid","All sites"),
                  levels = rev(c("Breast","Lung","Colorectal","Cervical","Thyroid","All sites"))),
  
  Type = rep(c("Adjusted","Unadjusted"), each = 6),
  
  Estimate = c(
    0.32,-0.15,-0.07,-0.21,0.14,-0.90,
    -1.36,-0.64,-0.64,0.54,-0.25,-5.11
  ),
  
  Lower = c(
    -0.15,-0.33,-0.22,-0.53,-0.04,-2.20,
    -1.78,-0.77,-0.78,0.28,-0.40,-6.22
  ),
  
  Upper = c(
    0.80,0.03,0.08,0.10,0.34,0.39,
    -0.94,-0.50,-0.50,0.80,-0.11,-4.00
  )
)

###############################
## Forest function
###############################

forest_plot <- function(dat,title){
  
  ggplot(dat,
         aes(x = Estimate,
             y = Cancer,
             colour = Type)) +
    
    geom_vline(xintercept = 0,
               linetype = 2,
               colour = "grey40") +
    
    geom_errorbarh(aes(xmin = Lower,
                       xmax = Upper),
                   height = 0.15,
                   position = position_dodge(width = 0.5),
                   linewidth = 0.8) +
    
    geom_point(position = position_dodge(width = 0.5),
               size = 3) +
    
    scale_colour_manual(values = c(
      "Adjusted" = "#D55E00",
      "Unadjusted" = "#0072B2"
    )) +
    
    labs(title = title,
         x = "Regression coefficient",
         y = NULL,
         colour = NULL) +
    
    theme_classic(base_size = 13) +
    
    theme(
      plot.title = element_text(face="bold",hjust=.5),
      legend.position = "bottom",
      legend.text = element_text(size=11)
    )
}

###############################
## Draw
###############################

p1 <- forest_plot(men,"A: Men")
p2 <- forest_plot(women,"B: Women")

grid.arrange(
  p1,
  p2,
  ncol = 2
) 

tiff("Forest_plot_temperature_cancer.tif",
     width = 12,
     height = 6,
     units = "in",
     res = 600,
     compression = "lzw")

grid.arrange(
  p1,
  p2,
  ncol = 2
)

dev.off()