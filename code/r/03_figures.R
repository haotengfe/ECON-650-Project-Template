# ============================================================
# File:     03_figures.R
# Purpose:  Figures.
# Inputs:   paths$derived/analysis_sample.rds
# Outputs:  paths$figures/*.png
# ============================================================

if (!exists("paths")) {
  root  <- getwd()
  paths <- list(derived = file.path(root, "data", "derived"),
                figures = file.path(root, "output", "figures"))
  library(data.table); library(ggplot2)
}

# dat <- readRDS(file.path(paths$derived, "analysis_sample.rds"))

theme_paper <- theme_minimal(base_size = 11) +
  theme(panel.grid.minor = element_blank(),
        plot.title = element_text(face = "bold"))

# --- Figure 1 -----------------------------------------------------------
# p1 <- ggplot(dat, aes(x = x, y = y)) +
#   geom_point(alpha = 0.4) +
#   geom_smooth(method = "lm", se = TRUE) +
#   labs(x = "X label", y = "Y label") +
#   theme_paper
# ggsave(file.path(paths$figures, "figure1.png"), p1,
#        width = 6, height = 4, dpi = 300)

# --- Figure 2 -----------------------------------------------------------
# ggsave(file.path(paths$figures, "figure2.png"), p2,
#        width = 6, height = 4, dpi = 300)
