#!/usr/bin/env bash

mongo mongodb://localhost:27017/codelists <<EOF
db.dropDatabase();
db.codelists.insert({
     "_id":"64d384f1-ea3b-445c-8fb8-aa453f96e58a",
     "name": "time",
     "links": {
        "self": {"id": "64d384f1-ea3b-445c-8fb8-aa453f96e58a", "href":"http://localhost:22400/code-lists/64d384f1-ea3b-445c-8fb8-aa453f96e58a"},
        "codes": {"id":"code", "href":"http://localhost:22400/code-lists/64d384f1-ea3b-445c-8fb8-aa453f96e58a/codes"},
        },
});
db.codelists.insert({
     "_id":"65107a9f-7da3-4b41-a410-6f6d9fbd68c3",
     "name": "geography",
     "links": {
        "self": {"id": "65107A9f-7da3-4b41-a410-6f6d9fbd68c3", "href":"http://localhost:22400/code-lists/65107a9f-7da3-4b41-a410-6f6d9fbd68c3"},
        "codes": {"id":"code","href":"http://localhost:22400/code-lists/65107a9f-7da3-4b41-a410-6f6d9fbd68c3/codes"},
        },
});

db.codelists.insert({
     "_id":"e44de4c4-d39e-4e2f-942b-3ca10584d078",
     "name": "CPI Codes",
     "links": {
        "self": { "id": "e44de4c4-d39e-4e2f-942b-3ca10584d078", "href":"http://localhost:22400/code-lists/e44de4c4-d39e-4e2f-942b-3ca10584d078"},
        "codes": { "id":"code", "href":"http://localhost:22400/code-lists/e44de4c4-d39e-4e2f-942b-3ca10584d078/codes"},
        },
});

EOF
