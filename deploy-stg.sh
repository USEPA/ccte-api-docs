#!/bin/bash
echo "*** Selecting the production space in epa-ccte organization..."
cf target -o epa-ccte -s staging
echo "*** Deleting previous app instance..."
cf delete -f -r ccte-docs-stg
echo "*** Pushing the app with stg manifest file..."
cf push -f manifest-stg.yml
echo "*** Showing recent logs of the app..."
cf logs ccte-docs-stg --recent