# mobispaces_provAPI
provAPI docker image for use in mobiSpaces project
run using:
```
docker run -p 9090:8080 --rm provapi:1.0
```
Use JSON requests to access the service, e.g.,
```
curl -G --output results.txt --data-urlencode '@test.json' http://<host>:9090/q=
```
where test.json contains the JSON request, and the response will be stored in results.txt .
