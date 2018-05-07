context("minimal package functionality")
test_that("we can do something", {

  expect_that(randquote(), is_a("data.frame"))

})
