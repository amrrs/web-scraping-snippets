library(rvest)
library(tidyverse)

url = 'https://en.wikipedia.org/wiki/Languages_of_India'

html_content = read_html(url)

tables = html_table(html_content, fill = TRUE)

df = tables[[3]]

#make languages chart

df %>%
  ggplot() + geom_col(aes(x = Language,y = `First languagespeakers[44]`))
