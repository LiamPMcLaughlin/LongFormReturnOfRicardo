#########################################################
#####Liam McLaughlin - Dissertation data - Full Run######
#########################################################
####################Contents#############################
# 1~Packages required                                   #
# 2~Data Loading                                        #
# 3~Data Manipulation                                   #
# 4~Output Tables                                       #
# 5~Post-estimation Tests                               #
# 6~Confidence intervals                                #
#########################################################

#To run this code download data from placeholder link and put it in a folder called dissertation data
#then use a control f function to replace "C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/" with your desktop file path code up untill but not includeding the desktop part of the file path
#the same must be done for "C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\"
#the code should run as long as the files in the placeholder link are set up as specified in the readme document
#this has been verified to run from a usb transfer on Microsfot operating system with most uptodate 12/04 R update
#for technical assistance or for a custom code to be made for a specific computer contact liampmclaughlin@gmail.com

#########################################################
###############1 ~ Packages Required ####################
#########################################################

if(!require("plm")) install.packages("plm") 
library("plm")
if(!require("stargazer")) install.packages("stargazer") 
library("stargazer")
if(!require("MASS")) install.packages("MASS") 
library("MASS")
if(!require("dplyr")) install.packages("dplyr") 
library("dplyr")
if(!require("forcats")) install.packages("dforcats") 
library("forcats")
if(!require("sandwich")) install.packages("sandwich") 
library("sandwich")
if(!require("clubSandwich")) install.packages("clubSandwich") 
library("clubSandwich")
if(!require("lmtest")) install.packages("lmtest") 
library("lmtest")
if(!require("describedata")) install.packages("describedata") 
library("describedata")
if(!require("tidyr")) install.packages("tidyr") 
library("tidyr")
if(!require("Hmisc")) install.packages("Hmisc") 
library("Hmisc")
if(!require("tidyverse"))install.packages("tidyverse")
library("tidyverse")
if(!require("tseries")) install.packages("tseries") 
library("tseries")
if(!require("dgof")) install.packages("dgof") 
library("dgof")
if(!require("car")) install.packages("car") 
library("car")
if(!require("ggplot2")) install.packages("ggplot2") 
library("ggplot2")
if(!require("ggfortify")) install.packages("ggfortify") 
library("ggfortify")
if(!require("countrycode")) install.packages("countrycode") 
library("countrycode")
if(!require("plotrix")) install.packages("plotrix") 
library("plotrix")


#####################################################
################2 ~ Data Loading ####################
#####################################################

############2 ~ Data Loading Contense################
#2a ~ Loading task: GAEZ potentials data            #
#2b ~ Loading task: FAOSTAT 2000 Actuals data       #
#2c ~ Loading task: FAOSTAT 2010 Actuals data       #
#2d ~ Loading task: FAOSTAT 1989 Actuals data       #
#2e ~ Loading task: FAOSTAT 2000/2010 price data    #
#2f ~ Manipulation task: FAOSTAT 2000 price data    #
#2g ~ Manipulation task: FAOSTAT 2010 price data    #
#2h ~ Loading task: FAOSTAT 1989 price data         #
#2i ~ Loading task: C&D(2012) Replication data      #
#2j ~ Loading task: World Bank Population 2000 data #
#####################################################

#####################################################
#2a ~ Loading task: GAEZ potentials data            #

car <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/car_CRUTS32_Hist_8110Hr_ctr.csv")
cab <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/cab_CRUTS32_Hist_8110Hr_ctr.csv")
bck <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/bck_CRUTS32_Hist_8110Hr_ctr.csv")
bsg <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/bsg_CRUTS32_Hist_8110Hr_ctr.csv")
alf <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/alf_CRUTS32_Hist_8110Hr_ctr.csv")
brl <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/brl_CRUTS32_Hist_8110Hr_ctr.csv")
ban <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/ban_CRUTS32_Hist_8110Hr_ctr.csv")
yam <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/yam_CRUTS32_Hist_8110Hr_ctr.csv")
wpo <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/wpo_CRUTS32_Hist_8110Hr_ctr.csv")
whe <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/whe_CRUTS32_Hist_8110Hr_ctr.csv")
rcw <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/rcw_CRUTS32_Hist_8110Hr_ctr.csv")
tom <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/tom_CRUTS32_Hist_8110Hr_ctr.csv")
tob <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/tob_CRUTS32_Hist_8110Hr_ctr.csv")
tea <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/tea_CRUTS32_Hist_8110Hr_ctr.csv")
swg <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/swg_CRUTS32_Hist_8110Hr_ctr.csv")
spo <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/spo_CRUTS32_Hist_8110Hr_ctr.csv")
sfl <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/sfl_CRUTS32_Hist_8110Hr_ctr.csv")
suc <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/suc_CRUTS32_Hist_8110Hr_ctr.csv")
sub <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/sub_CRUTS32_Hist_8110Hr_ctr.csv")
soy <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/soy_CRUTS32_Hist_8110Hr_ctr.csv")
srg <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/srg_CRUTS32_Hist_8110Hr_ctr.csv")
mzs <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/mzs_CRUTS32_Hist_8110Hr_ctr.csv")
rye <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/rye_CRUTS32_Hist_8110Hr_ctr.csv")
rub <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/rub_CRUTS32_Hist_8110Hr_ctr.csv")
rcg <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/rcg_CRUTS32_Hist_8110Hr_ctr.csv")
rsd <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/rsd_CRUTS32_Hist_8110Hr_ctr.csv")
pig <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/pig_CRUTS32_Hist_8110Hr_ctr.csv")
phb <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/phb_CRUTS32_Hist_8110Hr_ctr.csv")
pml <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/pml_CRUTS32_Hist_8110Hr_ctr.csv")
oni <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/oni_CRUTS32_Hist_8110Hr_ctr.csv")
olv <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/olv_CRUTS32_Hist_8110Hr_ctr.csv")
olp <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/olp_CRUTS32_Hist_8110Hr_ctr.csv")
oat <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/oat_CRUTS32_Hist_8110Hr_ctr.csv")
nap <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/nap_CRUTS32_Hist_8110Hr_ctr.csv")
mis <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/mis_CRUTS32_Hist_8110Hr_ctr.csv")
mze <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/mze_CRUTS32_Hist_8110Hr_ctr.csv")
jtr <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/jtr_CRUTS32_Hist_8110Hr_ctr.csv")
grd <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/grd_CRUTS32_Hist_8110Hr_ctr.csv")
grm <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/grm_CRUTS32_Hist_8110Hr_ctr.csv")
fml <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/fml_CRUTS32_Hist_8110Hr_ctr.csv")
flx <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/flx_CRUTS32_Hist_8110Hr_ctr.csv")
rcd <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/rcd_CRUTS32_Hist_8110Hr_ctr.csv")
pea <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/pea_CRUTS32_Hist_8110Hr_ctr.csv")
cow <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/cow_CRUTS32_Hist_8110Hr_ctr.csv")
cot <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/cot_CRUTS32_Hist_8110Hr_ctr.csv")
cof <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/cof_CRUTS32_Hist_8110Hr_ctr.csv")
con <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/con_CRUTS32_Hist_8110Hr_ctr.csv")
coc <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/coc_CRUTS32_Hist_8110Hr_ctr.csv")
cit <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/cit_CRUTS32_Hist_8110Hr_ctr.csv")
chk <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/chk_CRUTS32_Hist_8110Hr_ctr.csv")
csv <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/csv_CRUTS32_Hist_8110Hr_ctr.csv")

car <- car[which(car$LC==11 & car$EXC==1 & car$AEZ==35),]
cab <- cab[which(cab$LC==11 & cab$EXC==1 & cab$AEZ==35),]
bck <- bck[which(bck$LC==11 & bck$EXC==1 & bck$AEZ==35),]
bsg <- bsg[which(bsg$LC==11 & bsg$EXC==1 & bsg$AEZ==35),]
alf <- alf[which(alf$LC==11 & alf$EXC==1 & alf$AEZ==35),]
brl <- brl[which(brl$LC==11 & brl$EXC==1 & brl$AEZ==35),]
ban <- ban[which(ban$LC==11 & ban$EXC==1 & ban$AEZ==35),]
yam <- yam[which(yam$LC==11 & yam$EXC==1 & yam$AEZ==35),]
wpo <- wpo[which(wpo$LC==11 & wpo$EXC==1 & wpo$AEZ==35),]
whe <- whe[which(whe$LC==11 & whe$EXC==1 & whe$AEZ==35),]
rcw <- rcw[which(rcw$LC==11 & rcw$EXC==1 & rcw$AEZ==35),]
tom <- tom[which(tom$LC==11 & tom$EXC==1 & tom$AEZ==35),]
tob <- tob[which(tob$LC==11 & tob$EXC==1 & tob$AEZ==35),]
tea <- tea[which(tea$LC==11 & tea$EXC==1 & tea$AEZ==35),]
swg <- swg[which(swg$LC==11 & swg$EXC==1 & swg$AEZ==35),]
spo <- spo[which(spo$LC==11 & spo$EXC==1 & spo$AEZ==35),]
sfl <- sfl[which(sfl$LC==11 & sfl$EXC==1 & sfl$AEZ==35),]
suc <- suc[which(suc$LC==11 & suc$EXC==1 & suc$AEZ==35),]
sub <- sub[which(sub$LC==11 & sub$EXC==1 & sub$AEZ==35),]
soy <- soy[which(soy$LC==11 & soy$EXC==1 & soy$AEZ==35),]
srg <- srg[which(srg$LC==11 & srg$EXC==1 & srg$AEZ==35),]
mzs <- mzs[which(mzs$LC==11 & mzs$EXC==1 & mzs$AEZ==35),]
rye <- rye[which(rye$LC==11 & rye$EXC==1 & rye$AEZ==35),]
rub <- rub[which(rub$LC==11 & rub$EXC==1 & rub$AEZ==35),]
rcg <- rcg[which(rcg$LC==11 & rcg$EXC==1 & rcg$AEZ==35),]
rsd <- rsd[which(rsd$LC==11 & rsd$EXC==1 & rsd$AEZ==35),]
pig <- pig[which(pig$LC==11 & pig$EXC==1 & pig$AEZ==35),]
phb <- phb[which(phb$LC==11 & phb$EXC==1 & phb$AEZ==35),]
pml <- pml[which(pml$LC==11 & pml$EXC==1 & pml$AEZ==35),]
oni <- oni[which(oni$LC==11 & oni$EXC==1 & oni$AEZ==35),]
olv <- olv[which(olv$LC==11 & olv$EXC==1 & olv$AEZ==35),]
olp <- olp[which(olp$LC==11 & olp$EXC==1 & olp$AEZ==35),]
oat <- oat[which(oat$LC==11 & oat$EXC==1 & oat$AEZ==35),]
nap <- nap[which(nap$LC==11 & nap$EXC==1 & nap$AEZ==35),]
mis <- mis[which(mis$LC==11 & mis$EXC==1 & mis$AEZ==35),]
mze <- mze[which(mze$LC==11 & mze$EXC==1 & mze$AEZ==35),]
jtr <- jtr[which(jtr$LC==11 & jtr$EXC==1 & jtr$AEZ==35),]
grd <- grd[which(grd$LC==11 & grd$EXC==1 & grd$AEZ==35),]
grm <- grm[which(grm$LC==11 & grm$EXC==1 & grm$AEZ==35),]
fml <- fml[which(fml$LC==11 & fml$EXC==1 & fml$AEZ==35),]
flx <- flx[which(flx$LC==11 & flx$EXC==1 & flx$AEZ==35),]
rcd <- rcd[which(rcd$LC==11 & rcd$EXC==1 & rcd$AEZ==35),]
pea <- pea[which(pea$LC==11 & pea$EXC==1 & pea$AEZ==35),]
cow <- cow[which(cow$LC==11 & cow$EXC==1 & cow$AEZ==35),]
cot <- cot[which(cot$LC==11 & cot$EXC==1 & cot$AEZ==35),]
cof <- cof[which(cof$LC==11 & cof$EXC==1 & cof$AEZ==35),]
con <- con[which(con$LC==11 & con$EXC==1 & con$AEZ==35),]
coc <- coc[which(coc$LC==11 & coc$EXC==1 & coc$AEZ==35),]
cit <- cit[which(cit$LC==11 & cit$EXC==1 & cit$AEZ==35),]
chk <- chk[which(chk$LC==11 & chk$EXC==1 & chk$AEZ==35),]
csv <- csv[which(csv$LC==11 & csv$EXC==1 & csv$AEZ==35),]

binded<-rbind(car, cab, bck, bsg, alf, brl, ban, yam, wpo, whe, rcw, tom, tob, tea, swg, spo, sfl, suc, sub, soy, srg, mzs, rye, rub, rcg, rsd, pig, phb, pml, oni, olv, olp, oat, nap, mis, mze, jtr, grd, grm, fml, flx, rcd, pea, cow, cot, cof, con, coc, cit, chk, csv)
potential<-binded
potential<-mutate(potential, Country = ADM0)
potential<-potential|>select(Country,CRP, P_VS.S, P_VS.S.MS,P_VS...mS,Yld, Yld.1, Yld.2)
potential$Country[potential$Country == ""]<-NA

ricemanipulation<-potential[which(potential$CRP=="rcw"| potential$CRP=="rcd" ),]
ricemanipulation<-ricemanipulation%>% group_by(Country) %>% summarise(P_VS.S  = sum(P_VS.S),P_VS.S.MS=sum(P_VS.S.MS),P_VS...mS=sum(P_VS...mS), Yld=sum(Yld),Yld.1=sum(Yld.1),Yld.2=sum(Yld.2))
ricemanipulation <- as.data.frame(ricemanipulation)
potential <- subset(potential, potential$CRP!="rcw" & potential$CRP!="rcd")
ricemanipulation$CRP<-rep("rce",nrow(ricemanipulation))
potential<-rbind(potential,ricemanipulation)

milletmanipulation<-potential[which(potential$CRP=="pml"| potential$CRP=="fml" ),]
milletmanipulation<-milletmanipulation%>% group_by(Country) %>% summarise(P_VS.S  = sum(P_VS.S),P_VS.S.MS=sum(P_VS.S.MS),P_VS...mS=sum(P_VS...mS),Yld=sum(Yld),Yld.1=sum(Yld.1),Yld.2=sum(Yld.2))
milletmanipulation <- as.data.frame(milletmanipulation)
potential <- subset(potential, potential$CRP!="pml" & potential$CRP!="fml")
milletmanipulation$CRP<-rep("mlt",nrow(milletmanipulation))
potential<-rbind(potential,milletmanipulation)

#####################################################
#2b ~ Loading task: FAOSTAT 2000 Actuals data       #

actuals2000<-read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/FAOSTAT_data_en_1-8-2024.csv")
actuals2000<-actuals2000|> select(Item,Area,Year,Value,Flag.Description)
actuals2000<-mutate(actuals2000, Country = as.character(Area),
                    Country = fct_recode(Country,"AFG"="Afghanistan","ALB"="Albania","DZA"="Algeria","AGO"="Angola","ATG"="Antigua and Barbuda","ARG"="Argentina","ARM"="Armenia","AUS"="Australia","AUT"="Austria","AZE"="Azerbaijan","BHS"="Bahamas","BHR"="Bahrain","BGD"="Bangladesh","BRB"="Barbados","BLR"="Belarus","BEL"="Belgium","BLZ"="Belize","BEN"="Benin","BTN"="Bhutan","BOL"="Bolivia (Plurinational State of)","BIH"="Bosnia and Herzegovina","BWA"="Botswana","BRA"="Brazil","BRN"="Brunei Darussalam","BGR"="Bulgaria","BFA"="Burkina Faso","BDI"="Burundi","CPV"="Cabo Verde","KHM"="Cambodia","CMR"="Cameroon","CAN"="Canada","CAF"="Central African Republic","TCD"="Chad","CHL"="Chile","CHN"="China","HKG"="China, Hong Kong SAR","MAC"="China, Macao SAR","CHN"="China, mainland","TWN"="China, Taiwan Province of","COL"="Colombia","COM"="Comoros","COG"="Congo","COK"="Cook Islands","CRI"="Costa Rica","CIV"="Côte d'Ivoire","HRV"="Croatia","CUB"="Cuba","CYP"="Cyprus","CZE"="Czechia","PRK"="Democratic People's Republic of Korea","COD"="Democratic Republic of the Congo","DEN"="Denmark","DJI"="Djibouti","DMA"="Dominica","DOM"="Dominican Republic","ECU"="Ecuador","EGY"="Egypt","SLV"="El Salvador","GNQ"="Equatorial Guinea","ERI"="Eritrea","EST"="Estonia","SWZ"="Eswatini","ETH"="Ethiopia","FRO"="Faroe Islands","FJI"="Fiji","FIN"="Finland","FRA"="France","PYF"="French Polynesia","GAB"="Gabon","GMB"="Gambia","GEO"="Georgia","DEU"="Germany","GHA"="Ghana","GRC"="Greece","GRD"="Grenada","GTM"="Guatemala","GIN"="Guinea","GNB"="Guinea-Bissau","GUY"="Guyana","HTI"="Haiti","HND"="Honduras","HUN"="Hungary","ISL"="Iceland","IND"="India","IDN"="Indonesia","IRN"="Iran (Islamic Republic of)","IRQ"="Iraq","IRL"="Ireland","ISR"="Israel","ITA"="Italy","JAM"="Jamaica","JPN"="Japan","JOR"="Jordan","KAZ"="Kazakhstan","KEN"="Kenya","KIR"="Kiribati","KWT"="Kuwait","KGZ"="Kyrgyzstan","LAO"="Lao People's Democratic Republic","LVA"="Latvia","LBN"="Lebanon","LSO"="Lesotho","LBR"="Liberia","LBY"="Libya","LTU"="Lithuania","LUX"="Luxembourg","MDG"="Madagascar","MWI"="Malawi","MYS"="Malaysia","MDV"="Maldives","MLI"="Mali","MLT"="Malta","MHL"="Marshall Islands","MRT"="Mauritania","MUS"="Mauritius","MEX"="Mexico","FSM"="Micronesia (Federated States of)","MNG"="Mongolia","MNE"="Montenegro","MAR"="Morocco","MOZ"="Mozambique","MMR"="Myanmar","NAM"="Namibia","NRU"="Nauru","NPL"="Nepal","NDL"="Netherlands (Kingdom of the)","NCL"="New Caledonia","NZL"="New Zealand","NIC"="Nicaragua","NER"="Niger","NGA"="Nigeria","NIU"="Niue","MKD"="North Macedonia","NOR"="Norway","OMN"="Oman","PAK"="Pakistan","PSE"="Palestine","PAN"="Panama","PNG"="Papua New Guinea","PRY"="Paraguay","PER"="Peru","PHL"="Philippines","POL"="Poland","POR"="Portugal","PRI"="Puerto Rico","QAT"="Qatar","KOR"="Republic of Korea","MDA"="Republic of Moldova","ROU"="Romania","RUS"="Russian Federation","RWA"="Rwanda","KNA"="Saint Kitts and Nevis","LCA"="Saint Lucia","VCT"="Saint Vincent and the Grenadines","WSM"="Samoa","STP"="Sao Tome and Principe","SAU"="Saudi Arabia","SEN"="Senegal","SRB"="Serbia","SYC"="Seychelles","SLE"="Sierra Leone","SGP"="Singapore","SVK"="Slovakia","SVN"="Slovenia","SLB"="Solomon Islands","SOM"="Somalia","ZAF"="South Africa","ESP"="Spain","LKA"="Sri Lanka","SDN"="Sudan (former)","SUR"="Suriname","SWE"="Sweden","CHE"="Switzerland","SYR"="Syrian Arab Republic","TJK"="Tajikistan","THA"="Thailand","TLS"="Timor-Leste","TGO"="Togo","TKL"="Tokelau","TKL"="Tonga","TTO"="Trinidad and Tobago","TUN"="Tunisia","TUR"="Türkiye","TKM"="Turkmenistan","TUV"="Tuvalu","UGA"="Uganda","UKR"="Ukraine","UAE"="United Arab Emirates","GBR"="United Kingdom of Great Britain and Northern Ireland","TZA"="United Republic of Tanzania","USA"="United States of America","URY"="Uruguay","UZB"="Uzbekistan","VUT"="Vanuatu","VEN"="Venezuela (Bolivarian Republic of)","VNM"="Viet Nam","YEM"="Yemen","ZMB"="Zambia","ZWE"="Zimbabwe","GUF"="French Guiana","GLP"="Guadeloupe","MTQ"="Martinique","SRB"="Serbia and Montenegro","REU"="Réunion"),
                    CRP=as.factor(Item),
                    CRP=fct_recode(CRP,"car"="Carrots and turnips", "cab"="Cabbages", "bck"="Buckwheat", "brl"="Barley", "ban"="Bananas", "yam"="Yams", "wpo"="Potatoes", "whe"="Wheat", "rce"="Rice", "tom"="Tomatoes", "tob"="Unmanufactured tobacco", "tea"="Tea leaves", "spo"="Sweet potatoes", "sfl"="Sunflower seed", "suc"="Sugar cane", "sub"="Sugar beet", "soy"="Soya beans", "srg"="Sorghum", "rye"="Rye", "rub"="Natural rubber in primary forms", "rcg"="Canary seed", "rsd"="Rape or colza seed", "pig"="Pigeon peas, dry", "mlt"="Millet", "oni"="Onions and shallots, green", "olv"="Olives", "olp"="Oil palm fruit", "oat"="Oats", "grd"="Groundnuts, excluding shelled", "flx"="Flax, raw or retted", "pea"="Chick peas, dry", "cow"="Cow peas, dry", "cot"="Seed cotton, unginned", "cof"="Coffee, green", "con"="Coconuts, in shell", "coc"="Cocoa beans", "cit"="Other citrus fruit, n.e.c.", "csv"="Cassava, fresh"))

bananamanipulation2000<-actuals2000[which(actuals2000$CRP=="ban"| actuals2000$CRP=="Plantains and cooking bananas" ),]
bananamanipulation2000<-bananamanipulation2000%>% group_by(Country) %>% summarise(Value = sum(Value))
bananamanipulation2000 <- as.data.frame(bananamanipulation2000)
actuals2000 <- subset(actuals2000, actuals2000$CRP!="Plantains and cooking bananas" & actuals2000$CRP!="Plantains and cooking bananas" ) 
actuals2000<-actuals2000|>select(Country,CRP,Value)
bananamanipulation2000
bananamanipulation2000$CRP<-rep("ban",nrow(bananamanipulation2000))
actuals2000<-rbind(actuals2000,bananamanipulation2000)

#####################################################
#  2c ~ Loading task: FAOSTAT 2010 Actuals data     #

actuals2010 <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/FAOSTAT_data_en_1-7-2024.csv")
actuals2010<- actuals2010|>select(Item,Area,Year,Value,Flag.Description)
actuals2010<-mutate(actuals2010, Country = as.character(Area),
                    Country = fct_recode(Country,"AFG"="Afghanistan","ALB"="Albania","DZA"="Algeria","AGO"="Angola","ATG"="Antigua and Barbuda","ARG"="Argentina","ARM"="Armenia","AUS"="Australia","AUT"="Austria","AZE"="Azerbaijan","BHS"="Bahamas","BHR"="Bahrain","BGD"="Bangladesh","BRB"="Barbados","BLR"="Belarus","BEL"="Belgium","BLZ"="Belize","BEN"="Benin","BTN"="Bhutan","BOL"="Bolivia (Plurinational State of)","BIH"="Bosnia and Herzegovina","BWA"="Botswana","BRA"="Brazil","BRN"="Brunei Darussalam","BGR"="Bulgaria","BFA"="Burkina Faso","BDI"="Burundi","CPV"="Cabo Verde","KHM"="Cambodia","CMR"="Cameroon","CAN"="Canada","CAF"="Central African Republic","TCD"="Chad","CHL"="Chile","CHN"="China","HKG"="China, Hong Kong SAR","MAC"="China, Macao SAR","CHN"="China, mainland","TWN"="China, Taiwan Province of","COL"="Colombia","COM"="Comoros","COG"="Congo","COK"="Cook Islands","CRI"="Costa Rica","CIV"="Côte d'Ivoire","HRV"="Croatia","CUB"="Cuba","CYP"="Cyprus","CZE"="Czechia","PRK"="Democratic People's Republic of Korea","COD"="Democratic Republic of the Congo","DEN"="Denmark","DJI"="Djibouti","DMA"="Dominica","DOM"="Dominican Republic","ECU"="Ecuador","EGY"="Egypt","SLV"="El Salvador","GNQ"="Equatorial Guinea","ERI"="Eritrea","EST"="Estonia","SWZ"="Eswatini","ETH"="Ethiopia","FRO"="Faroe Islands","FJI"="Fiji","FIN"="Finland","FRA"="France","PYF"="French Polynesia","GAB"="Gabon","GMB"="Gambia","GEO"="Georgia","DEU"="Germany","GHA"="Ghana","GRC"="Greece","GRD"="Grenada","GTM"="Guatemala","GIN"="Guinea","GNB"="Guinea-Bissau","GUY"="Guyana","HTI"="Haiti","HND"="Honduras","HUN"="Hungary","ISL"="Iceland","IND"="India","IDN"="Indonesia","IRN"="Iran (Islamic Republic of)","IRQ"="Iraq","IRL"="Ireland","ISR"="Israel","ITA"="Italy","JAM"="Jamaica","JPN"="Japan","JOR"="Jordan","KAZ"="Kazakhstan","KEN"="Kenya","KIR"="Kiribati","KWT"="Kuwait","KGZ"="Kyrgyzstan","LAO"="Lao People's Democratic Republic","LVA"="Latvia","LBN"="Lebanon","LSO"="Lesotho","LBR"="Liberia","LBY"="Libya","LTU"="Lithuania","LUX"="Luxembourg","MDG"="Madagascar","MWI"="Malawi","MYS"="Malaysia","MDV"="Maldives","MLI"="Mali","MLT"="Malta","MHL"="Marshall Islands","MRT"="Mauritania","MUS"="Mauritius","MEX"="Mexico","FSM"="Micronesia (Federated States of)","MNG"="Mongolia","MNE"="Montenegro","MAR"="Morocco","MOZ"="Mozambique","MMR"="Myanmar","NAM"="Namibia","NRU"="Nauru","NPL"="Nepal","NDL"="Netherlands (Kingdom of the)","NCL"="New Caledonia","NZL"="New Zealand","NIC"="Nicaragua","NER"="Niger","NGA"="Nigeria","NIU"="Niue","MKD"="North Macedonia","NOR"="Norway","OMN"="Oman","PAK"="Pakistan","PSE"="Palestine","PAN"="Panama","PNG"="Papua New Guinea","PRY"="Paraguay","PER"="Peru","PHL"="Philippines","POL"="Poland","POR"="Portugal","PRI"="Puerto Rico","QAT"="Qatar","KOR"="Republic of Korea","MDA"="Republic of Moldova","ROU"="Romania","RUS"="Russian Federation","RWA"="Rwanda","KNA"="Saint Kitts and Nevis","LCA"="Saint Lucia","VCT"="Saint Vincent and the Grenadines","WSM"="Samoa","STP"="Sao Tome and Principe","SAU"="Saudi Arabia","SEN"="Senegal","SRB"="Serbia","SYC"="Seychelles","SLE"="Sierra Leone","SGP"="Singapore","SVK"="Slovakia","SVN"="Slovenia","SLB"="Solomon Islands","SOM"="Somalia","ZAF"="South Africa","ESP"="Spain","LKA"="Sri Lanka","SDN"="Sudan (former)","SUR"="Suriname","SWE"="Sweden","CHE"="Switzerland","SYR"="Syrian Arab Republic","TJK"="Tajikistan","THA"="Thailand","TLS"="Timor-Leste","TGO"="Togo","TKL"="Tokelau","TKL"="Tonga","TTO"="Trinidad and Tobago","TUN"="Tunisia","TUR"="Türkiye","TKM"="Turkmenistan","TUV"="Tuvalu","UGA"="Uganda","UKR"="Ukraine","UAE"="United Arab Emirates","GBR"="United Kingdom of Great Britain and Northern Ireland","TZA"="United Republic of Tanzania","USA"="United States of America","URY"="Uruguay","UZB"="Uzbekistan","VUT"="Vanuatu","VEN"="Venezuela (Bolivarian Republic of)","VNM"="Viet Nam","YEM"="Yemen","ZMB"="Zambia","ZWE"="Zimbabwe","GUF"="French Guiana","GLP"="Guadeloupe","MTQ"="Martinique","SRB"="Serbia and Montenegro","REU"="Réunion"),
                    CRP=as.factor(Item),
                    CRP=fct_recode(CRP,"car"="Carrots and turnips", "cab"="Cabbages", "bck"="Buckwheat", "brl"="Barley", "ban"="Bananas", "yam"="Yams", "wpo"="Potatoes", "whe"="Wheat", "rce"="Rice", "tom"="Tomatoes", "tob"="Unmanufactured tobacco", "tea"="Tea leaves", "spo"="Sweet potatoes", "sfl"="Sunflower seed", "suc"="Sugar cane", "sub"="Sugar beet", "soy"="Soya beans", "srg"="Sorghum", "rye"="Rye", "rub"="Natural rubber in primary forms", "rcg"="Canary seed", "rsd"="Rape or colza seed", "pig"="Pigeon peas, dry", "mlt"="Millet", "oni"="Onions and shallots, green", "olv"="Olives", "olp"="Oil palm fruit", "oat"="Oats", "grd"="Groundnuts, excluding shelled", "flx"="Flax, raw or retted", "pea"="Chick peas, dry", "cow"="Cow peas, dry", "cot"="Seed cotton, unginned", "cof"="Coffee, green", "con"="Coconuts, in shell", "coc"="Cocoa beans", "cit"="Other citrus fruit, n.e.c.", "csv"="Cassava, fresh"))

bananamanipulation2010<-actuals2010[which(actuals2010$CRP=="ban"| actuals2010$CRP=="Plantains and cooking bananas" ),]
bananamanipulation2010<-bananamanipulation2010%>% group_by(Country) %>% summarise(Value = sum(Value))
bananamanipulation2010 <- as.data.frame(bananamanipulation2010)
actuals2010 <- subset(actuals2010, actuals2010$CRP!="ban" & actuals2010$CRP!="Plantains and cooking bananas" ) 
actuals2010<-actuals2010|>select(Country,CRP,Value)
bananamanipulation2010$CRP<-rep("ban",nrow(bananamanipulation2010))
actuals2010<-rbind(actuals2010,bananamanipulation2010)

#####################################################
#2d ~ Loading task: FAOSTAT 1989 Actuals data       #

actuals1989<-read.csv("C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\FAOSTAT_data_en_2-12-2024 (1).csv")
actuals1989<-actuals1989|> select(Item,Area,Year,Value,Flag.Description)
actuals1989<-mutate(actuals1989, Country = as.character(Area),
                    Country = fct_recode(Country,"AFG"="Afghanistan", "ALB"="Albania","DZA"="Algeria","AGO"="Angola","ATG"="Antigua and Barbuda","ARG"="Argentina","ARM"="Armenia","AUS"="Australia","AUT"="Austria","AZE"="Azerbaijan","BHS"="Bahamas","BHR"="Bahrain","BGD"="Bangladesh","BRB"="Barbados","BLR"="Belarus","BEL"="Belgium","BLZ"="Belize","BEN"="Benin","BTN"="Bhutan","BOL"="Bolivia (Plurinational State of)","BIH"="Bosnia and Herzegovina","BWA"="Botswana","BRA"="Brazil","BRN"="Brunei Darussalam","BGR"="Bulgaria","BFA"="Burkina Faso","BDI"="Burundi","CPV"="Cabo Verde","KHM"="Cambodia","CMR"="Cameroon","CAN"="Canada","CAF"="Central African Republic","TCD"="Chad","CHL"="Chile","CHN"="China","HKG"="China, Hong Kong SAR","MAC"="China, Macao SAR","CHN"="China, mainland","TWN"="China, Taiwan Province of","COL"="Colombia","COM"="Comoros","COG"="Congo","COK"="Cook Islands","CRI"="Costa Rica","CIV"="Côte d'Ivoire","HRV"="Croatia","CUB"="Cuba","CYP"="Cyprus","CZE"="Czechia","PRK"="Democratic People's Republic of Korea","COD"="Democratic Republic of the Congo","DEN"="Denmark","DJI"="Djibouti","DMA"="Dominica","DOM"="Dominican Republic","ECU"="Ecuador","EGY"="Egypt","SLV"="El Salvador","GNQ"="Equatorial Guinea","ERI"="Eritrea","EST"="Estonia", "SWZ"="Eswatini","ETH"="Ethiopia", "FRO"="Faroe Islands","FJI"="Fiji","FIN"="Finland","FRA"="France","PYF"="French Polynesia","GAB"="Gabon","GMB"="Gambia","GEO"="Georgia","DEU"="Germany","GHA"="Ghana","GRC"="Greece","GRD"="Grenada","GTM"="Guatemala","GIN"="Guinea","GNB"="Guinea-Bissau","GUY"="Guyana","HTI"="Haiti","HND"="Honduras","HUN"="Hungary","ISL"="Iceland","IND"="India","IDN"="Indonesia","IRN"="Iran (Islamic Republic of)","IRQ"="Iraq","IRL"="Ireland","ISR"="Israel","ITA"="Italy","JAM"="Jamaica","JPN"="Japan","JOR"="Jordan","KAZ"="Kazakhstan","KEN"="Kenya","KIR"="Kiribati","KWT"="Kuwait","KGZ"="Kyrgyzstan","LAO"="Lao People's Democratic Republic","LVA"="Latvia","LBN"="Lebanon","LSO"="Lesotho","LBR"="Liberia","LBY"="Libya","LTU"="Lithuania","LUX"="Luxembourg","MDG"="Madagascar","MWI"="Malawi","MYS"="Malaysia","MDV"="Maldives","MLI"="Mali","MLT"="Malta","MHL"="Marshall Islands","MRT"="Mauritania","MUS"="Mauritius","MEX"="Mexico","FSM"="Micronesia (Federated States of)","MNG"="Mongolia","MNE"="Montenegro","MAR"="Morocco","MOZ"="Mozambique","MMR"="Myanmar","NAM"="Namibia","NRU"="Nauru","NPL"="Nepal","NDL"="Netherlands (Kingdom of the)","NCL"="New Caledonia","NZL"="New Zealand","NIC"="Nicaragua","NER"="Niger","NGA"="Nigeria","NIU"="Niue","MKD"="North Macedonia","NOR"="Norway","OMN"="Oman","PAK"="Pakistan","PSE"="Palestine","PAN"="Panama","PNG"="Papua New Guinea","PRY"="Paraguay","PER"="Peru","PHL"="Philippines","POL"="Poland","POR"="Portugal","PRI"="Puerto Rico","QAT"="Qatar","KOR"="Republic of Korea","MDA"="Republic of Moldova","ROU"="Romania","RUS"="Russian Federation","RWA"="Rwanda","KNA"="Saint Kitts and Nevis","LCA"="Saint Lucia","VCT"="Saint Vincent and the Grenadines","WSM"="Samoa","STP"="Sao Tome and Principe","SAU"="Saudi Arabia","SEN"="Senegal","SRB"="Serbia","SYC"="Seychelles","SLE"="Sierra Leone","SGP"="Singapore","SVK"="Slovakia","SVN"="Slovenia","SLB"="Solomon Islands","SOM"="Somalia","ZAF"="South Africa","ESP"="Spain","LKA"="Sri Lanka","SDN"="Sudan (former)","SUR"="Suriname","SWE"="Sweden","CHE"="Switzerland","SYR"="Syrian Arab Republic","TJK"="Tajikistan","THA"="Thailand","TLS"="Timor-Leste","TGO"="Togo","TKL"="Tokelau","TKL"="Tonga","TTO"="Trinidad and Tobago","TUN"="Tunisia","TUR"="Türkiye","TKM"="Turkmenistan","TUV"="Tuvalu","UGA"="Uganda","UKR" = "Ukraine","UAE" = "United Arab Emirates","GBR"="United Kingdom of Great Britain and Northern Ireland","TZA" = "United Republic of Tanzania","USA" = "United States of America","URY" = "Uruguay","UZB" = "Uzbekistan","VUT" = "Vanuatu","VEN" = "Venezuela (Bolivarian Republic of)","VNM" = "Viet Nam","YEM" = "Yemen","ZMB" = "Zambia","ZWE" = "Zimbabwe","GUF" = "French Guiana","GLP"= "Guadeloupe","MTQ"="Martinique","SRB"="Serbia and Montenegro","REU"="Réunion"),
                    CRP=as.factor(Item),
                    CRP=fct_recode(CRP,"car"="Carrots and turnips","cab"="Cabbages","bck"="Buckwheat","brl"="Barley","ban"="Bananas","yam"="Yams","wpo"="Potatoes","whe"="Wheat","rce"="Rice","tom"="Tomatoes","tob"="Unmanufactured tobacco","tea"="Tea leaves","spo"="Sweet potatoes","sfl"="Sunflower seed","suc"="Sugar cane","sub"="Sugar beet","soy"="Soya beans","srg"="Sorghum","rye"="Rye","rub"="Natural rubber in primary forms","rcg"="Canary seed","rsd"="Rape or colza seed","pig"="Pigeon peas, dry","mlt"="Millet","oni"="Onions and shallots, green","olv"="Olives","olp"="Oil palm fruit","oat"="Oats","grd"="Groundnuts, excluding shelled","flx"="Flax, raw or retted","pea"="Chick peas, dry","cow"="Cow peas, dry","cot"="Seed cotton, unginned","cof"="Coffee, green","con"="Coconuts, in shell","coc"="Cocoa beans","cit"="Other citrus fruit, n.e.c.","csv"="Cassava, fresh",))
actuals1989<-actuals1989|>select(Country,CRP,Value)

bananamanipulation1989<-actuals1989[which(actuals1989$CRP=="ban"| actuals1989$CRP=="Plantains and cooking bananas" ),]
bananamanipulation1989<-bananamanipulation1989%>% group_by(Country) %>% summarise(Value = sum(Value))
bananamanipulation1989 <- as.data.frame(bananamanipulation1989)
actuals1989 <- subset(actuals1989, actuals1989$CRP!="ban" & actuals1989$CRP!="Plantains and cooking bananas" ) 
actuals1989<-actuals1989|>select(Country,CRP,Value)
bananamanipulation1989$CRP<-rep("ban",nrow(bananamanipulation1989))
actuals1989<-rbind(actuals1989,bananamanipulation1989)

#####################################################
# 2e ~ Loading task: FAOSTAT 2000/2010 price data   #

prices<- read.csv("C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\FAOSTAT_data_en_2-9-2024.csv")
prices<- prices|>select(Item,Area,Year,Value,Flag.Description)
prices<-mutate(prices, Country = as.character(Area),
               Country = fct_recode(Country,"AFG"="Afghanistan", "ALB"="Albania","DZA"="Algeria","AGO"="Angola","ATG"="Antigua and Barbuda","ARG"="Argentina","ARM"="Armenia","AUS"="Australia","AUT"="Austria","AZE"="Azerbaijan","BHS"="Bahamas","BHR"="Bahrain","BGD"="Bangladesh","BRB"="Barbados","BLR"="Belarus","BEL"="Belgium","BLZ"="Belize","BEN"="Benin","BTN"="Bhutan","BOL"="Bolivia (Plurinational State of)","BIH"="Bosnia and Herzegovina","BWA"="Botswana","BRA"="Brazil","BRN"="Brunei Darussalam","BGR"="Bulgaria","BFA"="Burkina Faso","BDI"="Burundi","CPV"="Cabo Verde","KHM"="Cambodia","CMR"="Cameroon","CAN"="Canada","CAF"="Central African Republic","TCD"="Chad","CHL"="Chile","CHN"="China","HKG"="China, Hong Kong SAR","MAC"="China, Macao SAR","CHN"="China, mainland","TWN"="China, Taiwan Province of","COL"="Colombia","COM"="Comoros","COG"="Congo","COK"="Cook Islands","CRI"="Costa Rica","CIV"="Côte d'Ivoire","HRV"="Croatia","CUB"="Cuba","CYP"="Cyprus","CZE"="Czechia","PRK"="Democratic People's Republic of Korea","COD"="Democratic Republic of the Congo","DEN"="Denmark","DJI"="Djibouti","DMA"="Dominica","DOM"="Dominican Republic","ECU"="Ecuador","EGY"="Egypt","SLV"="El Salvador","GNQ"="Equatorial Guinea","ERI"="Eritrea","EST"="Estonia", "SWZ"="Eswatini","ETH"="Ethiopia", "FRO"="Faroe Islands","FJI"="Fiji","FIN"="Finland","FRA"="France","PYF"="French Polynesia","GAB"="Gabon","GMB"="Gambia","GEO"="Georgia","DEU"="Germany","GHA"="Ghana","GRC"="Greece","GRD"="Grenada","GTM"="Guatemala","GIN"="Guinea","GNB"="Guinea-Bissau","GUY"="Guyana","HTI"="Haiti","HND"="Honduras","HUN"="Hungary","ISL"="Iceland","IND"="India","IDN"="Indonesia","IRN"="Iran (Islamic Republic of)","IRQ"="Iraq","IRL"="Ireland","ISR"="Israel","ITA"="Italy","JAM"="Jamaica","JPN"="Japan","JOR"="Jordan","KAZ"="Kazakhstan","KEN"="Kenya","KIR"="Kiribati","KWT"="Kuwait","KGZ"="Kyrgyzstan","LAO"="Lao People's Democratic Republic","LVA"="Latvia","LBN"="Lebanon","LSO"="Lesotho","LBR"="Liberia","LBY"="Libya","LTU"="Lithuania","LUX"="Luxembourg","MDG"="Madagascar","MWI"="Malawi","MYS"="Malaysia","MDV"="Maldives","MLI"="Mali","MLT"="Malta","MHL"="Marshall Islands","MRT"="Mauritania","MUS"="Mauritius","MEX"="Mexico","FSM"="Micronesia (Federated States of)","MNG"="Mongolia","MNE"="Montenegro","MAR"="Morocco","MOZ"="Mozambique","MMR"="Myanmar","NAM"="Namibia","NRU"="Nauru","NPL"="Nepal","NDL"="Netherlands (Kingdom of the)","NCL"="New Caledonia","NZL"="New Zealand","NIC"="Nicaragua","NER"="Niger","NGA"="Nigeria","NIU"="Niue","MKD"="North Macedonia","NOR"="Norway","OMN"="Oman","PAK"="Pakistan","PSE"="Palestine","PAN"="Panama","PNG"="Papua New Guinea","PRY"="Paraguay","PER"="Peru","PHL"="Philippines","POL"="Poland","POR"="Portugal","PRI"="Puerto Rico","QAT"="Qatar","KOR"="Republic of Korea","MDA"="Republic of Moldova","ROU"="Romania","RUS"="Russian Federation","RWA"="Rwanda","KNA"="Saint Kitts and Nevis","LCA"="Saint Lucia","VCT"="Saint Vincent and the Grenadines","WSM"="Samoa","STP"="Sao Tome and Principe","SAU"="Saudi Arabia","SEN"="Senegal","SRB"="Serbia","SYC"="Seychelles","SLE"="Sierra Leone","SGP"="Singapore","SVK"="Slovakia","SVN"="Slovenia","SLB"="Solomon Islands","SOM"="Somalia","ZAF"="South Africa","ESP"="Spain","LKA"="Sri Lanka","SDN"="Sudan (former)","SUR"="Suriname","SWE"="Sweden","CHE"="Switzerland","SYR"="Syrian Arab Republic","TJK"="Tajikistan","THA"="Thailand","TLS"="Timor-Leste","TGO"="Togo","TKL"="Tokelau","TKL"="Tonga","TTO"="Trinidad and Tobago","TUN"="Tunisia","TUR"="Türkiye","TKM"="Turkmenistan","TUV"="Tuvalu","UGA"="Uganda","UKR" = "Ukraine","UAE" = "United Arab Emirates","GBR"="United Kingdom of Great Britain and Northern Ireland","TZA" = "United Republic of Tanzania","USA" = "United States of America","URY" = "Uruguay","UZB" = "Uzbekistan","VUT" = "Vanuatu","VEN" = "Venezuela (Bolivarian Republic of)","VNM" = "Viet Nam","YEM" = "Yemen","ZMB" = "Zambia","ZWE" = "Zimbabwe","GUF" = "French Guiana","GLP"= "Guadeloupe","MTQ"="Martinique","SRB"="Serbia and Montenegro","REU"="Réunion"),
               CRP=as.factor(Item),
               CRP=fct_recode(CRP,"car"="Carrots and turnips","cab"="Cabbages","bck"="Buckwheat","brl"="Barley","ban"="Bananas","yam"="Yams","wpo"="Potatoes","whe"="Wheat","rce"="Rice","tom"="Tomatoes","tob"="Unmanufactured tobacco","tea"="Tea leaves","spo"="Sweet potatoes","sfl"="Sunflower seed","suc"="Sugar cane","sub"="Sugar beet","soy"="Soya beans","srg"="Sorghum","rye"="Rye","rub"="Natural rubber in primary forms","rcg"="Canary seed","rsd"="Rape or colza seed","pig"="Pigeon peas, dry","mlt"="Millet","oni"="Onions and shallots, green","olv"="Olives","olp"="Oil palm fruit","oat"="Oats","grd"="Groundnuts, excluding shelled","flx"="Flax, raw or retted","pea"="Chick peas, dry","cow"="Cow peas, dry","cot"="Seed cotton, unginned","cof"="Coffee, green","con"="Coconuts, in shell","coc"="Cocoa beans","cit"="Other citrus fruit, n.e.c.","csv"="Cassava, fresh",))

#####################################################
#  2f ~ Manipulation task: FAOSTAT 2000 price data  #

prices2000<-subset(prices, prices$Year == "2000")
prices2000<-mutate(prices2000, Prices = Value)
prices2000<-select(prices2000,Country,CRP, Prices)

bananapricemanipulation2000<-prices2000[which(prices2000$CRP=="ban"| prices2000$CRP=="Plantains and cooking bananas" ),]
bananapricemanipulation2000<-bananapricemanipulation2000%>% group_by(Country) %>% summarise(Prices = sum(Prices)*0.5)
bananapricemanipulation2000 <- as.data.frame(bananapricemanipulation2000)
prices2000 <- subset(prices2000, prices2000$CRP!="ban" & prices2000$CRP!="Plantains and cooking bananas") 
bananapricemanipulation2000$CRP<-rep("ban",61)
prices2000<-rbind(prices2000,bananapricemanipulation2000)



#####################################################
#  2g ~ Manipulation task: FAOSTAT 2010 price data  #

prices2010<-subset(prices, prices$Year == "2010")
prices2010<-mutate(prices2010, Prices = Value)
prices2010<-select(prices2010,Country,CRP, Prices)

bananapricemanipulation2010<-prices2010[which(prices2010$CRP=="ban"| prices2010$CRP=="Plantains and cooking bananas" ),]
bananapricemanipulation2010<-bananapricemanipulation2010%>% group_by(Country) %>% summarise(Prices = sum(Prices)*0.5)
bananapricemanipulation2010 <- as.data.frame(bananapricemanipulation2010)
prices2010 <- subset(prices2010, prices2010$CRP!="ban" & prices2010$CRP!="Plantains and cooking bananas" ) 
bananapricemanipulation2010$CRP<-rep("ban",66)
prices2010<-rbind(prices2010,bananapricemanipulation2010)

#####################################################
#  2h ~ Loading task: FAOSTAT 1989 price data       #

prices1989 <- read.csv("C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\FAOSTAT_data_en_2-12-2024.csv")
prices1989<- prices1989|>select(Item,Area,Year,Value,Flag.Description)
prices1989<-mutate(prices1989, Country = as.character(Area),
                   Country = fct_recode(Country,"AFG"="Afghanistan","ALB"="Albania","DZA"="Algeria","AGO"="Angola","ATG"="Antigua and Barbuda","ARG"="Argentina","ARM"="Armenia","AUS"="Australia","AUT"="Austria","AZE"="Azerbaijan","BHS"="Bahamas","BHR"="Bahrain","BGD"="Bangladesh","BRB"="Barbados","BLR"="Belarus","BEL"="Belgium","BLZ"="Belize","BEN"="Benin","BTN"="Bhutan","BOL"="Bolivia (Plurinational State of)","BIH"="Bosnia and Herzegovina","BWA"="Botswana","BRA"="Brazil","BRN"="Brunei Darussalam","BGR"="Bulgaria","BFA"="Burkina Faso","BDI"="Burundi","CPV"="Cabo Verde","KHM"="Cambodia","CMR"="Cameroon","CAN"="Canada","CAF"="Central African Republic","TCD"="Chad","CHL"="Chile","CHN"="China","HKG"="China, Hong Kong SAR","MAC"="China, Macao SAR","CHN"="China, mainland","TWN"="China, Taiwan Province of","COL"="Colombia","COM"="Comoros","COG"="Congo","COK"="Cook Islands","CRI"="Costa Rica","CIV"="Côte d'Ivoire","HRV"="Croatia","CUB"="Cuba","CYP"="Cyprus","CZE"="Czechia","PRK"="Democratic People's Republic of Korea","COD"="Democratic Republic of the Congo","DEN"="Denmark","DJI"="Djibouti","DMA"="Dominica","DOM"="Dominican Republic","ECU"="Ecuador","EGY"="Egypt","SLV"="El Salvador","GNQ"="Equatorial Guinea","ERI"="Eritrea","EST"="Estonia","SWZ"="Eswatini","ETH"="Ethiopia","FRO"="Faroe Islands","FJI"="Fiji","FIN"="Finland","FRA"="France","PYF"="French Polynesia","GAB"="Gabon","GMB"="Gambia","GEO"="Georgia","DEU"="Germany","GHA"="Ghana","GRC"="Greece","GRD"="Grenada","GTM"="Guatemala","GIN"="Guinea","GNB"="Guinea-Bissau","GUY"="Guyana","HTI"="Haiti","HND"="Honduras","HUN"="Hungary","ISL"="Iceland","IND"="India","IDN"="Indonesia","IRN"="Iran (Islamic Republic of)","IRQ"="Iraq","IRL"="Ireland","ISR"="Israel","ITA"="Italy","JAM"="Jamaica","JPN"="Japan","JOR"="Jordan","KAZ"="Kazakhstan","KEN"="Kenya","KIR"="Kiribati","KWT"="Kuwait","KGZ"="Kyrgyzstan","LAO"="Lao People's Democratic Republic","LVA"="Latvia","LBN"="Lebanon","LSO"="Lesotho","LBR"="Liberia","LBY"="Libya","LTU"="Lithuania","LUX"="Luxembourg","MDG"="Madagascar","MWI"="Malawi","MYS"="Malaysia","MDV"="Maldives","MLI"="Mali","MLT"="Malta","MHL"="Marshall Islands","MRT"="Mauritania","MUS"="Mauritius","MEX"="Mexico","FSM"="Micronesia (Federated States of)","MNG"="Mongolia","MNE"="Montenegro","MAR"="Morocco","MOZ"="Mozambique","MMR"="Myanmar","NAM"="Namibia","NRU"="Nauru","NPL"="Nepal","NDL"="Netherlands (Kingdom of the)","NCL"="New Caledonia","NZL"="New Zealand","NIC"="Nicaragua","NER"="Niger","NGA"="Nigeria","NIU"="Niue","MKD"="North Macedonia","NOR"="Norway","OMN"="Oman","PAK"="Pakistan","PSE"="Palestine","PAN"="Panama","PNG"="Papua New Guinea","PRY"="Paraguay","PER"="Peru","PHL"="Philippines","POL"="Poland","POR"="Portugal","PRI"="Puerto Rico","QAT"="Qatar","KOR"="Republic of Korea","MDA"="Republic of Moldova","ROU"="Romania","RUS"="Russian Federation","RWA"="Rwanda","KNA"="Saint Kitts and Nevis","LCA"="Saint Lucia","VCT"="Saint Vincent and the Grenadines","WSM"="Samoa","STP"="Sao Tome and Principe","SAU"="Saudi Arabia","SEN"="Senegal","SRB"="Serbia","SYC"="Seychelles","SLE"="Sierra Leone","SGP"="Singapore","SVK"="Slovakia","SVN"="Slovenia","SLB"="Solomon Islands","SOM"="Somalia","ZAF"="South Africa","ESP"="Spain","LKA"="Sri Lanka","SDN"="Sudan (former)","SUR"="Suriname","SWE"="Sweden","CHE"="Switzerland","SYR"="Syrian Arab Republic","TJK"="Tajikistan","THA"="Thailand","TLS"="Timor-Leste","TGO"="Togo","TKL"="Tokelau","TKL"="Tonga","TTO"="Trinidad and Tobago","TUN"="Tunisia","TUR"="Türkiye","TKM"="Turkmenistan","TUV"="Tuvalu","UGA"="Uganda","UKR"="Ukraine","UAE"="United Arab Emirates","GBR"="United Kingdom of Great Britain and Northern Ireland","TZA"="United Republic of Tanzania","USA"="United States of America","URY"="Uruguay","UZB"="Uzbekistan","VUT"="Vanuatu","VEN"="Venezuela (Bolivarian Republic of)","VNM"="Viet Nam","YEM"="Yemen","ZMB"="Zambia","ZWE"="Zimbabwe","GUF"="French Guiana","GLP"="Guadeloupe","MTQ"="Martinique","SRB"="Serbia and Montenegro","REU"="Réunion"),
                   CRP=as.factor(Item),
                   CRP=fct_recode(CRP,"car"="Carrots and turnips", "cab"="Cabbages", "bck"="Buckwheat", "brl"="Barley", "ban"="Bananas", "yam"="Yams", "wpo"="Potatoes", "whe"="Wheat", "rce"="Rice", "tom"="Tomatoes", "tob"="Unmanufactured tobacco", "tea"="Tea leaves", "spo"="Sweet potatoes", "sfl"="Sunflower seed", "suc"="Sugar cane", "sub"="Sugar beet", "soy"="Soya beans", "srg"="Sorghum", "rye"="Rye", "rub"="Natural rubber in primary forms", "rcg"="Canary seed", "rsd"="Rape or colza seed", "pig"="Pigeon peas, dry", "mlt"="Millet", "oni"="Onions and shallots, green", "olv"="Olives", "olp"="Oil palm fruit", "oat"="Oats", "grd"="Groundnuts, excluding shelled", "flx"="Flax, raw or retted", "pea"="Chick peas, dry", "cow"="Cow peas, dry", "cot"="Seed cotton, unginned", "cof"="Coffee, green", "con"="Coconuts, in shell", "coc"="Cocoa beans", "cit"="Other citrus fruit, n.e.c.", "csv"="Cassava, fresh"))
prices1989<-mutate(prices1989, Prices = Value)
prices1989<-select(prices1989,Country,CRP, Prices)

bananapricemanipulation1989<-prices1989[which(prices1989$CRP=="ban"| prices1989$CRP=="Plantains and cooking bananas" ),]
bananapricemanipulation1989<-bananapricemanipulation1989%>% group_by(Country) %>% summarise(Prices = sum(Prices)*0.5)
bananapricemanipulation1989 <- as.data.frame(bananapricemanipulation1989)
prices1989 <- subset(prices1989, prices1989$CRP!="ban" & prices1989$CRP!="Plantains and cooking bananas" ) 
bananapricemanipulation1989$CRP<-rep("ban",nrow(bananapricemanipulation1989))
prices1989<-rbind(prices1989,bananapricemanipulation1989)

#####################################################
#  2i ~ Loading task: C&D(2012) Replication data    #

data <- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Data from Donaldson.csv",header = FALSE)
data<-data |>rename(Country = V1, Actual= V2, Predicted = V3)
data<-mutate(data, Country = as.character(Country), 
             Country = fct_recode(Country,"Argentina"="9","Australia"="10","Austria"="11", "Bangladesh"="16",
                                  "Bolivia"="19", "Brazil"="21", "Bulgaria"="27","Canada"="33",
                                  "Colombia"="44", "Democratic Republic of the Congo"="46",
                                  "Denmark"="54", "Dominican Republic"="56", "Ecuador"="58",
                                  "Egypt"="59", "El Salvador"="60", "Finland"="67", "France"="68",
                                  "Ghana"="81", "Honduras"="95","Hungary"="97" ,"Iceland"="99", "Indonesia"="101",
                                  "Iran"="102", "Ireland"="104", "Israel"="105", "Jamaica"="109",
                                  "Kenya"="114", "Cambodia"="115", "Laos"="120", "Lebanon"="121",
                                  "Malawi"="130", "Mozambique"= "144", "Namibia"="147", "Netherlands"="150",
                                  "Nicaragua"="157", "Norway"="162", "Paraguay"="169",
                                  "Peru"="170", "Poland"="173", "Zimbabwe"="181",
                                  "Romania"="183", "South Africa"="202", "Spain"="203",
                                  "Suriname"="207", "Sweden"="210", "Togo"="217",
                                  "Trinidad and Tobago"="220", "Tunisia"="222", "Turkey"="223",
                                  "USSR"="228", "United States"="231", "Burkina Faso"="233",
                                  "Venezuela"="236", "Yougoslavia"="248", "China"="351"))
Crop<-rep(1:17,55)
data$Crop<-Crop
data <- mutate(data,  Crop = as.character(Crop),
               Crop = fct_recode(Crop, "Barley" = "1","Cabbages" = "2", "Carrots and Turnips"="3",
                                 "Cassava"="4","Coconuts"="5", "Seed Cotton"="6", "Groundnuts with shell"="7",
                                 "Maize"= "8", "Onions, dry" = "9", "Rice, paddy" = "10", "Sorghum"="11",
                                 "Soybeans"="12","Sugar Cane"= "13", "Sweet Potatoes" = "14", "Tomatoes"="15",
                                 "Wheat"="16", "Potatoes"="17"))

#####################################################
#2j ~ Loading task: World bank population 2000 data #

population<-read.csv("C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\9d3e3a6f-51cd-408d-9acb-f4476ceb1b28_Data.csv")
population<-select(population, Country.Name,Country.Code, X2000..YR2000.)
population<-mutate(population, Country = Country.Code)
population<-select(population, X2000..YR2000., Country)
population<-drop_na(population)

population<-subset(population, population$Country %in% unique(prices2000$Country))
population$X2000..YR2000.<-as.numeric(population$X2000..YR2000.)

############################################################
##############3 ~ Data Manipulation ########################
############################################################

##########3 ~ Data Manipulation Contense####################
#3a ~ Manipulation task: C&D specification data 2000       #
#3b ~ Manipulation task: C&D specification data 2010       #
#3c ~ Manipulation task: C&D specification data 1989       #
#3d ~ Manipulation task: New specification data 2000       #
#3e ~ Manipulation task: C&D(2012) Replication data        #
#3f ~ Manipulation task: non-parametric test 2000          #
#3g ~ Manipulation task: non-parametric test 2010          #
#3h ~ Manipulation task: appendix specification 2000 data  #
#3i ~ Manipulation task: appendix specification 2010 data  #
############################################################

#####################################################
#3a~ Manipulation task: C&D specification data 2000 #

intermediate2000<-inner_join(potential, actuals2000)
savespecialisation2000<-inner_join(intermediate2000,prices2000)
savespecialisation2000$Value[savespecialisation2000$Value == 0]<-NA
savespecialisation2000$P_VS...mS[savespecialisation2000$P_VS...mS ==0]<-NA
savespecialisation2000$P_VS.S.MS[savespecialisation2000$P_VS.S.MS==0]<-NA
savespecialisation2000$P_VS.S[savespecialisation2000$P_VS.S==0]<-NA
savespecialisation2000$Value[savespecialisation2000$Value==0]<-NA
savespecialisation2000$Yld[savespecialisation2000$Yld==0]<-NA
savespecialisation2000$Yld.1[savespecialisation2000$Yld.1==0]<-NA
savespecialisation2000$Yld.2[savespecialisation2000$Yld.2==0]<-NA
savespecialisation2000$marginalproduct<-savespecialisation2000$P_VS.S.MS*savespecialisation2000$Prices
savedspecialisationdata2000<-as.data.frame(savespecialisation2000 %>% group_by(Country)%>%filter(marginalproduct==max(marginalproduct, na.rm=TRUE)))
savedspecialisationdata2000<-mutate(savedspecialisationdata2000,Phigh= 1000*P_VS.S,Pmid=1000*P_VS.S.MS,Plow=1000*P_VS...mS)
savedspecialisationdata2000<-mutate(savedspecialisationdata2000,lnPhigh= log(Phigh),lnPmid=log(Pmid),lnPlow=log(Plow), lnValue=log(Value))
savedspecialisationdata2000$continent<-countrycode(savedspecialisationdata2000$Country,"genc3c", "continent")

write.csv(savedspecialisationdata2000,"C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\Finaldata\\savedspecialisationdata2000.csv")

#####################################################
#3b~ Manipulation task: C&D specification data 2010 #   

intermediate2010<-inner_join(potential, actuals2010)
savespecialisation2010<-inner_join(intermediate2010,prices2010)
savespecialisation2010$Value[savespecialisation2010$Value == 0]<-NA
savespecialisation2010$P_VS...mS[savespecialisation2010$P_VS...mS ==0]<-NA
savespecialisation2010$P_VS.S.MS[savespecialisation2010$P_VS.S.MS==0]<-NA
savespecialisation2010$P_VS.S[savespecialisation2010$P_VS.S==0]<-NA
savespecialisation2010$Value[savespecialisation2010$Value==0]<-NA
savespecialisation2010$Yld[savespecialisation2010$Yld==0]<-NA
savespecialisation2010$Yld.1[savespecialisation2010$Yld.1==0]<-NA
savespecialisation2010$Yld.2[savespecialisation2010$Yld.2==0]<-NA
savespecialisation2010$marginalproduct<-savespecialisation2010$P_VS.S.MS*savespecialisation2010$Prices
savedspecialisationdata2010<-as.data.frame(savespecialisation2010 %>% group_by(Country)%>%filter(marginalproduct==max(marginalproduct, na.rm=TRUE)))
savedspecialisationdata2010<-mutate(savedspecialisationdata2010,Phigh= 1000*P_VS.S,Pmid=1000*P_VS.S.MS,Plow=1000*P_VS...mS)
savedspecialisationdata2010<-mutate(savedspecialisationdata2010,lnPhigh= log(Phigh),lnPmid=log(Pmid),lnPlow=log(Plow), lnValue=log(Value))
savedspecialisationdata2010$continent<-countrycode(savedspecialisationdata2010$Country,"genc3c", "continent")

write.csv(savedspecialisationdata2010,"C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\Finaldata\\savedspecialisationdata2010.csv")

#####################################################
#3c~ Manipulation task: C&D specification data 1989 # 

intermediate1989<-inner_join(potential, actuals1989)
savedspecialisation1989<-inner_join(intermediate1989, prices1989)
savedspecialisation1989$Value[savedspecialisation1989$Value == 0]<-NA
savedspecialisation1989$P_VS...mS[savedspecialisation1989$P_VS...mS ==0]<-NA
savedspecialisation1989$P_VS.S.MS[savedspecialisation1989$P_VS.S.MS==0]<-NA
savedspecialisation1989$P_VS.S[savedspecialisation1989$P_VS.S==0]<-NA
savedspecialisation1989$Value[savedspecialisation1989$Value==0]<-NA
savedspecialisation1989$Yld[savedspecialisation1989$Yld==0]<-NA
savedspecialisation1989$Yld.1[savedspecialisation1989$Yld.1==0]<-NA
savedspecialisation1989$Yld.2[savedspecialisation1989$Yld.2==0]<-NA
savedspecialisation1989$marginalproduct<-savedspecialisation1989$P_VS...mS*savedspecialisation1989$Prices
savedspecialisation1989<-as.data.frame(savedspecialisation1989 %>% group_by(Country)%>%filter(marginalproduct==max(marginalproduct, na.rm=TRUE)))
savedspecialisation1989<-mutate(savedspecialisation1989,Phigh= 1000*P_VS.S,Pmid=1000*P_VS.S.MS,Plow=1000*P_VS...mS)
savedspecialisation1989<-mutate(savedspecialisation1989,lnPhigh= log(Phigh),lnPmid=log(Pmid),lnPlow=log(Plow), lnValue=log(Value))
savedspecialisation1989$lnpredicted<-savedspecialisation1989$lnPlow
savedspecialisation1989$lnactual<-savedspecialisation1989$lnValue
savedspecialisation1989$continent<-countrycode(savedspecialisation1989$Country,"genc3c", "continent")

write.csv(savedspecialisation1989,"C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\Finaldata\\savedspecialisation1989.csv")

#####################################################
#3d~ Manipulation task: New specification data 2000 # 

intermediateprice2000<- prices2000 %>% left_join(population, by = "Country")
intermediateprice2000$X2000..YR2000.<-as.numeric(intermediateprice2000$X2000..YR2000.)
intermediateprice2000$Prices<-as.numeric(intermediateprice2000$Prices)
intermediateprice2000<-drop_na(intermediateprice2000)
intermediateprice2000<-intermediateprice2000 |> group_by(Country)|>summarise(Pricespop = weighted.mean(Prices,X2000..YR2000.))
intermediateprice2000<-as.data.frame(intermediateprice2000)
intermediateprice2000$Pricespop<-as.numeric(intermediateprice2000$Pricespop)

inter<-inner_join(potential, actuals2000)
savernewspec<-inner_join(inter,intermediateprice2000)
savernewspec$Value[savernewspec$Value == 0]<-NA
savernewspec$P_VS...mS[savernewspec$P_VS...mS ==0]<-NA
savernewspec$P_VS.S.MS[savernewspec$P_VS.S.MS==0]<-NA
savernewspec$P_VS.S[savernewspec$P_VS.S==0]<-NA
savernewspec$Yld[savernewspec$Yld==0]<-NA
savernewspec$Yld.1[savernewspec$Yld.1==0]<-NA
savernewspec$Yld.2[savernewspec$Yld.2==0]<-NA
savernewspec$marginalproduct<-savernewspec$P_VS.S.MS*savernewspec$Pricespop

savernewspecF<-as.data.frame(savernewspec %>% group_by(Country)%>%filter(marginalproduct==max(marginalproduct, na.rm=FALSE)))
savernewspecF<-mutate(savernewspecF,Phigh= 1000*P_VS.S,Pmid=1000*P_VS.S.MS,Plow=1000*P_VS...mS)
savernewspecF<-mutate(savernewspecF,lnPhigh= log(Phigh),lnPmid=log(Pmid),lnPlow=log(Plow), lnValue=log(Value))
savernewspecT<-as.data.frame(savernewspec %>% group_by(Country)%>%filter(marginalproduct==max(marginalproduct, na.rm=TRUE)))
savernewspecT<-mutate(savernewspecT,Phigh= 1000*P_VS.S,Pmid=1000*P_VS.S.MS,Plow=1000*P_VS...mS)
savernewspecT<-mutate(savernewspecT,lnPhigh= log(Phigh),lnPmid=log(Pmid),lnPlow=log(Plow), lnValue=log(Value))
savernewspecF$continent<-countrycode(savernewspecF$Country,"genc3c", "continent")
savernewspecT$continent<-countrycode(savernewspecT$Country,"genc3c", "continent")

write.csv(savernewspecF,"C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\Finaldata\\savernewspecF.csv")
write.csv(savernewspecT,"C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\Finaldata\\savernewspecT.csv")

#####################################################
# 3e~ Manipulation task: C&D(2012) Replication      #

data$Actual[data$Actual == 0]<-NA
data$Predicted[data$Predicted == 0]<-NA
data$lnactual<-log(data$Actual)
data$lnpredicted<-log(data$Predicted)

write.csv(data,"C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\Finaldata\\data.csv")

#####################################################
#2f~ Manipulation task: non-parametric test 2000    #

nonpara2000<-inner_join(potential, actuals2000)
write.csv(nonpara2000,"C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\Finaldata\\nonpara2000.csv")

#####################################################
#2g  ~ Manipulation task: non-parametric test 2010  #

nonpara2010<-inner_join(potential, actuals2010)
write.csv(nonpara2010,"C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\Finaldata\\nonpara2010.csv")

#####################################################
#2h~ Manipulation task: appendix specification 2000 #

data2000<-inner_join(potential, actuals2000)

data2000$Value[data2000$Value == 0]<-NA
data2000$P_VS...mS[data2000$P_VS...mS ==0]<-NA
data2000$P_VS.S.MS[data2000$P_VS.S.MS ==0]<-NA
data2000$P_VS.S[data2000$P_VS.S ==0]<-NA

data2000<-mutate(data2000,Phigh= 1000*P_VS.S,Pmid=1000*P_VS.S.MS,Plow=1000*P_VS...mS)
data2000<-mutate(data2000,lnPhigh= log(Phigh),lnPmid=log(Pmid),lnPlow=log(Plow), lnValue=log(Value))
data2000<-data2000|>select(Country, CRP, lnValue,lnPhigh,lnPmid,lnPlow)

write.csv(data2000,"C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\Finaldata\\data2000.csv")

#####################################################
#2i~ Manipulation task: appendix specification 2010 #

data2010<-inner_join(potential, actuals2010) 

data2010$Value[data2010$Value == 0]<-NA
data2010$P_VS...mS[data2010$P_VS...mS ==0]<-NA
data2010$P_VS.S.MS[data2010$P_VS.S.MS ==0]<-NA
data2010$P_VS.S[data2010$P_VS.S ==0]<-NA

data2010<-mutate(data2010,Phigh= 1000*P_VS.S,Pmid=1000*P_VS.S.MS,Plow=1000*P_VS...mS)
data2010<-mutate(data2010,lnPhigh= log(Phigh),lnPmid=log(Pmid),lnPlow=log(Plow), lnValue=log(Value))
data2010<-data2010|>select(Country, CRP, lnValue,lnPhigh,lnPmid,lnPlow)

write.csv(data2010,"C:\\Users\\Liam McLaughlin\\OneDrive - University of Edinburgh\\Desktop\\Dissertation data\\Finaldata\\data2010.csv")

###########################################################
###################4 ~ Output Tables ######################
###########################################################

#############4 ~ Output Tables Contense####################
#4a ~ Output task: Figure 1 - C&D Specification           #
#4b ~ Output task: Figure 2 - New Specification           #
#4c ~ Output task: Figure 3 - Comparative Specifiation    #
#4d ~ Output task: Figure 4 - Non-parametric test         #
#4e ~ Output task: Appendix Figure 5 - non-specialisation #
###########################################################

#####################################################
#4a ~ Output task: Figure 1 - C&D Specification     #

savedspecialisationdata2000<-read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Finaldata/savedspecialisationdata2000.csv")
savedspecialisationdata2000 <- savedspecialisationdata2000[-c(7,37,72,76,119),]

m1<-lm(lnValue~lnPlow, savedspecialisationdata2000)
m1s<-vcovCL(m1, cluster=~CRP,type="HC1")
m1e    <- sqrt(diag(m1s))
m2<-plm(lnValue~ lnPlow, savedspecialisationdata2000, index= c("CRP"), model="within")
m2s<-vcovCR(m2, cluster= savedspecialisationdata2000$CRP,type="CR1")
m2e    <- sqrt(diag(m2s))
savedspecialisationdata2000<-drop_na(savedspecialisationdata2000)
m5<-plm(lnValue~ lnPlow, savedspecialisationdata2000, index= c("continent"), model="within")
m5s<-vcovCR(m5, cluster= savedspecialisationdata2000$CRP,type="CR1")
m5e    <- sqrt(diag(m5s))

savedspecialisationdata2010<-read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Finaldata/savedspecialisationdata2010.csv") 
savedspecialisationdata2010 <- savedspecialisationdata2010[-c(7,37,72),]

m3<-lm(lnValue~lnPlow, savedspecialisationdata2010)
m3s<-vcovCL(m3, cluster=~CRP,type="HC1")
m3e    <- sqrt(diag(m3s))
m4<-plm(lnValue~ lnPlow, savedspecialisationdata2010, index= c("CRP"), model="within")
m4s<-vcovCR(m4, cluster=savedspecialisationdata2010$CRP,type="CR1")
m4e    <- sqrt(diag(m4s))
savedspecialisationdata2010<-drop_na(savedspecialisationdata2010)
m6<-plm(lnValue~ lnPlow, savedspecialisationdata2010, index= c("continent"), model="within")
m6s<-vcovCR(m6, cluster=savedspecialisationdata2010$CRP,type="CR1")
m6e    <- sqrt(diag(m6s))

stargazer(m1,m2,m5,m3,m4,m6,type="text",omit.stat=c("ser","f"),model.names=FALSE,column.sep.width="3000pt",se = list(m1e,m2e,m3e,m4e),dep.var.labels=c("ln(Actual Output)"),covariate.labels = c("ln(Predicted Output)"),omit="Constant",out="C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Visual Outputs/Figure 1 - C&D Specification.html", t.auto = FALSE, p.auto = FALSE, 
          add.lines=list(c("Year", "2000", "2000","2000","2010", "2010","2010"),
                         c("Fixed Effects by?", "None", "Crop","Continent","None", "Crop","Continent"),
                         c("Jacque-Bera Residual Normaility?", "Pass","-","Pass", "Pass", "-","-"),
                         c("Shapiro-Wilk Residual Normaility?", "Pass","-","Pass","Pass", "Pass","-"),
                         c("Kolmogorov–Smirnov Residual Normaility?","Pass","Pass","Pass","Pass", "Pass", "Pass")))

#used for postestimation
#jarque.bera.test(resid(m6)) 
#shapiro.test(resid(m6))  
#ks.test(resid(m6), "pnorm", mean = mean(resid(m6)), sd=sd(resid(m6)))
#autoplot(m1, which = 1:6, ncol = 3, label.size = 3)
#autoplot(m3, which = 1:6, ncol = 3, label.size = 3)
#avPlots(m1)
#avPlots(m3)
#potential removals
#savedspecialisationdata2000 <- savedspecialisationdata2000[-c(7,37,72), ]
#savedspecialisationdata2000 <- savedspecialisationdata2000[-c(37,76,100,119), ]
#savedspecialisationdata2010 <- savedspecialisationdata2010[-c(7,37,72), ]
#savedspecialisationdata2010 <- savedspecialisationdata2010[-c(37,72,60), ]

#####################################################
#4b ~ Output task: Figure 2 - New Specification     #

savernewspecF<- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Finaldata/savernewspecF.csv")

m40<-lm(lnValue~lnPlow, savernewspecF)
m40s<-vcovCL(m40, cluster=~CRP,type="HC1")
m40e    <- sqrt(diag(m40s))
m41<-plm(lnValue~ lnPlow, savernewspecF, index= c("CRP"), model="within")
m41s<-vcovCR(m41, cluster= savernewspecF$CRP,type="CR1")
m41e    <- sqrt(diag(m41s))
savernewspecF<-drop_na(savernewspecF)
m44<-plm(lnValue~ lnPlow, savernewspecF, index= c("continent"), model="within")
m44s<-vcovCR(m44, cluster=savernewspecF$CRP,type="CR1")
m44e    <- sqrt(diag(m44s))

savernewspecT<- read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Finaldata/savernewspecT.csv")
savernewspecT <- savernewspecT[-c(2,56,91,115, 96,72,106), ]

m42<-lm(lnValue~lnPlow, savernewspecT)
m42s<-vcovCL(m42, cluster=~CRP,type="HC1")
m42e    <- sqrt(diag(m42s))
m43<-plm(lnValue~ lnPlow, savernewspecT, index= c("CRP"), model="within")
m43s<-vcovCR(m43, cluster= savernewspecT$CRP,type="CR1")
m43e    <- sqrt(diag(m43s))
savernewspecT<-drop_na(savernewspecT)
m45<-plm(lnValue~ lnPlow, savernewspecT, index= c("continent"), model="within")
m45s<-vcovCR(m45, cluster=savernewspecT$CRP,type="CR1")
m45e    <- sqrt(diag(m45s))

stargazer(m40,m41,m44, type="text",omit.stat=c("ser","f"), column.sep.width="3000pt",se=list(m40e,m41e,m44e), model.names=FALSE,dep.var.labels=c("ln(Actual Output)"),covariate.labels = c("ln(Predicted Output)"), omit="Constant",out="C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Visual Outputs/Figure 2 - New Specification.html", t.auto = FALSE, p.auto = FALSE,
          add.lines=list(c("Year","2000","2000","2000"),
                         c("Size specification","Small","Small","Small"),
                         c("Fixed Effects by?", "None", "Crop","Continent"),
                         c("Jacque-Bera Residual Normaility?", "Pass", "-","Pass"),
                         c("Shapiro-Wilk Residual Normaility?", "Pass", "-","Pass"),
                         c("Kolmogorov–Smirnov Residual Normaility?", "Pass", "Pass","Pass")))

stargazer(m40,m41,m44,m42,m43,m45, type="text",omit.stat=c("ser","f"), column.sep.width="3000pt",se=list(m40e,m41e,m44e,m42e,m43e,m45e), model.names=FALSE,dep.var.labels=c("ln(Actual Output)"),covariate.labels = c("ln(Predicted Output)"), omit="Constant",out="C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Visual Outputs/Figure 4 - New Specification appendix.html", t.auto = FALSE, p.auto = FALSE,
          add.lines=list(c("Year","2000","2000","2000","2000","2000","2000"),
                         c("Size specification","Small","Small","Small","Large","Large","Large"),
                         c("Fixed Effects by?", "None", "Crop","Continent","None","Crop", "Continent"),
                         c("Jacque-Bera Residual Normaility?", "Pass", "-","Pass","-", "-","-"),
                         c("Shapiro-Wilk Residual Normaility?", "Pass", "-","Pass","-", "-","-"),
                         c("Kolmogorov–Smirnov Residual Normaility?", "Pass", "Pass","Pass","Pass", "-","Pass")))

#used for postestimations
#jarque.bera.test(resid(m45)) 
#shapiro.test(resid(m45))  
#ks.test(resid(m45), "pnorm", mean = mean(resid(m45)), sd=sd(resid(m45)))

#autoplot(m40, which = 1:6, ncol = 3, label.size = 3)
#autoplot(m42, which = 1:6, ncol = 3, label.size = 3)
#avPlots(m40)
#avPlots(m42)
#potential removals
#savernewspecF <- savernewspecF[-c(5,28,40,42), ]
#savernewspecF <- savernewspecF[-c(2,26,42,50), ]
#savernewspecT <- savernewspecT[-c(2,56,91,115), ]
#savernewspecT <- savernewspecT[-c(56,91,115), ]
#savernewspecT <- savernewspecT[-c(2,56,91,115,96,72,106), ]

#######################################################
#4c~ Output task: Figure 3 - Comparative Specifiation #

savedspecialisation1989<-read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Finaldata/savedspecialisation1989.csv") 

m13<-lm(lnactual~lnpredicted, savedspecialisation1989)
m13s<-vcovCL(m13, cluster=~CRP,type="HC1")
m13e    <- sqrt(diag(m13s))
m14<-plm(lnactual~ lnpredicted, savedspecialisation1989, index= c("CRP"), model="within")
m14s<-vcovCR(m14, cluster= savedspecialisation1989$CRP,type="CR1")
m14e    <- sqrt(diag(m14s))
savedspecialisation1989<-drop_na(savedspecialisation1989)
m15<-plm(lnactual~ lnpredicted, savedspecialisation1989, index= c("continent"), model="within")
m15s<-vcovCR(m15, cluster=savedspecialisation1989$CRP,type="CR1")
m15e    <- sqrt(diag(m15s))

data<-read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Finaldata/data.csv")

model1a<-lm(lnactual~lnpredicted, data)
cov1<-vcovCL(model1a, cluster=~Country,type="HC1")
cluster_se    <- sqrt(diag(cov1))
femodel1a<-plm(lnactual~ lnpredicted, data, index= c("Crop"), model="within")
cov2<-vcovCR(femodel1a,cluster=data$Country,type="CR1")
cluster2_se<-sqrt(diag(cov2))
femodel2a<-plm(lnactual~ lnpredicted, data, index= c("Country"), model="within")
cov3<-vcovCR(femodel2a,cluster=data$Country,type="CR1")
cluster3_se<-sqrt(diag(cov3))

stargazer(m13,m14,m15,model1a,femodel1a,femodel2a,type="text",model.names=FALSE,column.sep.width="90000pt",omit.stat=c("ser","f"),se = list(m13e,m14e,m15e,cluster_se,cluster2_se,cluster3_se),dep.var.labels=c("ln(Actual Output)"),covariate.labels = c("ln(Predicted Output)"),omit="Constant",out="C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Visual Outputs/Figure 3 - Comparative Specifiation.html", t.auto = FALSE, p.auto = FALSE,
          add.lines=list(c("Year","1981","1981","1981","1981","1981","1981"),
                         c("Specialisation by?","Country","Country","Country","Field","Field","Field"),
                         c("Data Source","GAEZV4","GAEZV4","GAEZV4","C&D(2012)","C&D(2012)","C&D(2012)"),
                         c("Fixed Effects by?", "None", "Crop","Continent","None","Crop", "Country"),
                         c("Jacque-Bera Residual Normaility?", "Pass", "-","Pass","Pass", "Pass", "Pass"),
                         c("Shapiro-Wilk Residual Normaility?", "Pass", "-","Pass","Pass", "Pass", "Pass"),
                         c("Kolmogorov–Smirnov Residual Normaility?", "Pass", "Pass","Pass","Pass", "Pass","Pass")))

#Postestimation testing
#ks.test(resid(femodel1a), "pnorm", mean = mean(resid(femodel1a)), sd=sd(resid(femodel1a)))
#jarque.bera.test(resid(m15)) #yes no yes yes yes
#shapiro.test(resid(m15))  #yes no yes yes yes
#ks.test(resid(femodel1a), "pnorm", mean = mean(resid(femodel1a)), sd=sd(resid(femodel1a))) # yes yes yes yes yes
#autoplot(m13, which = 1:6, ncol = 3, label.size = 3)
#avPlots(m13) # highest residuals and highest partial leverage
#potential removals
#savedspecialisation1989<-savedspecialisation1989[-c(17,54,77)]
#savedspecialisation1989<-savedspecialisation1989[-c(17,54,88)]

#####################################################
#4d ~ Output task: Figure 4 - Non-parametric test   #

nonpara2000<-read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Finaldata/nonpara2000.csv")

by(nonpara2000, nonpara2000$CRP, function(nonpara2000) cor.test(nonpara2000$Value, nonpara2000$P_VS...mS, use="pair", method="kendall"))
by(nonpara2000, nonpara2000$CRP, function(nonpara2000) cor.test(nonpara2000$Value, nonpara2000$P_VS...mS, use="pair", method="spearman"))
length(unique(nonpara2000$Country))

results<-c()
for (j in unique(nonpara2000$CRP)){
  holder<-nonpara2000[nonpara2000$CRP==j,]
  holder<-holder|>drop_na()
  holder$Porder<- rank(holder$P_VS...mS)
  holder$Vorder<- rank(holder$Value)
  leadedge<-c()
  propbind<-c()
  for (i in 1:length(holder$Porder)) {
    indiv<-(holder$Porder[i]<= holder$Porder & holder$Vorder[i]<=holder$Vorder | holder$Porder[i]>= holder$Porder &  holder$Vorder[i]>=holder$Vorder)
    position<-c(1:length(holder$Porder))
    position<-position[position>i]
    indiv<-indiv[position]
    leadedge<-append(leadedge,indiv)
  }
  proportioncorrect<-sum(leadedge)/length(leadedge)
  name<-c(j)
  number<-c(length(holder$Porder))
  propbind<-data.frame(name,proportioncorrect,number)
  results<-rbind(results,propbind)
}
weighted<-results$proportioncorrect*results$number
name<-c("weighted avg proportion")
proportioncorrect<-sum(weighted)/sum(results$number)
number<-sum(results$number)
weightedbind<-data.frame(name,proportioncorrect,number)
results<-rbind(results,weightedbind)
results
sort.df <- with(results,  results[order(name) , ])
sort.df$proportioncorrect
sort.df$number

nonpara2010<-read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Finaldata/nonpara2010.csv")

by(nonpara2010, nonpara2010$CRP, function(nonpara2010) cor.test(nonpara2010$Value, nonpara2010$P_VS...mS, use="pair", method="kendall"))
by(nonpara2010, nonpara2010$CRP, function(nonpara2010) cor.test(nonpara2010$Value, nonpara2010$P_VS...mS, use="pair", method="spearman"))

results<-c()
for (j in unique(nonpara2010$CRP)){
  holder<-nonpara2010[nonpara2010$CRP==j,]
  holder<-holder|>drop_na()
  holder$Porder<- rank(holder$P_VS...mS)
  holder$Vorder<- rank(holder$Value)
  leadedge<-c()
  propbind<-c()
  for (i in 1:length(holder$Porder)) {
    indiv<-(holder$Porder[i]<= holder$Porder & holder$Vorder[i]<=holder$Vorder | holder$Porder[i]>= holder$Porder &  holder$Vorder[i]>=holder$Vorder)
    position<-c(1:length(holder$Porder))
    position<-position[position>i]
    indiv<-indiv[position]
    leadedge<-append(leadedge,indiv)
  }
  proportioncorrect<-sum(leadedge)/length(leadedge)
  name<-c(j)
  number<-c(length(holder$Porder))
  propbind<-data.frame(name,proportioncorrect,number)
  results<-rbind(results,propbind)
}
weighted<-results$proportioncorrect*results$number
name<-c("weighted avg proportion")
proportioncorrect<-sum(weighted)/sum(results$number)
number<-sum(results$number)
weightedbind<-data.frame(name,proportioncorrect,number)
results<-rbind(results,weightedbind)
results
sort.df <- with(results,  results[order(name) , ])
sort.df$proportioncorrect
sort.df$number
sort.df

#########################################################
#4e~ Output task: Appendix Figure 5 - non specification #

data2000<-read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Finaldata/data2000.csv")
m1a<-lm(lnValue~lnPlow, data2000)
m1ae<-vcovCL(m1a, cluster=~Country,type="HC1")
m3a<-plm(lnValue~ lnPlow, data2000, index= c("Country"), model="within")
m3ae<-vcovCR(m3a,cluster=data2000$Country,type="CR1")
m3aer    <- sqrt(diag(m3ae))
m4a<-plm(lnValue~ lnPlow, data2000, index= c("CRP"), model="within")
m4ae<-vcovCR(m4a,cluster=data2000$Country,type="CR1")
m4aer    <- sqrt(diag(m4ae))
m1aer    <- sqrt(diag(m1ae))

data2010<-read.csv("C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Finaldata/data2010.csv") 
m2a<-lm(lnValue~lnPlow, data2010)
m2ae<-vcovCL(m2a, cluster=~Country,type="HC1")
m2aer    <- sqrt(diag(m2ae))
m5a<-plm(lnValue~ lnPlow, data2010, index= c("Country"), model="within")
m5ae<-vcovCR(m5a,cluster=data2010$Country,type="CR1")
m5aer    <- sqrt(diag(m5ae))
m6a<-plm(lnValue~ lnPlow, data2010, index= c("CRP"), model="within")
m6ae<-vcovCR(m6a,cluster=data2010$Country,type="CR1")
m6aer    <- sqrt(diag(m6ae))

stargazer(m1a,m3a,m4a,m2a,m5a,m6a,type="text",model.names=FALSE,column.sep.width="90000pt",omit.stat=c("ser","f"),se = list(m1aer,m3aer,m4aer,m2aer,m5aer,m6aer),dep.var.labels=c("ln(Actual Output)"),covariate.labels = c("ln(Predicted Output)"),omit="Constant", out="C:/Users/Liam McLaughlin/OneDrive - University of Edinburgh/Desktop/Dissertation data/Visual Outputs/Appendix Figure 5.html", t.auto = FALSE, p.auto = FALSE,
          add.lines=list(c("Year","2000","2000","2000","2010","2010","2010"),
                         c("Fixed Effects by?", "None", "Country","Crop","None","Country", "Crop"),
                         c("Jacque-Bera Residual Normaility?", "-", "-","-","-", "-", "-"),
                         c("Shapiro-Wilk Residual Normaility?", "-", "-","-","-", "-", "-"),
                         c("Kolmogorov–Smirnov Residual Normaility?", "-", "-","-","-", "-","-")))
#potestimation testing
#jarque.bera.test(resid(m1a))
#shapiro.test(resid(m1a))
#ks.test(resid(m6a), "pnorm", mean = mean(resid(m6a)), sd=sd(resid(m6a)))
#autoplot(m1a, which = 1:6, ncol = 3, label.size = 3)
#autoplot(m2a, which = 1:6, ncol = 3, label.size = 3)


#############5 ~ postestimation methods####################
#run for different models remove the "#" infront and change model name
#chage the names of models and the errors as appropriate to get all statistics used

#jarque.bera.test(resid(m1a))
#shapiro.test(resid(m1a))
#ks.test(resid(m6a), "pnorm", mean = mean(resid(m6a)), sd=sd(resid(m6a)))
#autoplot(m1a, which = 1:6, ncol = 3, label.size = 3)
#avPlots(m3)

#############6 ~ confidence interval polts####################
#first part shows how the HAC standard errors were calculated using two different methods
#lm and plm have diffrent access to se and betas so this is the code to access
#change model names and standard errors as appropriate

#changed each time the model name and error name for each one
#confidence interval calculations for lm models: replace m1 and m1e as appropriate
beta<-m1$coefficients
beta<-beta[2]
beta<-as.numeric(beta)
HACerror<-m1e
HACerror<-HACerror[2]
HACerror<-as.numeric(HACerror)

Lowconf<-beta-(1.96*HACerror)
Highconf<-beta+(1.96*HACerror)
confidenceinterval<-c(Lowconf, Highconf)
confidenceinterval

#confidence interval calculations for plm models: replace m2 and m2e as appropriate
beta<-m2$coefficients
HACerror<-m2e
##############
beta<-beta[1]
beta<-as.numeric(beta)
HACerror<-HACerror[1]
HACerror<-as.numeric(HACerror)
Lowconf<-beta-(1.96*HACerror)
Highconf<-beta+(1.96*HACerror)
confidenceinterval<-c(Lowconf, Highconf)
confidenceinterval

#beta and confidence interval plots given by code below
#Outputs created were merged outside of R script to make the final used in diss main body
#modelname is RDPM2000 RDPM 2010
#modelname2 is RIPM2000
#modelname3 is RDPM1989 and RDPM C&D
#modelname4 is RDPM1989
#modelname5 is RDPMC&D
#modelname6 is all models in order RDPM2000 RDPM 2010 RIPM2000 RDPM1989 and RDPM C&D

modelname<-c(1,2,3,4,5,6,6.01)
betaest<-c(0.9088879,0.9147745,0.9343362,0.9585281,0.8956812,0.940717,0)
lowcl<-c(0.7423869,0.7241945,0.746832,0.776745,0.6311328,0.8131906,0)
highcl<-c(1.0753889,1.1053545,1.121834,1.1403105,1.1602297, 1.0682434,0)
first<-data.frame(modelname,betaest,lowcl,highcl)
plotCI(x = first$modelname,y =first$betaest,li = first$lowcl,ui = first$highcl,scol="Red",gap="TRUE",pch=21, pt.bg=par("bg"))

modelname2<-c(0,1,2,3,4,5,6)
betaest2<-c(0,0.7691391,0.9066263,0.849615,0,0,0)
lowcl2<-c(0,0.5242568,0.8029809,0.5640404,0,0,0)
highcl2<-c(0,1.0140214,1.0102716,1.1356827,0,0,0)
second<-data.frame(modelname2,betaest2,lowcl2,highcl2)
plotCI(x = second$modelname,y =second$betaest,li = second$lowcl,ui = second$highcl,scol="Green",gap="TRUE",pch=21, pt.bg=par("bg"))

modelname3<-c(1,2,3,4,5,6,6)
betaest3<-c(0.6954679,0.7096002,0.872475,0.2122954,0.24406,0.09662221,1)
lowcl3<-c(0.2984084,0.3424815,0.6283788,0.1010557,0.1036838,0.0286342,1)
highcl3<-c(1.0925275,1.0767188,1.1165713,0.323535,0.3851282,0.16460980,1)
third<-data.frame(modelname3,betaest3,lowcl3,highcl3)
plotCI(x = third$modelname,y =third$betaest,li = third$lowcl,ui = third$highcl,scol="Blue",gap="TRUE",pch=21, pt.bg=par("bg"))

modelname4<-c(1,2,3,4,5,6)
betaest4<-c(0.6954679,0.7096002,0.872475,0,0,0)
lowcl4<-c(0.2984084,0.3424815,0.6283788,0,0,0)
highcl4<-c(1.0925275,1.0767188,1.1165713,0,0,0)
fourth<-data.frame(modelname4,betaest4,lowcl4,highcl4)
plotCI(x = fourth$modelname,y =fourth$betaest,li = fourth$lowcl,ui = fourth$highcl,scol="Orange",gap="TRUE",pch=21, pt.bg=par("bg"))

modelname5<-c(1,2,3,4,5,6)
betaest5<-c(1,0,0,0.2122954,0.24406,0.09662221)
lowcl5<-c(1,0,0,0.1010557,0.1036838,0.0286342)
highcl5<-c(1,0,0,0.323535,0.3851282,0.16460980)
fith<-data.frame(modelname5,betaest5,lowcl5,highcl5)
plotCI(x = fith$modelname,y =fith$betaest,li = fith$lowcl,ui = fith$highcl,scol="Purple",gap="TRUE",pch=21, pt.bg=par("bg"))

modelname6<-c(1:15)
betaest<-c(0.9088879,0.9147745,0.9343362,0.9585281,0.8956812,0.940717,0.7691391,0.9066263,0.849615,0.6954679,0.7096002,0.872475,0.2122954,0.24406,0.09662221)
lowcl<-c(0.7423869,0.7241945,0.746832,0.776745,0.6311328,0.8131906,0.5242568,0.8029809,0.5640404,0.2984084,0.3424815,0.6283788,0.1010557,0.1036838,0.0286342)
highcl<-c(1.0753889,1.1053545,1.121834,1.1403105,1.1602297, 1.0682434,1.0140214,1.0102716,1.1356827,1.0925275,1.0767188,1.1165713,0.323535,0.3851282,0.16460980)
fullCI<-data.frame(modelname6,betaest,lowcl,highcl)
plotCI(x = fullCI$modelname,y =fullCI$betaest,li = fullCI$lowcl,ui = fullCI$highcl,gap="TRUE",pch=21, pt.bg=par("bg"))



