#Esercizio 3
#usethis::create_package("~/Desktop/MatrixConverter")

#' Conversione matrice
#'
#' @param input_file File in entrata
#' @param output_file File in uscita
#' @export
#'
matrix_conversion <- function(input_file, output_file) {
  mat_sparse <- Matrix::readMM(input_file)
  mat_dense <- as.matrix(mat_sparse)
  write.csv(mat_dense, file = output_file, row.names = TRUE)
  return(dim(mat_dense))
}
