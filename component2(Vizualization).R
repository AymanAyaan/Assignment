ggplot(master_long, aes(x = Condition, y = Expression, fill = Condition)) +
  geom_boxplot(alpha = 0.5, outlier.shape = NA, width = 0.5) +
  
  geom_jitter(alpha = 0.6, width = 0.1, size = 2.5, aes(color = Condition)) +
  
  # 3.  We Separate the plot into 3 simultaneous sub-plots (Prottek Biomarker er jonno ekta)
  facet_wrap(~Gene_ID, scales = "free_y") +
  
  
  scale_fill_manual(values = c("Normal" = "#2A6F97", "Tumor" = "#D90429")) +
  scale_color_manual(values = c("Normal" = "#1A445C", "Tumor" = "#94031C")) +
  
  theme_bw(base_size = 14) +
  
  theme(
    legend.position = "none",                           
    strip.background = element_rect(fill = "gray95"),   
    strip.text = element_text(face = "bold", size = 12), 
    plot.title = element_text(face = "bold", hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5, size = 11)   
  ) +
  
  labs(
    title = "Comparative Biomarker Profiling across Clinical Cohorts",
    subtitle = "Faceted transcriptomic expression values for target diagnostics",
    x = "Clinical Assessment Cohort",
    y = "Normalised Expression Level"
  )
# The polishing part of this assignment was done with the help of AI. AI is only used for the
#polishing and decoration purpose