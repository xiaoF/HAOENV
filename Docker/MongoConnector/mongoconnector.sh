#!/bin/bash

sleep 1

mongo-connector --auto-commit-interval=0 -m 192.168.3.168:27017 -t 192.168.3.168:9200 -d elastic_doc_manager --namespace-set admin.comments,admin.events,admin.faq,admin.locations,admin.posts,admin.records,admin.schools,admin.tags,admin.users,admin.zipcodes --continue-on-error
