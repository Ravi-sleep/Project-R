# Install ggplot2 if not already installed
install.packages("ggplot2")

# Load library
library(ggplot2)

# Load dataset
data(mtcars)

# 1. Scatter Plot
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Scatter Plot: Weight vs MPG",
       x = "Weight", y = "Miles Per Gallon") +
  theme_minimal()

# 2. Bar Chart
ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(fill = "steelblue") +
  labs(title = "Number of Cars by Cylinders",
       x = "Cylinders", y = "Count") +
  theme_minimal()

# 3. Histogram
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 2, fill = "orange", color = "black") +
  labs(title = "Histogram of MPG",
       x = "Miles Per Gallon", y = "Frequency") +
  theme_minimal()

# 4. Box Plot
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "MPG Distribution by Cylinders",
       x = "Cylinders", y = "Miles Per Gallon") +
  theme_minimal()

# 5. Line Graph
mtcars$order <- 1:nrow(mtcars)

ggplot(mtcars, aes(x = order, y = mpg)) +
  geom_line(color = "red", linewidth = 1) +
  geom_point(color = "black") +
  labs(title = "Line Graph of MPG",
       x = "Car Index", y = "Miles Per Gallon") +
  theme_minimal()
