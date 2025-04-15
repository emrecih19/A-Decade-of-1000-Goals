# Script: Visualization
# Description: Create bar chart of total goals per league per season

ggplot(total_goals_per_season, aes(x = season, y = total_goals, fill = competition_id)) +
  geom_bar(stat = "identity", position = "dodge") + 
  geom_text(aes(label = competition_id), position = position_dodge(width = 0.8), vjust = -0.5, size = 3) +
  geom_smooth(aes(group = 1), method = "loess", color = "black", size = 1) +
  labs(
    title = "Total Goals Scored Each Season (2013/14 to 2023/24) - Top Leagues", 
    x = "Season", 
    y = "Total Goals"
  ) +
  theme_minimal() +
  scale_fill_manual(
    name = "League",
    values = c(
      "ES1" = "#dc3636",
      "FR1" = "#5377a7",
      "GB1" = "#e9cc40",
      "IT1" = "#5f9a56",
      "L1" = "#021d62"
    )
  ) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
