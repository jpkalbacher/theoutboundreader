
# The Outbound Reader

The Outbound Reader is an rss reader for The Outbound Collective.

Users can favorite and unfavorite articles, and view their favorite articles
under "favorites".

The Outbound Reader is updated daily using Heroku's scheduler – running the sync:articles rake task.


### More to add 
-[ ] pagination to cut down on load time as article count grows
-[ ] ability to add additional feeds (see "feeds" model)
