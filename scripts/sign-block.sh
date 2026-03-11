#!/usr/bin/env bash
set -e

FILE=$1

if [ -z "$FILE" ]; then
  echo "Usage: sign_block.sh <markdown-file>"
  exit 1
fi

echo "Select Invocation Seal Status:"
echo "1) Active"
echo "2) Provisional"
echo "3) Archived"
read -p "#? " CHOICE

case $CHOICE in
  1) SEAL="Active" ;;
  2) SEAL="Provisional" ;;
  3) SEAL="Archived" ;;
  *) echo "Invalid selection"; exit 1 ;;
esac

DATE=$(date +%Y-%m-%d)
PATH_RELATIVE=$FILE

CHECKSUM=$(sha256sum "$FILE" | awk '{print $1}')

cat <<EOF >> "$FILE"

---
Filed to: \`$PATH_RELATIVE\`
Filed by: operator
Role: operator
Invocation Seal: $SEAL
Date: $DATE
EOF

echo "$DATE | $FILE | $CHECKSUM | $SEAL" >> vault/logs/signature_issuance.md

echo "Signature block appended."
