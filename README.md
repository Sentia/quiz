Current API address: http://quiz-app.herokuapp.com/api/1/scores/

The Quiz application provides a JSON API. The API is versioned to provide backwards compatibility for older applications.

## Handling Errors

If the action has succeeded a HTTP status of `200 OK` or `201 Created` will be given. If there are any authorisation errors a `401 Unauthorized` will be the status. For validation errors or problems creating or updating a resource then a `422 Unprocessable Entity` will be given.

All error messages are formatted in JSON. You should first check for an `error_title` and `error_message` field in the JSON response, this is shown when there are errors that do not correspond to a specific resource field. If these two fields are not present then each item in the JSON errors hash will respond to a input field for the resource.

Version 1 of the API provides the following actions: (Please note that the bold parameters are required for each action).

* [View scores](#view-scores)
* [Create a score](#create-a-score)
* [Update a score](#update-a-score)

## <a name="view-scores" /> View scores

- URL: `/api/:version/scores`
- Method: `GET`
- Request Params: none
- Request Example: `/api/1/scores`

- Response Params:
  - score[id]: the unique identifier for the score
  - score[created_at]: the date the score was created
  - score[updated_at]: the date the score was last updated
  - score[name]: the name of the user who achieved the score
  - score[points]: the number of points achieved by the user

- Response Example:
```json
{
    "response": [
        {
            "id": 1,
            "name": "David",
            "points": 85,
            "created_at": "2013-10-14T01:57:22.610Z",
            "updated_at": "2013-10-14T01:57:22.610Z"
        },
        {
            "id": 2,
            "name": "David",
            "points": 85,
            "created_at": "2013-10-14T03:29:12.812Z",
            "updated_at": "2013-10-14T03:29:12.812Z"
        }
    ],
    "count": 2
}
```

## <a name="create-a-score" /> Create a score

- URL: `/api/:version/scores`
- Method: `POST`
- Header: `Content-Type: application/json`
- Request Params:
  - score[name]: the name of the user who achieved the score
  - score[points]: the number of points achieved by the user
- Request Example: `/api/1/scores`
```json
{
    "score": {
        "points": 85,
        "name": "David"
    }
}
```

- Response Params:
  - score[id]: the unique identifier for the score
  - score[created_at]: the date the score was created
  - score[updated_at]: the date the score was last updated
  - score[name]: the name of the user who achieved the score
  - score[points]: the number of points achieved by the user

- Response Example:
```json
{
    "response": {
        "id": 3,
        "name": "David",
        "points": 85,
        "created_at": "2013-10-14T03:40:18.981Z",
        "updated_at": "2013-10-14T03:40:18.981Z"
    }
}
```

## <a name="update-a-score" /> Update a score
- URL: `/api/:version/scores/:id`
- Method: `PATCH/PUT`
- Header: `Content-Type: application/json`
- Request Params:
  - score[name]: the name of the user who achieved the score
  - score[points]: the number of points achieved by the user
- Request Example: `/api/1/scores/3`
```json
{
    "score": {
        "points": 85,
        "name": "David"
    }
}
```

- Response Params:
  - score[id]: the unique identifier for the score
  - score[created_at]: the date the score was created
  - score[updated_at]: the date the score was last updated
  - score[name]: the name of the user who achieved the score
  - score[points]: the number of points achieved by the user

- Response Example:
```json
{
    "response": {
        "id": 3,
        "name": "David",
        "points": 90,
        "created_at": "2013-10-14T03:40:18.981Z",
        "updated_at": "2013-10-14T05:58:54.886Z"
    }
}
```
