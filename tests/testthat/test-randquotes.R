context("Minimal Unit Testing")
test_that("the function returns a dataframe", {

  expect_that(randquote(), is_a("data.frame"))

})
