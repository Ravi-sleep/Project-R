# mtcars Visualization with ggplot2

This R script demonstrates five common types of data visualizations using the built-in `mtcars` dataset and the `ggplot2` package.

## Requirements

- R (version 3.6 or later recommended)
- `ggplot2` package

The script installs `ggplot2` automatically if it isn't already present:

```r
install.packages("ggplot2")
library(ggplot2)
```

## Dataset

Uses R's built-in `mtcars` dataset, which contains fuel consumption and 10 other design/performance measurements for 32 automobiles (1973–74 models).

Key columns used:
| Column | Description |
|--------|-------------|
| `mpg`  | Miles per gallon |
| `wt`   | Weight (1000 lbs) |
| `cyl`  | Number of cylinders |

## Visualizations Included

### 1. Scatter Plot — Weight vs MPG
Shows the relationship between a car's weight and its fuel efficiency.
- Geometry: `geom_point`
- Insight: Heavier cars tend to have lower MPG.

### 2. Bar Chart — Number of Cars by Cylinders
Counts how many cars fall into each cylinder category (4, 6, 8).
- Geometry: `geom_bar`
- Insight: Distribution of engine sizes in the dataset.

### 3. Histogram — Distribution of MPG
Shows the frequency distribution of fuel efficiency values across all cars.
- Geometry: `geom_histogram` (bin width = 2)
- Insight: Reveals the overall spread and shape of MPG values.

### 4. Box Plot — MPG Distribution by Cylinders
Compares MPG spread and median across different cylinder groups.
- Geometry: `geom_boxplot`
- Insight: Cars with fewer cylinders generally have higher and more variable MPG.

### 5. Line Graph — MPG by Car Index
Plots MPG values in the order cars appear in the dataset, connected by a line.
- Geometry: `geom_line` + `geom_point`
- Note: Adds a helper column `order` (1 to 32) as a proxy x-axis since `mtcars` has no natural sequential/time variable.
- Insight: Useful mainly to see point-to-point variation; there's no inherent time or category structure to `mtcars` row order, so treat this chart as illustrative rather than analytically meaningful.

## How to Run

1. Open the script in RStudio or any R environment.
2. Run it top to bottom (or execute each numbered section individually).
3. Each `ggplot()` call will render its own plot — in RStudio these appear one at a time in the **Plots** pane; in a script run via `Rscript`, use `ggsave()` if you want each plot saved to a file instead of just displayed.

### Optional: Save Plots to Files
To export each chart as an image, assign it to a variable and use `ggsave()`, e.g.:

```r
p1 <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Scatter Plot: Weight vs MPG", x = "Weight", y = "Miles Per Gallon") +
  theme_minimal()

ggsave("scatter_weight_vs_mpg.png", plot = p1, width = 6, height = 4)
```

Repeat this pattern for each of the five plots, using a different filename each time.

## Notes

- All plots use `theme_minimal()` for a clean, uncluttered look.
- Colors and bin widths are manually chosen for readability and can be adjusted to taste.
- The `order` column added in step 5 is not part of the original `mtcars` dataset — it's created solely to support the line graph.
