## Error Responses

Service APIs  should standardize on how error conditions are conveyed. Some error
responses could indicate problems with the server. Other responses could indicate validation
errors on a model or permissions restrictions.

### HTTP Status Codes

Service APIs should use some standard HTTP status codes:

- 400 Bad Request — Used as a general catchall for bad requests.
- 401 Unauthorized — Used when a resource is requested that requires authentication.
- 404 Not Found — Used when requesting a resource that the server doesn’t know about.
- 405 Method Not Allowed — Used when a client attempts to perform an operation
on a resource that it doesn’t support (for example, performing a GET on a
resource that requires a POST).
- 406 Not Acceptable — Used when the request is not acceptable according to the
Accept headers in the request.
