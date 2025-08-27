#!/bin/bash
echo "*** Selecting the production space in epa-ccte organization..."
cf target -o epa-ccte -s prod
echo "*** Deleting previous app instance..."
cf delete -f -r ccte-docs-prod
echo "*** Pushing the app with stg manifest file..."
cf push -f manifest-prod.yml
echo "*** Showing recent logs of the app..."
cf logs ccte-docs-prod --recent