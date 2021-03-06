.lynx_en <- function(lynx, labels_only = FALSE, as_labelled = FALSE) {
  lynx <- as_tsibble(lynx)
  names(lynx) <- c("time", "trapping" )

  comment(lynx) <- c(
    "Jeu de données 'lynx' de 'datasets', traduit en 'dataframe'")

  lynx <- labelise(lynx, self = FALSE,
    label = list(
      time = "Time",
      trapping = "Lynx capturés"),
    units = list(
      time = NA,
      trapping = NA),
    as_labelled = as_labelled)

  #if (!isTRUE(labels_only)) {
  # Nothing to do!
  #}

  lynx
}