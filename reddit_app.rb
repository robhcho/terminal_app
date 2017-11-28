require "unirest"

response = Unirest.get("https://www.reddit.com/r/ProGolf/.json")
# subreddit_data = response.body
# p subreddit_data

# p "Please enter the number of the post you would like to view"
# i = gets.chomp.to_i

# i = 0

# title_of_post = subreddit_data["data"]["children"][i]["data"]["title"]
# p title_of_post

# comments = subreddit_data['data']['children'][i]['data']['permalink']
# p comments

articles = response.body["data"]["children"]

articles.each do | article |
  p article["data"]["title"]
end