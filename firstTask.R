setwd("C:\\Proteomics")


fix_column <- function(column){
  fixed_column <- sub(' ', '', column)
  fixed_column <- as.numeric(fixed_column)
  if(any(is.na(fixed_column))){
    return(column)
  }else{
  return(fixed_column)
  }
}

fix_data <- function(df){
  fixed_df <- lapply(df, fix_column)
  return(data.frame(fixed_df))
}

df <- read.csv(file = "data\\lab1_e1.csv")
fixed_df <- fix_data(df)
print(fixed_df)
