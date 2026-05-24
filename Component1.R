# First e CSV file load Korlam
raw_expression <- read.csv("raw_expression_matrix.csv")
raw_metadata   <- read.csv("raw_clinical_metadata.csv")
#Library Namalam
library(tidyverse)

clean_data <- raw_metadata %>%
  mutate(
    join_id = Patient_ID,
    # 52 and 67 ke thik korlam
    Age_clean = str_replace(Age, "fifty-two", "52"),
    Age_clean = str_replace(Age, "sixty-seven","67"),
    Age_numeric = as.numeric(Age_clean)
  ) %>%
  #  'condition' to 'Condition' Capital C diye
  filter(!is.na(Condition)) %>%
  filter(Condition != "")
#Finally join kore master tribble banalam
master_tibble <- clean_data %>%
  inner_join(clean_data, by = "join_id")

print(master_tibble)
