#!/bin/bash

# Ask questions to generate the documentation
read -p "What is the title of this project? " TITLE
read -p "What is the overview of this project? " OVERVIEW
read -p "What is the production endpoint? " PRODUCTION_ENDPOINT
read -p "What is the integration endpoint? " INTEGRATION_ENDPOINT
read -p "What is the API key header? " API_KEY_HEADER
read -p "What is the license URL? " LICENSE_URL
read -p "Enter a primary contact name: " CONTACT_NAME
read -p "Enter the contact email for \`$CONTACT_NAME\`: " CONTACT_EMAIL
read -p "Enter a secondary contact name: " SECONDARY_CONTACT_NAME
read -p "Enter the contact email for \`$SECONDARY_CONTACT_NAME\`: " SECONDARY_CONTACT_EMAIL

# Set the documentation file path
DOCUMENTATION_PATH="docs/graphql-api"
DOCUMENTATION_FILE="$DOCUMENTATION_PATH/index.md"

# Create the directory if it doesn't exist
mkdir -p "$DOCUMENTATION_PATH"

# Generate or update the documentation file
{
  echo "---"
  echo "title: $TITLE"
  echo "---"
  echo ""
  echo "## Overview"
  echo ""
  echo "$OVERVIEW"
  echo ""
  echo "**Production Endpoint:** \`$PRODUCTION_ENDPOINT\`"
  echo "**Integration Endpoint:** \`$INTEGRATION_ENDPOINT\`"
  echo "**API Key Header:** \`'$API_KEY_HEADER': \"API_KEY\"\`"
  echo "**License:** [Terms and Conditions]($LICENSE_URL)"
  echo ""
  echo "**Contact:**"
  echo "- $CONTACT_NAME: [$CONTACT_EMAIL](mailto:$CONTACT_EMAIL)"
  echo "- $SECONDARY_CONTACT_NAME: [$SECONDARY_CONTACT_EMAIL](mailto:$SECONDARY_CONTACT_EMAIL)"
} > "$DOCUMENTATION_FILE"

echo "Documentation generated successfully at $DOCUMENTATION_FILE"
