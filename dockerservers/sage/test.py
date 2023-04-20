import http.client

conn = http.client.HTTPConnection("137.208.107.75:8890")
payload = "{\n  \"query\": \"SELECT * WHERE { ?s ?p ?o. }\",\n  \"defaultGraph\": \"dbpedia\"\n}"

headers = {
    'accept': "application/json",
    'Content-Type': "application/json"
    }

conn.request("POST", "/?=", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
