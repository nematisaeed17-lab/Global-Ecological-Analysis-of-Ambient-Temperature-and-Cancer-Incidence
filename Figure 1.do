
twoway ///
(scatter lung temp, mcolor(navy) msymbol(O)) ///
(lfitci lung temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = -0.64 (95% CI: -0.77 to -0.50)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("Lung cancer") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) ///
plotregion(color(white))

twoway ///
(scatter breast temp, mcolor(navy) msymbol(O)) ///
(lfitci breast temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = -1.36 (95% CI: -1.78 to -0.94)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("Breast cancer") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) ///
plotregion(color(white)) 


twoway ///
(scatter cervix temp, mcolor(navy) msymbol(O)) ///
(lfitci cervix temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = 0.54 (95% CI: 0.28 to 0.80)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("Cervical cancer") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) /// 
plotregion(color(white)) 



twoway ///
(scatter CRC temp, mcolor(navy) msymbol(O)) ///
(lfitci CRC temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = -0.64 (95% CI: -0.78 to -0.50)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("Colorectal cancer") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) /// 
plotregion(color(white))  



twoway ///
(scatter thyroid temp, mcolor(navy) msymbol(O)) ///
(lfitci thyroid temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = -0.25 (95% CI: -0.40 to -0.11)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("Thyroid cancer") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) /// 
plotregion(color(white))  




twoway ///
(scatter All temp, mcolor(navy) msymbol(O)) ///
(lfitci All temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = -5.11 (95% CI: -6.22 to -4.00)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("All cancer sites") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) /// 
plotregion(color(white)) 


*** Men *** 

twoway ///
(scatter Lung temp, mcolor(navy) msymbol(O)) ///
(lfitci Lung temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = -1.40 (95% CI: -1.66 to -1.15)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("Lung cancer") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) /// 
plotregion(color(white))  


twoway ///
(scatter Prostate temp, mcolor(navy) msymbol(O)) ///
(lfitci Prostate temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = -1.27 (95% CI: -1.75 to -0.78)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("Prostate cancer") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) /// 
plotregion(color(white))  


twoway ///
(scatter Stomach temp, mcolor(navy) msymbol(O)) ///
(lfitci Stomach temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = -0.36 (95% CI: -0.50 to -0.23)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("Stomach cancer") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) /// 
plotregion(color(white))  


twoway ///
(scatter CRC temp, mcolor(navy) msymbol(O)) ///
(lfitci CRC temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = -1.07 (95% CI: -1.29 to -0.85)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("Colorectal cancer") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) /// 
plotregion(color(white))  



twoway ///
(scatter Liver temp, mcolor(navy) msymbol(O)) ///
(lfitci Liver temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = -0.01 (95% CI: -0.22 to 0.19)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("Liver cancer") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) /// 
plotregion(color(white)) 



twoway ///
(scatter asrworldper100000 temp, mcolor(navy) msymbol(O)) ///
(lfitci asrworldper100000 temp, ///
    lcolor(maroon) ///
    fcolor(gs12%30) ///
    fintensity(20)) ///
, ///
text(26 2 "β = -7.80 (95% CI: -8.99 to 6.60)", ///
     size(vbig) place(e)) ///
legend(off) ///
title("All cancer sites") ///
xtitle("Average annual temperature (°C)") ///
ytitle("Age-standardized incidence rate (ASR)") ///
graphregion(color(white)) /// 
plotregion(color(white)) 


