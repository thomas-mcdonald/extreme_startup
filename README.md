Welcome
=======
This is Extreme Startup. This software supports a workshop where teams can compete to build a software product that satisfies market demand.

NB don't show the players the code for this project until after the workshop as otherwise they can cheat.

Getting started
---------------
* Install Ruby 2.3.3. Instructions can be found on the ruby-lang [website](https://www.ruby-lang.org/en/documentation/installation/).

* Install dependencies:

````
cd ../<extreme startup dir>
gem install bundler
bundle install
````

* Start the game server

````
bundle exec ruby web_server.rb
````

* Or the docker way

````
#The first time
docker build -t extreme_startup .
docker run -p 3000:3000 extreme_startup
````
and for warmup round
````
docker run -p 3000:3000 -e WARMUP=1 extreme_startup
````

For more information on How to manage docker read [Docker user guide](https://docs.docker.com/userguide/)

Notes for facilitators
----------------------

* Run the server on your machine. It's a Sinatra app that by default runs on port 3000.
* Everyone needs a computer connected to the same network, so that they can communicate. Check that everyone can see the leaderboard page served by the webapp running on your machine. Depending on the situation, we have used a local/ad-hoc network and that is ok for the game.
* We have had trouble with things like firewalls, especially on some Windows laptops, so if there are problems, make sure you can ping clients from the server and vice versa.

* Warmup round: run the web server with the `WARMUP` environment variable set (note that the result of running with `WARMUP=0` is undefined):

````
$ WARMUP=1 ruby web_server.rb
````

* In the warmup round, just make sure that everyone has something technologically working, you just get the same request repeatedly. @bodil has provided some [nice sample players in different languages](https://github.com/steria/extreme_startup_servers).

* Real game: revert to using the full QuizMaster, and restart the server. This will clear any registered players, but that's ok.
* As the game progresses, you can introduce new question types by moving to the next round. Visit /controlpanel and press the "Advance round" button. Do this when you feel like some of the teams are making good progress in the current round. Typically we've found this to be about every 10 mins. But you can go faster/slower as you like. There are 6 rounds available.
* In case you want to 'stop the world' and reflect with the players
  during the game, you can use the "Pause Game" button in /controlpanel.
* Set a time limit so you know when to stop the game, declare the winner, and retrospect.


-- Robert Chatley and Matt Wynne 2011.

People Who've Run Extreme Startup Sessions
------------------------------------------

* http://chatley.com/posts/05-27-2011/extreme-startup/
* http://johannesbrodwall.com/2011/06/22/real-time-coding-competition-with-extreme-startup/
* http://www.nilswloka.com/2011/08/17/code-dojo-extreme.html
* http://blog.xebia.fr/2012/07/19/extreme-startup-chez-xebia/
* https://blog.codecentric.de/en/2015/06/extreme-startup-at-codecentric/

If you run this workshop, please write it up on the internet and send us a link to add to this list.
