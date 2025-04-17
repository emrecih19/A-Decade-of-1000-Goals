# Author: Emre Cihangir
# Project: A Decade of 1000 Goals
# Script: Goals Per Game Dataset (Manual Data Entry)
# Description: Constructs total goal counts and calculates goals per game ratio across top 5 European leagues from 2013/14 to 2023/24.
# Date: April 2025

# --- Data for Spain ---
spain_data <- data.frame(
  season = c("2013/2014", "2014/2015", "2015/2016", "2016/2017", "2017/2018", 
             "2018/2019", "2019/2020", "2020/2021", "2021/2022", "2022/2023", 
             "2023/2024"),
  competition_id = "ES1",
  total_goals = c(1045, 1009, 1043, 1118, 1024, 983, 942, 953, 951, 955, 1005)
)

# --- Data for France ---
france_data <- data.frame(
  season = c("2013/2014", "2014/2015", "2015/2016", "2016/2017", "2017/2018", 
             "2018/2019", "2019/2020", "2020/2021", "2021/2022", "2022/2023", 
             "2023/2024"),
  competition_id = "FR1",
  total_goals = c(931, 947, 960, 991, 1033, 972, 920, 1049, 1067, 1067, 826)
)

# --- Data for Italy ---
italy_data <- data.frame(
  season = c("2013/2014", "2014/2015", "2015/2016", "2016/2017", "2017/2018", 
             "2018/2019", "2019/2020", "2020/2021", "2021/2022", "2022/2023", 
             "2023/2024"),
  competition_id = "IT1",
  total_goals = c(1035, 1024, 979, 1123, 1017, 1019, 1154, 1163, 1089, 974, 992)
)

# --- Data for England ---
england_data <- data.frame(
  season = c("2013/2014", "2014/2015", "2015/2016", "2016/2017", "2017/2018", 
             "2018/2019", "2019/2020", "2020/2021", "2021/2022", "2022/2023", 
             "2023/2024"),
  competition_id = "GB1",
  total_goals = c(1052, 975, 1026, 1064, 1018, 1072, 1034, 1024, 1071, 1084, 1246)
)

# --- Data for Germany ---
germany_data <- data.frame(
  season = c("2013/2014", "2014/2015", "2015/2016", "2016/2017", "2017/2018",
             "2018/2019", "2019/2020", "2020/2021", "2021/2022", "2022/2023",
             "2023/2024"),
  competition_id = "L1",
  total_goals = c(967, 843, 866, 877, 855, 973, 982, 928, 954, 970, 985)
)

# --- Function to calculate goals per game ---
calculate_goals_per_game <- function(data) {
  data$games <- ifelse(data$competition_id == "FR1" & data$season == "2023/2024", 306, 380)
  data$goals_per_game <- round(data$total_goals / data$games, 3)
  return(data)
}

# --- Apply calculation ---
spain_data <- calculate_goals_per_game(spain_data)
france_data <- calculate_goals_per_game(france_data)
italy_data <- calculate_goals_per_game(italy_data)
england_data <- calculate_goals_per_game(england_data)
germany_data <- calculate_goals_per_game(germany_data)

# --- Combine into single dataset ---
all_leagues_data <- rbind(
  spain_data,
  france_data,
  italy_data,
  england_data,
  germany_data
)

# --- (Optional) View or export ---
# View(all_leagues_data)
# write.csv(all_leagues_data, "data/goals_per_game_summary.csv", row.names = FALSE)
