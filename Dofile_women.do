

use Data_update_Women.dta


xtile UVcat = uvradiation, nq(4)  

gen logUV=log(uv)

label define UVlbl ///
1 "Q1 (Lowest)" ///
2 "Q2" ///
3 "Q3" ///
4 "Q4 (Highest)"

label values UVcat UVlbl 


gen HDIcat = .

replace HDIcat = 1 if HDI < 0.550
replace HDIcat = 2 if HDI >= 0.550 & HDI < 0.700
replace HDIcat = 3 if HDI >= 0.700 & HDI < 0.800
replace HDIcat = 4 if HDI >= 0.800

label define HDIlbl ///
1 "Low" ///
2 "Medium" ///
3 "High" ///
4 "Very High"

label values HDIcat HDIlbl



gen temp= CelsiusC 

mkspline sp = temp, cubic nknots(3) 

gen temp2=temp^2 

* Generating qudratic term and restricted cubic splines to evaluated non-linearity of the assumption between temprature and cancer incidence ****  

****Breast Cancer ***** 

regress breast temp i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp breastfeedingpctinfantsbreastfed  sec_female 

predict resid, residuals

qnorm resid          // QQ plot 

encode location, gen(Loc) 

predict cook, cooksd   // Estimation of cook distance to determine influential observations  

drop if cook==. 

list location cook if cook > 4/_N
 
estat ic  

vif   

predict levbreast, hat
summ  levbreast

list location  levbreast     if  levbreast  > 2*e(df_m)/e(N)

* Checking linearity assumption **** 

regress breast  temp temp2 i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp breastfeedingpctinfantsbreastfed sec_female   

regress breast sp* HDI i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp breastfeedingpctinfantsbreastfed   sec_female  


**** Lung cancer ***** 

regress lung temp i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair sec_female     

predict residlung, residuals

qnorm residlung          // QQ plot 

predict cooklung, cooksd   // Estimation of cook distance to determine influential observations  

list location cooklung if cooklung > 4/_N  

estat ic  

vif   

predict levlung, hat
summ  levlung

list location  levlung     if  levlung  > 2*e(df_m)/e(N)

* Checking linearity assumption **** 

regress lung  temp temp2 i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair  sec_female  
 
regress lung sp* i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair   sec_female  


**** Colorectal Cancer **** 
regress CRC temp HDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair  sec_female 

predict residCRC, residuals 

qnorm residCRC          // QQ plot  

predict cookCRC, cooksd   // Estimation of cook distance to determine influential observations  

list location cookCRC if cookCRC > 4/_N  

estat ic  

vif   

predict levCRC, hat
summ  levCRC

list location  levCRC     if  levCRC  > 2*e(df_m)/e(N)

* Checking linearity assumption **** 
regress CRC temp temp2 HDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair sec_female  

regress CRC sp* HDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair sec_female 


*** Cervical Cancer **** 
regress cervix temp  HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair workingrate sec_female 


predict residcervix, residuals 

qnorm residcervix          // QQ plot 

predict cookcervix, cooksd   // Estimation of cook distance to determine influential observations   

list location cookcervix if cookcervix > 4/_N   

estat ic 

vif   

predict levcervix, hat
summ  levcervix
list location  levcervix     if  levcervix  > 2*e(df_m)/e(N)


* Checking linearity assumption **** 
 
regress cervix temp temp2  HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair workingrate sec_female 

regress cervix sp*  HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair workingrate  sec_female 



*** Thyroid Cancer **** 
regress thyroid temp  HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair   sec_female 


predict residthyroid, residuals 

qnorm residthyroid          // QQ plot 

predict cookthyroid, cooksd   // Estimation of cook distance to determine influential observations   

list location cookthyroid if cookthyroid > 4/_N   

estat ic 

vif   

predict levthyroid, hat
summ  levthyroid
list location  levthyroid     if  levthyroid  > 2*e(df_m)/e(N)

* Checking linearity assumption ****  

regress thyroid temp temp2 HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair  sec_female 
 

regress thyroid sp*  HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair   sec_female 
 


*** All cancersites ***** 

regress All temp  i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair sec_female  diabfemale   hepB hepC

predict residall, residuals 

qnorm residall          // QQ plot 

predict cookall, cooksd   // Estimation of cook distance to determine influential observations   

list location cookall if cookall > 4/_N   

estat ic 

vif   

predict levall, hat
summ  levall
list location levall    if levall > 2*e(df_m)/e(N)

* Checking linearity assumption ****  

regress All temp temp2 HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair sec_female diabfemale hepB hepC  

regress All sp*  HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp deathair sec_female diabfemale  hepB hepC