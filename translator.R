translator <- function(origin, dictionary, wOrder = NA){
  # Translate the text accroding to the dictionary and word order
  #
  # Args:
  #   origin: A character vector to be translated.
  #   dict: This is a well-defined dictionary. It should be a list with sublists each 
  #         corresponds to a category of texts. In those sublists the 
  #         translations is defined.
  #     Example:
  #       dictionary <- list(
  #         sectionOne = listOne,
  #       sectionTwo = listTwo
  #       )
  #       listOne = list(
  #         entryOne = "foo",
  #         entryTwo = "bar"
  #       )
  #       listTwo = list(
  #         entryOne2 = "foo2",
  #         entryTwo2 = "bar2"
  #       )
  #   wOrder: This is a numeric vector specifying word order. It's useful for 
  #           analytic languages as it allow the word order of output being 
  #           different from the origin text.
  #     Example:
  #       "wordOrder <- c(2,1)" says that in the output section2 is place before
  #       section one. Therefore c("entryOne entryTwo2", "entryTwo entryOne2") 
  #       would be translated into c("bar2 foo", "foo2 bar").
  #
  # Returns:
  #   A object of same class as input, and translated
  #
  
  # A list of numeric vectors will be used for translation. Its values 
  # corresponds to the order of apperance in the section containing it.
  masks <- vector("list", length = length(dictionary))
  names(masks) <- names(dictionary)
  for (i in names(masks)) {
    masks[[i]] <- rep(0, times = length(origin))
  }
  
  # Loop over dictionaries on the character vector to be translated
  for (dict in names(dictionary)) {
    for (entry in names(dictionary[[dict]])) {
      masks[[dict]] <- masks[[dict]] + 
        grepl(entry, origin) * which(names(dictionary[[dict]]) == entry)
    }
  }

  # Construct the translated character vector
  output <- vector("character", length = length(origin))
  for (i in order(wOrder)) {
    output <- paste(output, sapply(masks[[i]], 
                                   function(x) (if (x!=0) dictionary[[i]][[x]] else (""))))
  }
  output <- trimws(output) # Remove leading/trailing whitespaces
  return(output)
}