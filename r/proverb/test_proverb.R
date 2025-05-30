source("./proverb.R")
library(testthat)

test_that("Zero pieces", {
  wanted <- c()
  expected <- c()
  expect_equal(recite(wanted), expected)
})

test_that("One piece", {
  wanted <- c("nail")
  expected <- c("And all for the want of a nail.")
  expect_equal(recite(wanted), expected)
})

test_that("Two pieces", {
  wanted <- c("nail", "shoe")
  expected <-
    c(
      "For want of a nail the shoe was lost.",
      "And all for the want of a nail."
    )
  expect_equal(recite(wanted), expected)
})

test_that("Three pieces", {
  wanted <- c("nail", "shoe", "horse")
  expected <-
    c(
      "For want of a nail the shoe was lost.",
      "For want of a shoe the horse was lost.",
      "And all for the want of a nail."
    )
  expect_equal(recite(wanted), expected)
})

test_that("Full proverb", {
  wanted <- c("nail", "shoe", "horse", "rider", "message", "battle", "kingdom")
  expected <-
    c(
      "For want of a nail the shoe was lost.",
      "For want of a shoe the horse was lost.",
      "For want of a horse the rider was lost.",
      "For want of a rider the message was lost.",
      "For want of a message the battle was lost.",
      "For want of a battle the kingdom was lost.",
      "And all for the want of a nail."
    )
  expect_equal(recite(wanted), expected)
})

test_that("Four pieces modernized", {
  wanted <- c("pin", "gun", "soldier", "battle")
  expected <-
    c(
      "For want of a pin the gun was lost.",
      "For want of a gun the soldier was lost.",
      "For want of a soldier the battle was lost.",
      "And all for the want of a pin."
    )
  expect_equal(recite(wanted), expected)
})
