== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

** See all scores
HTTP GET
http://quiz-app.herokuapp.com/api/1/scores/

Example response:
```json
{
    "response": [
        {
            "id": 1,
            "name": "David",
            "points": 1000,
            "created_at": "2013-10-14T01:57:22.610Z",
            "updated_at": "2013-10-14T01:57:22.610Z"
        },
        {
            "id": 2,
            "name": "David",
            "points": 1000,
            "created_at": "2013-10-14T03:29:12.812Z",
            "updated_at": "2013-10-14T03:29:12.812Z"
        }
    ],
    "count": 2
}
```

** Create a score
HTTP POST
http://quiz-app.herokuapp.com/api/1/scores/
Content-Type: application/json

Example request:
```json
{
    "score": {
        "points": 1000,
        "name": "David"
    }
}
```

Example response:
```json
{
    "response": {
        "id": 3,
        "name": "David",
        "points": 1000,
        "created_at": "2013-10-14T03:40:18.981Z",
        "updated_at": "2013-10-14T03:40:18.981Z"
    }
}
```

** Update a score