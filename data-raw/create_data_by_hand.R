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