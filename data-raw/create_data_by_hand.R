# Creating an expanded dataset
Education <- data.frame(
  GPA = c(2.3, 1.5, 3.2, 2.1, 1.8, 2.4, 1.9, 3.1, 2.6, 2.0, 2.5, 1.6, 3.3, 2.2, 1.7, 2.7, 1.8, 3.2, 2.7, 2.1,
        2.4, 1.4, 3.4, 2.3, 1.9, 2.5, 1.9, 3.0, 2.5, 2.2),
  levelA = c(1.1, 0.7, 1.3, 1.2, 0.9, 1.5, 1.0, 1.4, 1.6, 1.1, 1.2, 0.8, 1.4, 1.3, 1.0, 1.5, 1.1, 1.4, 1.5, 1.2,
        1.3, 0.9, 1.5, 1.1, 1.0, 1.2, 1.0, 1.3, 1.6, 1.1),
  ED = c(0.5, 0.6, 0.7, 0.4, 0.9, 0.3, 0.8, 0.5, 0.6, 0.7, 0.6, 0.5, 0.7, 0.4, 0.8, 0.3, 0.7, 0.5, 0.6, 0.8,
        0.4, 0.7, 0.3, 0.5, 0.9, 0.4, 0.8, 0.3, 0.6, 0.7),
  ACT = c(3.0, 2.5, 3.5, 2.8, 3.1, 2.9, 3.2, 3.6, 2.7, 3.3, 3.4, 2.6, 3.6, 2.9, 3.2, 3.0, 3.1, 3.5, 2.8, 3.4,
        3.1, 2.7, 3.5, 2.9, 3.2, 3.0, 3.3, 3.6, 2.7, 3.2),
  response = as.factor(rep(c(1, 0), 15))
)

# Viewing the first few rows of the dataset
head(Education)

usethis::use_data(Education, compress = 'xz')

# Creating a synthetic EPL season score dataset with real team names
EPL <- data.frame(
  team = c("Manchester United", "Liverpool", "Manchester City", "Chelsea",
           "Arsenal", "Tottenham", "Everton", "Leeds United",
           "Leicester City", "Wolverhampton", "Southampton", "Newcastle United",
           "West Ham United", "Aston Villa", "Brighton", "Burnley",
           "Crystal Palace", "Fulham", "Norwich City", "Watford"),
  points = sample(30:90, 20, replace = TRUE),  # Random points between 30 and 90
  goals_scored = sample(20:70, 20, replace = TRUE),  # Random goals scored between 20 and 70
  goals_conceded = sample(25:65, 20, replace = TRUE),  # Random goals conceded between 25 and 65
  top_half = as.factor(ifelse(rank(-sample(30:90, 20, replace = TRUE)) <= 10, 1, 0))  # Top 10 teams as top half
)

head(EPL)
usethis::use_data(EPL, compress = 'xz')
