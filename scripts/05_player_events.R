# Author: Emre Cihangir
# Project: A Decade of 1000 Goals
# Script: Player Events Dataset
# Description: Major player transfers/events for each top-5 European league (2013–2024)
# Date: April 2025

# --- Ligue 1 Player Events ---
ligue_1_player_events <- data.frame(
  Event = c(
    "Cavani joins", "Mbappe makes debut", "Ibrahimovic leaves", "Lacazette leaves, Neymar joins",
    "Cavani leaves", "Messi joins", "Lacazette joins", "Messi and Neymar leave"
  ),
  Season = c(
    "2013/2014", "2015/2016", "2016/2017", "2017/2018",
    "2020/2021", "2021/2022", "2022/2023", "2023/2024"
  ),
  Description = c(
    "Cavani joins PSG",
    "Mbappe makes debut for Monaco",
    "Ibrahimovic leaves PSG",
    "Lacazette leaves Lyon, Neymar joins PSG",
    "Cavani leaves PSG",
    "Messi joins PSG",
    "Lacazette joins Lyon",
    "Messi and Neymar leave PSG"
  ),
  Color = c("green", "blue", "red", "red", "red", "green", "green", "red")
)

# --- Bundesliga Player Events ---
bundesliga_data <- data.frame(
  Event = c(
    "Pierre A. joins", "De Bruyne leaves", "Sancho joins", "Pierre A. and Sancho leave",
    "Haaland joins", "Haaland and Lewandowski leave", "Harry Kane joins"
  ),
  Season = c(
    "2013/2014", "2015/2016", "2017/2018", "2021/2022",
    "2020/2021", "2022/2023", "2023/2024"
  ),
  Description = c(
    "Aubameyang joins Dortmund",
    "De Bruyne leaves Wolfsburg",
    "Sancho joins Dortmund",
    "Aubameyang and Sancho leave Dortmund",
    "Haaland joins Dortmund",
    "Haaland leaves Dortmund, Lewandowski leaves Bayern",
    "Harry Kane joins Bayern Munich"
  ),
  Color = c("green", "red", "green", "red", "green", "red", "green")
)

# --- Serie A Player Events ---
serie_a_player_events <- data.frame(
  Event = c(
    "Mertens and Higuain join", "Dzeko joins", "Immobile joins", "Ronaldo and Lautaro join",
    "Icardi and Higuain leave", "Osimhen joins", "Ronaldo leaves", "Mertens leaves", "Dzeko leaves"
  ),
  Season = c(
    "2013/2014", "2015/2016", "2016/2017", "2018/2019",
    "2019/2020", "2020/2021", "2021/2022", "2022/2023", "2023/2024"
  ),
  Description = c(
    "Mertens and Higuain join Napoli",
    "Dzeko joins Roma",
    "Immobile joins Lazio",
    "Ronaldo joins Juventus and Lautaro joins Inter",
    "Icardi leaves Inter and Higuain leaves Milan",
    "Osimhen joins Napoli",
    "Ronaldo leaves Juventus",
    "Mertens leaves Napoli",
    "Dzeko leaves Inter"
  ),
  Color = c("green", "green", "green", "green", "red", "green", "red", "red", "red")
)

# --- La Liga Player Events ---
la_liga_events <- data.frame(
  Event = c(
    "Neymar joins", "Suarez joins", "Neymar leaves",
    "Ronaldo leaves", "Messi leaves", "Lewandowski joins",
    "Suarez and Benzema leave"
  ),
  Season = c(
    "2013/2014", "2014/2015", "2017/2018",
    "2018/2019", "2021/2022", "2022/2023", "2023/2024"
  ),
  Description = c(
    "Neymar joins Barcelona",
    "Luis Suarez joins Barcelona",
    "Neymar leaves Barcelona",
    "Cristiano Ronaldo leaves Real Madrid",
    "Lionel Messi leaves Barcelona",
    "Lewandowski joins Barcelona",
    "Luis Suarez leaves Atletico Madrid, Benzema leaves Real Madrid"
  ),
  Color = c("green", "green", "red", "red", "red", "green", "red")
)

# --- Premier League Player Events ---
premier_league_events <- data.frame(
  Event = c(
    "Mesut Ozil joins", "Luis Suarez leaves", "Kevin De Bruyne joins",
    "Sadio Mane joins", "Mohamed Salah joins", "Aguero and Ozil leave",
    "Haaland joins and Mane leaves", "Harry Kane leaves"
  ),
  Season = c(
    "2013/2014", "2014/2015", "2015/2016",
    "2016/2017", "2017/2018", "2021/2022",
    "2022/2023", "2023/2024"
  ),
  Description = c(
    "Mesut Ozil joins Arsenal",
    "Luis Suarez leaves Liverpool",
    "Kevin De Bruyne joins Man City",
    "Sadio Mane joins Liverpool",
    "Mohamed Salah joins Liverpool",
    "Aguero leaves Man City, Ozil leaves Arsenal",
    "Haaland joins Man City, Mane leaves Liverpool",
    "Harry Kane leaves Tottenham"
  ),
  Color = c("green", "red", "green", "green", "green", "red", "green", "red")
)
