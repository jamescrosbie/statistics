# Mixed Effects Models

A Quarto document explaining mixed effects (hierarchical/multilevel) models: why they're needed, how fixed and random effects work, and how they compare to naive linear regression when data is correlated or grouped.

## Contents

- [MEM.qmd](MEM.qmd) — the source document, covering:
  - **Fixed effects** — illustrated with a simulated hospital dataset showing Simpson's paradox (the pooled trend reverses the within-group trend).
  - **Random effects** — repeated-measures blood pressure example, and the risk of confounding (pseudoreplication).
  - **Worked example** — a 4-person weight-loss study comparing a naive `lm()` model against `lmerTest::lmer()` random-intercept and random-intercept-random-slope models, with the underlying math for why ignoring repeated measures inflates Type II error.
- [MEM.html](MEM.html) — rendered output of the above.
- [make_data.R](make_data.R) — generates `strength_data.csv`, a simulated dataset (subjects, age, strength) for further mixed-model experimentation.
- [strength_data.csv](strength_data.csv) — sample dataset produced by `make_data.R`.
- [img/](img/) — figures embedded in the document.

## Requirements

Built with [Quarto](https://quarto.org/) and R. Package versions are pinned via [renv](https://rstudio.github.io/renv/) (see `renv.lock`).

Key R packages: `tidyverse` (`dplyr`, `ggplot2`, `tidyr`, `tibble`), `lmerTest`, `broom`, `broom.mixed`, `scales`.

## Usage

Restore the R environment, then render the document:

```r
renv::restore()
```

```sh
quarto render MEM.qmd
```
