# This script can be run locally to bundle and lint the OpenAPI spec.

echo "Bundling OpenAPI schema from docs/api_docs"

redocly bundle openapi/openapi.yaml --output openapi.yml

echo "Linting OpenAPI schema"

redocly lint openapi.yml --extends=minimal --skip-rule=operation-operationId