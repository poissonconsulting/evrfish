# gdd works

    Code
      gdd
    Output
      # A tibble: 1 x 2
         year   gdd
        <int> <dbl>
      1  2019 3605.

# gsdd works t2

    Code
      gdd
    Output
      # A tibble: 1 x 2
         year   gdd
        <int> <dbl>
      1  2019   500

---

    Code
      gdd_all
    Output
      # A tibble: 1 x 2
         year   gdd
        <int> <dbl>
      1  2019  1300

# gdd returns NA for year when second season truncated

    Code
      gdd
    Output
      # A tibble: 1 x 2
         year   gdd
        <int> <dbl>
      1  2019    NA

