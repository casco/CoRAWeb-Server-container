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

# Configuration
To configure the database go to http://localhost:8888/admin - database configuration should be self explanatory.

# REST API
The rest Api is available at http://localhost:8080/ . For now there are only two methods

## items
A get request to /items will return the JSON list of __all__ items in the repository.
You can try it with curl executing:
```
curl -H "Accept: application/json" http://localhost:8080/items
```
If you want to paginate thourgh the results use the limit (how many) and offset (starting on) parameters:

```
curl -H "Accept: application/json" http://localhost:8080/items\?offset\=1&limit\=10
```

To submit a new item make a post request to the same URL. Use the userid parameter to identify the submitting user (that should exist - see section users below). Use the request body to submit the item in JSON format.
The fields type, url, and groups are mandatory. Groups is a list of the groups that will be allowed to retrieve this item (however is does not check now)

```
curl -H "Content-Type: application/json" -X POST -d \
'{
    "type": "http://schema.org/VideoObject",
    "url": "https://www.youtube.com/watch?v=Jev2Um-4_TQ",
    "groups": [
      "public"
    ],
    "title": "Tim Berners-Lee (M.I.T.), father of the World Wide Web...",
    "description": "From Wikipedia: Sir Timothy \"Tim\" John Berners-Lee (born June 8, 1955 in London) is the inventor of the World Wide Web and director of the World Wide Web Consortium, which oversees its continued development. Informally, in technical circles, he is sometimes called \"TimBL\" or \"TBL\"."
}' \
http://localhost:8080/items\?userid=juan@gmail.com
```
## users
A get request to /users will return the JSON list of __all__ users in the repository. It is not possible to paginate (for now).

You can try it with curl executing:
```
curl -H "Accept: application/json" http://localhost:8080/users
```

To create or update a user make a POST request to the same URL. The userid is mandatory. If the useid exists, the POST will update the existing user.

You can try it with curl executing:
```
curl -H "Content-Type: application/json" -X POST -d \
'{
  "userid": "juana@gmail.com",
  "groups": ["lifia", "unlp"],
  "username": "Juana José de los Palotes"
}' \
http://localhost:8080/users
```
##templates
A get request to /templates will return the JSON list of __all__ templates in the repository.
You can try it with curl executing:
```
curl -H "Accept: application/json" http://localhost:8080/templates
```

To get the templates that match a given URL, provide the url as a parameter.

You can try it with curl executing:
```
curl -H "Accept: application/json" http://localhost:8080/templates\?url=https://www.youtube.com/watch?v=tFN1jZmU_Q8
```

To submit or update a template make a post request to the same URL. Use the userid parameter to identify the submitting user (that should exist - see section users below). Use the request body to submit the item in JSON format.
groups, item-type, and url-pattern mandatory fields.  Groups is a list of the groups that will be allowed to retrieve this template (however is does not check now). url-pattern is treated as a regular expression to match URLs. __name__ is used as a key to identify existing template and update them. The rest of the fields are xPath expressions to extract item properties. As many as you want.

```
curl -H "Content-Type: application/json" -X POST -d \
'{
  "name": "Youtube videos",
  "groups": [
    "public"
  ],
  "item-type": "http://schema.org/VideoObject",
  "url-pattern": "https://www.youtube.com/watch.*",
  "title": "//span[@id=\"eow-title\"]/text()",
  "description": "//p[@id=\"eow-description\"]/text()"
}' \
http://localhost:8080/templates\?userid=juan@gmail.com

```
