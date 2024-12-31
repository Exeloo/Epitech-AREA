#!/bin/bash

# Define the URL of your GraphQL endpoint
GRAPHQL_ENDPOINT="http://localhost:8080/graphql"

# Define the output file for the schema
SCHEMA_FILE="lib/graphql/schema.graphql"

# Fetch the schema and save it to the file
npx get-graphql-schema $GRAPHQL_ENDPOINT > $SCHEMA_FILE

echo "Schema fetched and saved to $SCHEMA_FILE"