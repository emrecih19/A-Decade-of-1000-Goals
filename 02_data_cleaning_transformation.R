# Script: Data Cleaning & Transformation
# Description: Filter data by top 5 leagues, assign seasons, and compute total goals.

# Filter to top 5 leagues and assign seasons
total_goals_per_season <- games_data %>%
  filter(competition_id %in% c("ES1", "FR1", "IT1", "GB1", "L1")) %>%
  mutate(season = case_when(
    date >= as.Date("2013-08-01") & date <= as.Date("2014-05-31") ~ "2013/2014",
    date >= as.Date("2014-08-01") & date <= as.Date("2015-05-31") ~ "2014/2015",
    date >= as.Date("2015-08-01") & date <= as.Date("2016-05-31") ~ "2015/2016",
    date >= as.Date("2016-08-01") & date <= as.Date("2017-05-31") ~ "2016/2017",
    date >= as.Date("2017-08-01") & date <= as.Date("2018-05-31") ~ "2017/2018",
    date >= as.Date("2018-08-01") & date <= as.Date("2019-05-31") ~ "2018/2019",
    date >= as.Date("2019-08-01") & date <= as.Date("2020-08-01") ~ "2019/2020",
    date >= as.Date("2020-08-01") & date <= as.Date("2021-05-31") ~ "2020/2021",
    date >= as.Date("2021-08-01") & date <= as.Date("2022-05-31") ~ "2021/2022",
    date >= as.Date("2022-08-01") & date <= as.Date("2023-05-31") ~ "2022/2023",
    date >= as.Date("2023-08-01") & date <= as.Date("2024-05-31") ~ "2023/2024"
  )) %>%
  group_by(season, competition_id) %>%
  summarise(
    total_goals = sum(home_club_goals + away_club_goals, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  filter(!is.na(season) & !is.na(competition_id))

# Manually adjust Ligue 1’s 2019/20 season due to COVID-shortened season
total_goals_per_season <- total_goals_per_season %>%
  mutate(total_goals = ifelse(season == "2019/2020" & competition_id == "FR1", 955, total_goals))

# Save to CSV
write.csv(
  total_goals_per_season,
  "data/total_goals_per_season.csv",
  row.names = FALSE
)
