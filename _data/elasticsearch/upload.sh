curl -X PUT "elasticsearch.localhost.com/test/_doc/1" -H 'Content-Type: application/json' -d \
'
{
	"id": 1,
	"name": "abcdef",
	"desc": "ab cd ef",
    "production_date": "2020-03-01",
    "location": [-71.34, 41.12]
}
'

curl -X PUT "elasticsearch.localhost.com/test/_doc/2" -H 'Content-Type: application/json' -d \
'
{
	"id": 2,
	"name": "cdefgh",
	"desc": "cd ef gh",
    "production_date": "2020-03-26",
    "location": [-71.3, 41.15]
}
'

curl -X PUT "elasticsearch.localhost.com/test/_doc/3" -H 'Content-Type: application/json' -d \
'
{
	"id": 3,
	"name": "efghij",
	"desc": "ef gh ij",
    "production_date": "2020-03-25",
    "location": [-71.3, 41.12]
}
'

curl -X PUT "elasticsearch.localhost.com/test/_doc/4" -H 'Content-Type: application/json' -d \
'
{
	"id": 4,
	"name": "ghijkl",
	"desc": "gh ij kl",
    "production_date": "2020-03-20"
}
'

curl -X PUT "elasticsearch.localhost.com/test/_doc/5" -H 'Content-Type: application/json' -d \
'
{
	"id": 5,
	"name": "ijklmn",
	"desc": "ij kl nm"
}
'

curl -X PUT "elasticsearch.localhost.com/test/_doc/6" -H 'Content-Type: application/json' -d \
'
{
	"id": 6,
	"name": "abghmn",
	"desc": "ab gh mn"
}
'

curl -X PUT "elasticsearch.localhost.com/test/_doc/7" -H 'Content-Type: application/json' -d \
'
{
	"id": 7,
	"name": "abefcd",
	"desc": "ab ef cd"
}
'