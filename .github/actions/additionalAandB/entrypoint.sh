#!/bin/sh

varA=${1}
varB=${2}
varX=${3}

intResult=$(./sampleScript/addition.sh  ${varA} ${varB})

echo ""
echo "シェルにて受け取った文字列は、"
echo $intResult
echo "でした。"
