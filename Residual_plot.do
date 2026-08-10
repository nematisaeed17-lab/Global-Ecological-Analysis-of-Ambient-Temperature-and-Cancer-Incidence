

regress Lung temp i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 alocoholliter 

rvfplot, ///
    yline(0, lcolor(red)) ///
    title("Lung cancer", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_lung, replace) 
	

regress Prostate temp i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000

rvfplot, ///
    yline(0, lcolor(red)) ///
    title("Prostate cancer", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_pros, replace)  
	
	

regress CRC temp i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000   


rvfplot, ///
    yline(0, lcolor(red)) ///
    title("Colorectal cancer", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_CRC, replace)  
	

regress Stomach temp i.SDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000  

rvfplot, ///
    yline(0, lcolor(red)) ///
    title("Stomach cancer", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_Sto, replace)   
	
	
regress Liver temp i.SDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 diabmen hepB hepC alocoholliter chirosismale  	

rvfplot, ///
    yline(0, lcolor(red)) ///
    title("Liver cancer", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_Liver, replace)    
	

regress asrworldper100000 temp  i.SDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 diabmen hepB hepC alocoholliter 

rvfplot, ///
    yline(0, lcolor(red)) ///
    title("All Cancer sites", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_All, replace)   
	
	

regress breast temp i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp breastfeedingpctinfantsbreastfed  sec_female  


rvfplot, ///
    yline(0, lcolor(red)) ///
    title("Breast Cancer", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_breasst, replace)    
	
regress lung temp i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair sec_female    

rvfplot, ///
    yline(0, lcolor(red)) ///
    title("Lung Cancer", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_lung, replace)      
	

regress CRC temp HDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair  sec_female 

rvfplot, ///
    yline(0, lcolor(red)) ///
    title("Colorectal Cancer", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_CRC, replace)   	 
	
	
regress cervix temp  HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair workingrate sec_female  


rvfplot, ///
    yline(0, lcolor(red)) ///
    title("Cervical Cancer", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_cervix, replace)   	 
	
	
regress thyroid temp  HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair   sec_female  

rvfplot, ///
    yline(0, lcolor(red)) ///
    title("Thyroid Cancer", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_thyr, replace)   	 
	

regress All temp  i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair sec_female  diabfemale   hepB hepC

rvfplot, ///
    yline(0, lcolor(red)) ///
    title("All Cancer sites", size(medium)) ///
    graphregion(color(white)) ///
    plotregion(color(white)) ///
    bgcolor(white) ///
    name(rvf_all, replace)   
	