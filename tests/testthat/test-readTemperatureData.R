library(testthat)

context("Reading GISS Surface Temperature data")

test_that("data is loaded into a tibble", {
  path <- "../../inst/temperatureData/ExcelFormattedGISTEMPData2CSV.csv"
  actualData <- readTemperatureData(path)

  expect_true(purrr::contains(class(actualData), "tbl"))
  expect_equal(actualData$Year[[1]], 1880)
})
