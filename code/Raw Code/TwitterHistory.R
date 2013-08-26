require(twitteR)
require(markdown)
require(lubridate)
require(knitr)
require(plyr)
require(reshape2)

# load package twitteR
library(twitteR)

consumer_key <- "QWC5qPfawTebHMuelCQ"
consumer_secret <- "R6KofepC9RIPzpbLdQhJl8OtbZxKa8lBCLzaLTbuTw"

# Register the OAuth access tokens

reqURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "http://api.twitter.com/oauth/access_token"
authURL <- "http://api.twitter.com/oauth/authorize"

twitCred <- OAuthFactory$new(consumerKey=consumer_key,
                             consumerSecret=consumer_secret,
                             requestURL=reqURL,
                             accessURL=accessURL,
                             authURL=authURL)
twitCred$handshake()
registerTwitterOAuth(twitCred)


# Search tweets with '#datamining'
dmhash_tweets = searchTwitter("#datamining")
