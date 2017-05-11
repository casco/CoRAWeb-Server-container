This server is packaged as a Docker container.
To get it running, you first need to install Docker in your machine, then clone this project.

There are four utility shell scripts to get you started fast:

* build.sh will create the virtual machine image (run it first of all, only once)
* run-once.sh will do some additional work to get your server ready (run it only once) - wait for the server to start for the first time (until you see something when you go to http://localhost:8888/admin) and then kill the process with crtl+C.
* start.sh starts the server
* stop.sh stops the server

The list of items in the repository is available at http://localhost:8888/items

The first time you try to access it, you'll see that it has problems connecting to the mongodb database. That is because there is no database available yet. You have two options:
a) in memory persistence, b) use a mongodb database on your machine

#Configuration
To configure the database go to http://localhost:8888/admin - database configuration should be self explanatory. 


