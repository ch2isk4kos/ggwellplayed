# GUIDELINE

## LANDING PAGE (root)

* [Login Button] (get)    ->  Login page
* [Signup Button] (get)   ->  Signup Page ("new" View Template)
* Displays image of games full screen

## LOGIN (get "/login")

* Username textfield
* Password textfield
* [LogIn Button] (post)   ->  Signs in & redirect to User Show Page

## SIGNUP (get "/signup")

* First & Last name textfield
* Password textfield
* Avatar url textfield
* Gamer Tag textfield
* Location textfield
* [Signup Button] (post)   ->  Creates new User & redirect to User Show Page

## USER SHOW PAGE (get "/users/:id")

* Avatar
* Gamer Tag in Bold
* Full Name below Gamer Tag
* 3-5 Latest Matchup History
 - [See More Button] (get) ->  User's Matchup Index

## USER MATCHUP INDEX

* All User's Matchup History

## GAME INDEX




#### *Game Stats Hack*
```
madden_stats = {
  touchdowns: 4,
  team: "Raiders"
}

# Turns it into STRING
madden_json = madden_stats.to_json # -> "{\"touchdowns\":4,\"team\":\"Raiders\"}"

@madden_game = Game.create(title: "Madden", stats: madden_json)

# Calling the stats from an instance
madden_stat_hash = JSON.parse(@madden_game.stats) # returns a hash
madden_stat_hash["touchdowns"] # -> 4
```
