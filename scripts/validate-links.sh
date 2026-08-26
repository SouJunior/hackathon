#!/bin/bash

# Link and filename validation script for Hackathon SouJunior documentation
# Run before committing to ensure no broken links

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

ERRORS=0
WARNINGS=0

echo "=================================="
echo "  Hackathon SouJunior Validator"
echo "=================================="
echo ""

# 1. Validate file naming conventions
echo -e "${YELLOW}[1/2] Validating file naming conventions...${NC}"
echo ""

for file in *.md; do
    # Skip README.md, AGENTS.md, and _sidebar.md (exceptions)
    if [[ "$file" == "README.md" || "$file" == "AGENTS.md" || "$file" == "_sidebar.md" ]]; then
        continue
    fi

    # Check lowercase
    if [[ "$file" != "$(echo "$file" | tr '[:upper:]' '[:lower:]')" ]]; then
        echo -e "${RED}ERROR: File not lowercase: $file${NC}"
        ERRORS=$((ERRORS + 1))
    fi

    # Check for accents (common Portuguese accents)
    if [[ "$file" =~ [áàâãéêíóôõúçÁÀÂÃÉÊÍÓÔÕÚÇ] ]]; then
        echo -e "${RED}ERROR: File contains accents: $file${NC}"
        ERRORS=$((ERRORS + 1))
    fi

    # Check for spaces or hyphens
    if [[ "$file" =~ [[:space:]] || "$file" =~ - ]]; then
        echo -e "${RED}ERROR: File contains spaces or hyphens: $file${NC}"
        ERRORS=$((ERRORS + 1))
    fi

    # Check numerical prefix pattern (allow dots in filename for domains)
    if ! [[ "$file" =~ ^[0-9]+_[a-z0-9_\.]+\.md$ ]] && \
       [[ "$file" != "README.md" && "$file" != "AGENTS.md" ]]; then
        echo -e "${YELLOW}WARNING: File doesn't follow naming pattern: $file${NC}"
        WARNINGS=$((WARNINGS + 1))
    fi
done

echo ""

# 2. Validate internal links
echo -e "${YELLOW}[2/2] Validating internal links...${NC}"
echo ""

for file in *.md; do
    # Extract markdown links [text](path)
    links=$(grep -oE '\[([^\]]+)\]\(([^)]+\.md)\)' "$file" | sed 's/.*(\([^)]*\))/\1/' || true)

    for link in $links; do
        # Skip external links
        if [[ "$link" == http* ]]; then
            continue
        fi

        # URL decode the link (replace %20 with spaces, etc.)
        decoded_link=$(echo "$link" | sed 's/%20/ /g; s/%21/!/g; s/%28/(/g; s/%29/)/g')

        # Check if file exists
        if [[ ! -f "$decoded_link" ]]; then
            echo -e "${RED}ERROR: Broken link in $file -> $decoded_link${NC}"
            ERRORS=$((ERRORS + 1))
        fi
    done
done

echo ""

# Summary
echo "=================================="
echo "  Summary"
echo "=================================="
echo ""

if [[ $ERRORS -gt 0 ]]; then
    echo -e "${RED}❌ Found $ERRORS error(s)${NC}"
    echo -e "${YELLOW}⚠  Found $WARNINGS warning(s)${NC}"
    exit 1
elif [[ $WARNINGS -gt 0 ]]; then
    echo -e "${GREEN}✓ No errors found${NC}"
    echo -e "${YELLOW}⚠  Found $WARNINGS warning(s)${NC}"
    exit 0
else
    echo -e "${GREEN}✓ All validations passed!${NC}"
    exit 0
fi
