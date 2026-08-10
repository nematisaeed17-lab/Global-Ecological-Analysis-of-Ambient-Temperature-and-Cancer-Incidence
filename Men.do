

use Data_Updated.dta  


xtile UVcat = uvradiation, nq(4)  

gen logUV=log(uv)

label define UVlbl ///
1 "Q1 (Lowest)" ///
2 "Q2" ///
3 "Q3" ///
4 "Q4 (Highest)", replace 

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
4 "Very High", replace 

label values HDIcat HDIlbl



gen temp= CelsiusC 

mkspline sp = temp, cubic nknots(3) 

gen temp2=temp^2 

* Generating qudratic term and restricted cubic splines to evaluated non-linearity of the assumption between temprature and cancer incidence ****  


**** Lung cancer ***** 

regress Lung temp i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 alocoholliter     

predict residlung, residuals

qnorm residlung          // QQ plot 

predict cooklung, cooksd   // Estimation of cook distance to determine influential observations  

list location cooklung if cooklung > 4/_N  

estat ic  

vif   

predict levlung, hat
summ levlung 

list location levlung if levlung > 2*e(df_m)/e(N)

* Checking linearity assumption **** 

regress Lung temp temp2 i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 alocoholliter     

regress Lung sp* i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000  alocoholliter      
   

****Prostate Cancer ***** 

regress Prostate temp i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000  

predict residprostate, residuals

qnorm residprostate          // QQ plot 

encode location, gen(Loc) 

predict cookprostate, cooksd   // Estimation of cook distance to determine influential observations  

drop if cookprostate==. 

list location cookprostate if cookprostate > 4/_N
 
estat ic  

vif   

predict levprost, hat
summ levprost 

list location levprost  if levprost > 2*e(df_m)/e(N)

* Checking linearity assumption **** 

regress Prostate temp temp2 i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 

regress Prostate sp* i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000   


**** Colorectal Cancer **** 

regress CRC temp i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000  
predict residCRC, residuals 

qnorm residCRC          // QQ plot  

predict cookCRC, cooksd   // Estimation of cook distance to determine influential observations  

list location cookCRC if cookCRC > 4/_N  

estat ic  

vif   

predict levCRC, hat
summ levCRC 

list location levCRC  if levCRC > 2*e(df_m)/e(N)

* Checking linearity assumption **** 
regress CRC temp temp2 i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000    

regress CRC sp* i.HDIcat smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000  


*** Stomach Cancer ****  

regress Stomach temp i.SDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 


predict residstomach, residuals 

qnorm residstomach          // QQ plot 

predict cookcstomach, cooksd   // Estimation of cook distance to determine influential observations   

list location cookcstomach if cookcstomach > 4/_N   

estat ic 

vif  

predict levstoch, hat
summ levstoch 

list location levstoch   if levstoch  > 2*e(df_m)/e(N)
* Checking linearity assumption **** 
 
regress Stomach temp temp2 i.SDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 

regress Stomach sp* i.SDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000  


*** Liver Cancer **** 
regress Liver temp i.SDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 diabmen hepB hepC alocoholliter chirosismale  

predict residliver, residuals 

qnorm residliver         // QQ plot 

predict cookliver, cooksd   // Estimation of cook distance to determine influential observations   

list location cookliver if cookliver > 4/_N   

estat ic 

vif   

predict levliver, hat
summ levliver 

list location levliver    if levliver  > 2*e(df_m)/e(N)

* Checking linearity assumption ****  

regress Liver temp temp2 HDI smoking obesity  ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 diabmen hepB hepC alocoholliter chirosismale  

regress Liver sp*  HDI smoking obesity ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 diabmen hepB hepC alocoholliter chirosismale 


*** All cancersites ***** 

regress asrworldper100000 temp  i.SDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 diabmen hepB hepC alocoholliter 

predict residall, residuals 

qnorm residall          // QQ plot 

predict cookall, cooksd   // Estimation of cook distance to determine influential observations   

list location cookall if cookall > 4/_N   

estat ic 

vif   

predict levall, hat
summ levall 

list location levall     if levall  > 2*e(df_m)/e(N)


* Checking linearity assumption ****  

regress asrworldper100000  temp temp2 i.SDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 diabmen hepB hepC alocoholliter       

regress asrworldper100000  sp*  i.SDI smoking obesity alcohol ib4.region inactivity air Processedmeat health_exp sec_male  deathair1000 diabmen hepB hepC alocoholliter      