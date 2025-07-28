#' Allrecipes Recipe Dataset.
#'
#' A dataset of recipes scraped from Allrecipes.com, containing ingredients, cooking times, nutrition facts, ratings, and review counts. The data has been parsed and cleaned to ensure analysis-readiness.
#'
#' @format A data frame with 14420 rows and 16 variables:
#' \describe{
#'   \item{name}{Name of the recipe}
#'   \item{url}{Link to the recipe}
#'   \item{author}{Author of the recipe}
#'   \item{date_published}{When the recipe was published/updated}
#'   \item{ingredients}{The ingredients of the recipe}
#'   \item{calories}{Calories per serving}
#'   \item{fat}{Fat per serving}
#'   \item{carbs}{carbs per serving}
#'   \item{protein}{Proteins per serving}
#'   \item{avg_rating}{Average rating out of 5 stars}
#'   \item{n_ratings}{Number of ratings received}
#'   \item{n_reviews}{Number of written reviews}
#'   \item{prep_time}{Preparation time in minutes}
#'   \item{cook_time}{Cooking time in minutes}
#'   \item{total_time}{Prep + cook time in minutes.Note that this value may not always match the actual total effort required, as other time-related fields (such as refrigeration, marination, fry time, or additional wait periods) have been excluded due to inconsistent availability across recipes}
#'   \item{servings}{Number of servings}
#' }
"allrecipes"
