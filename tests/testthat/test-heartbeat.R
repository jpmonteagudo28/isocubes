


test_that("package is alive", {
  
  grob <- isocubesGrob(coords = data.frame(x = 0, y = 0, z = 0))
  
  expect_true(inherits(grob, 'polygon'))
  expect_true(inherits(grob, 'grob'))
  
  
  mat <- matrix(c(0, 1, 1, 0), 2, 2)
  coords <- coords_heightmap(mat)
  
  expect_true(inherits(coords, 'data.frame'))
  expect_equal(coords$x, c(1, 2))
  expect_equal(coords$z, c(1, 2))
  expect_equal(coords$y, c(1, 1))

})
