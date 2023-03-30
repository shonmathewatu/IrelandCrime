#loading The dataset
ireland_crime <- read.csv("IrelandCrime(2).csv", na ="")
ireland_crime
#structure of dataset
str(ireland_crime)
ireland_crime[1:10]
# Renaming the columns
column_name <- c("Region",
                 "Division",
                 "OffenceCode",
                 "Offence",
                 "OffenceType" )
# Modified Column Names
colnames(ireland_crime) <- column_name
#modified dataframe
ireland_crime
str(ireland_crime)  
ireland_crime[c(1:2)]
#removing missing data

ireland_crime <- na.omit(ireland_crime)

nrow(ireland_crime)


missing_data <- complete.cases(ireland_crime)

missing_data

nrow(ireland_crime)
complete.cases(ireland_crime)
attach(ireland_crime)

#Updatng thr offence description
ireland_crime$OffenceType[ireland_crime$OffenceType == 'ATTEMPTS/THREATS TO MURDER/ASSAULTS/ HARASSMENTS AND RELATED OFFENCES'] <- c("Murder/assault/harassment")
ireland_crime$OffenceType[ireland_crime$OffenceType == 'DANGEROUS OR NEGLIGENT ACTS'] <- c("DANGEROUS ACTS")
ireland_crime$OffenceType[ireland_crime$OffenceType == 'KIDNAPPING AND RELATED OFFENCES'] <- c("Kidnapping")
ireland_crime$OffenceType[ireland_crime$OffenceType == 'ROBBERY/EXTORTION AND HIJACKING OFFENCES'] <- c("Robbery")
ireland_crime$OffenceType[ireland_crime$OffenceType == 'THEFT AND RELATED OFFENCES'] <- c("Theft")
ireland_crime$OffenceType[ireland_crime$OffenceType == 'FRAUD/DECEPTION AND RELATED OFFENCES'] <- c("Fraud")
ireland_crime$OffenceType[ireland_crime$OffenceType == 'PUBLIC ORDER AND OTHER SOCIAL CODE OFFENCES'] <- c("Public order")
ireland_crime$OffenceType[ireland_crime$OffenceType == 'OFFENCES AGAINST GOVERNMENT/ JUSTICE PROCEDURES AND ORGANISATION OF CRIME'] <- c("Offences against government")

ireland_crime


CrimeSummary < - ireland_crime$OffenceType


#plotting no of crimes in donegal region




write.csv(ireland_crime, "Dublin Crime")


