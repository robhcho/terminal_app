require "unirest"

response = Unirest.get("https://www.reddit.com/r/movies/.json")
reddit_data = response.body
# p reddit_data

comments = 