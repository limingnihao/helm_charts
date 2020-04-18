curl -X DELETE "elasticsearch.localhost.com/test"

curl -X PUT "elasticsearch.localhost.com/test"  -H 'Content-Type: application/json' -d \
'
{
    "settings": {
        "number_of_shards": 2,
        "number_of_replicas": 1,
        "analysis": {
            "analyzer": {
                "analyzer_ngram": {
                    "tokenizer": "tokenizer_ngram",
                    "filter" : ["lowercase"]
                }
            },
            "tokenizer": {
                "tokenizer_ngram": {
                    "type": "ngram",
                    "min_gram": 1,
                    "max_gram": 2,
                    "token_chars": [
                        "letter",
                        "digit"
                    ]
                }
            }
        }
    },
    "mappings": {
        "properties": {
            "id": {"type":"long"},
            "name": {
                "type": "text",
                "analyzer": "analyzer_ngram",
                "search_analyzer": "analyzer_ngram"
            },
            "desc":{
                "type": "text",
                "analyzer": "whitespace",
                "search_analyzer": "whitespace"
            },
            "production_date": {
                "type": "date"
            },
            "location": {
                "type": "geo_point"
            }
        }
    }
}
'