## code to prepare `allrecipes` dataset goes here
library(readr)

ct <- cols(
  name = col_character(),
  url = col_character(),
  author = col_character(),
  date_published = col_date(format = ""),
  ingredients = col_character(),
  calories = col_double(),
  fat = col_double(),
  carbs = col_double(),
  protein = col_double(),
  avg_rating = col_double(),
  total_ratings = col_double(),
  reviews = col_double(),
  prep_time = col_double(),
  cook_time = col_double(),
  total_time = col_double(),
  servings = col_double()
)

allrecipes <- readr::read_csv("data-raw/allrecipes.csv",
                              col_types = ct)

usethis::use_data(allrecipes, overwrite = TRUE)

vars <- c("name" = "Name of the recipe",
  "url" = "Link to the recipe",
  "author" = "Author of the recipe",
  "date_published" = "When the recipe was published/updated",
  "ingredients" = "The ingredients of the recipe",
  "calories" = "Calories per serving",
  "fat" = "Fat per serving",
  "carbs" = "carbs per serving",
  "protein" = "Proteins per serving",
  "avg_rating" = "Average rating out of 5 stars",
  "total_ratings" = "Number of ratings received",
  "reviews" = "Number of written reviews",
  "prep_time" = "Preparation time in minutes",
  "cook_time" = "Cooking time in minutes",
  "total_time" = "Prep + cook time in minutes.Note that this value may not always match the actual total effort required, as other time-related fields (such as refrigeration, marination, fry time, or additional wait periods) have been excluded due to inconsistent availability across recipes",
  "servings" = "Number of servings"
  )

glue::glue("#'   \\item{[colname]}{[coldesc]}",
           colname = names(vars),
           coldesc = vars,
           .open = "[",
           .close = "]")

