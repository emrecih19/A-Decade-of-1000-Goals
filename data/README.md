# Data Overview

This folder describes the dataset used in the project "A Decade of Goals".

---

## Dataset Source

- **Name:** Football Data from Transfermarkt
- **Author:** David Cariboo  
- **Link:** [Kaggle Dataset – Player Scores](https://www.kaggle.com/datasets/davidcariboo/player-scores)

This dataset contains match-level and player-level data for the top 5 European football leagues between 2000 and 2024, including:

- Match dates  
- Home and away goals  
- League identifiers (e.g., `GB1`, `ES1`, etc.)  
- Player stats

---

## Used Files & Format

I used the following file from the dataset:

- `tm_football_data-games.csv`

### Relevant Columns:
- `date`  
- `home_club_goals`  
- `away_club_goals`  
- `competition_id`

These columns were used to compute:
- Total goals per season  
- Goals-per-game trends by league and year

---

## Preprocessing Notes

- Filtered games between 2013/2014 and 2023/2024  
- Calculated total goals as: `home_club_goals + away_club_goals`  
- Mapped match dates to corresponding seasons  
- Cleaned missing values and adjusted the 2019/2020 Ligue 1 season (shortened due to COVID-19)

---

## Data Access

To use this dataset in your own analysis:
1. Sign in to [Kaggle](https://kaggle.com/)
2. Navigate to the dataset page [here](https://www.kaggle.com/datasets/davidcariboo/player-scores)
3. Download the whole dataset and extract only `tm_football_data-games.csv`

---

## License

This dataset is made available under the [Creative Commons CC0 1.0 Universal (Public Domain Dedication)](https://creativecommons.org/publicdomain/zero/1.0/).  
You are free to use, modify, and distribute it without restriction.
