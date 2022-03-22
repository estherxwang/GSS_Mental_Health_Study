#read in data
data <- read.csv("2017 data.csv")

#select all the columns that we needed
data1 <- data %>%
  select(sex, agegr10, noc1610, srh_115, ttlincg2, uhw_16gr) %>%
  filter(agegr10 != 96 ) %>%
  filter(agegr10 != 97 ) %>%
  filter(agegr10 != 98 ) %>%
  filter(agegr10 != 99) %>%
  filter(sex != 6 ) %>%
  filter(sex != 7 ) %>%
  filter(sex != 8 ) %>%
  filter(sex != 9)  %>%
  filter(noc1610 != 95 ) %>%
  filter(noc1610 != 96 ) %>%
  filter(noc1610 != 97 ) %>%
  filter(noc1610 != 98 ) %>%
  filter(noc1610 != 99 ) %>%
  filter(srh_115 != 6 ) %>%
  filter(srh_115 != 7 ) %>%
  filter(srh_115 != 8 ) %>%
  filter(srh_115 != 9) %>%
  filter(ttlincg2 !=  96 ) %>%
  filter(ttlincg2 !=  97 ) %>%
  filter(ttlincg2 !=  98 ) %>%
  filter(ttlincg2 !=  99 ) %>%
  filter(uhw_16gr != 6 ) %>%
  filter(uhw_16gr != 7 ) %>%
  filter(uhw_16gr != 8 ) %>%
  filter(uhw_16gr != 9 )

colnames(data1) = c("sex",
                    "Age_group",
                    "Occupation",
                    "Self_rated_mental_health",
                    "Income_of_respondent",
                    "Average_number_of_hours_worked_per_week"
)

#check if there are any missing values
which(is.na(data1))
