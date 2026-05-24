
print(master_tibble)
#  master table ke tidy long-format data structure e convert korlam
master_long <- master_tibble %>%
  pivot_longer(
    cols = starts_with("Gene"),  #  Gene A, Gene B, Gene C ke target kore
    names_to = "Gene_ID",        # Notun Column
    values_to = "Expression"     # Actual no ke expression e column e niye jai
  )

print(master_long)
