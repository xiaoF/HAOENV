#!/bin/bash

mongo="${MONGO:-mongo1}"
mongoport="${MONGOPORT:-27017}"
elasticsearch="${ELASTICSEARCH:-elasticsearch}"
elasticport="${ELASTICPORT:-9200}"


function _mongo() {
    mongo --quiet --host ${mongo} --port ${mongoport} <<EOF
    $@
EOF
}

is_master_result="false"
expected_result="true"

while true;
do
  if [ "${is_master_result}" == "${expected_result}" ] ; then
    is_master_result=$(_mongo "rs.isMaster().ismaster")
    echo "Waiting for Mongod node to assume primary status..."
    sleep 3
  else
    echo "Mongod node is now primary"
    break;
  fi
done

sleep 1

mongo-connector --auto-commit-interval=0 -m ${mongo}:${mongoport} -t ${elasticsearch}:${elasticport} -d elastic_doc_manager --namespace-set admin.comments,admin.events,admin.faq,admin.locations,admin.posts,admin.records,admin.schools,admin.tags,admin.users,admin.zipcodes --continue-on-error
