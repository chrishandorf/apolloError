#!/bin/bash
set -x

apollo client:codegen --queries='page-visit.graphql' --localSchemaFile=schema.json --target=typescript

# the above localSchemaFile was created by:
#      apollo service:download --endpoint=http://localhost:8080/graphql schema.json
#
# this was done against an endpoint with a large list of graphql operations.  The file was then manually edited only to remove operations not related to this example.
#
# the above command produces the following output on MacOSX:

#  ✔ Loading Apollo Project
#  ✖ Generating query files with 'typescript' target
#    → No operations or fragments found to generate code for.
#Error: No operations or fragments found to generate code for.
#    at write (~/.npm-global/lib/node_modules/apollo/lib/commands/client/codegen.js:58:39)
#    at Task.task (~/.npm-global/lib/node_modules/apollo/lib/commands/client/codegen.js:83:46)
