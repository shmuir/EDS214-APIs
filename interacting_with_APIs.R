library(httr)
library(purrr)

# Querying the the GitHub REST api
r <- GET("https://api.github.com/users/shmuir/repos")

# Extract the content from the response
my_repos_list <- content(r) 

# Extract what we want from the list
my_repos <- map_chr(my_repos_list, "full_name")

# Lists my repos
my_repos
