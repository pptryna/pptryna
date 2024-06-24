# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

bangun_datar <- function(bentuk, sisi) {
  if (bentuk == "persegi") {
    keliling <- 4 * sisi
    luas <- sisi^2
  } else if (bentuk == "persegi_panjang") {
    keliling <- 2 * (sisi[1] + sisi[2])
    luas <- sisi[1] * sisi[2]
  } else if (bentuk == "segitiga") {
    keliling <- sum(sisi)
    luas <- (sisi[1] * sisi[2]) / 2
  } else if (bentuk == "lingkaran") {
    keliling <- 2 * pi * sisi
    luas <- pi * sisi^2
  } else {
    stop("Bentuk yang dimasukkan tidak valid!")
  }
  return(data.frame(keliling = keliling, luas = luas))
}
