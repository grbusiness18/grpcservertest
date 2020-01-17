#!/usr/bin/env bash

echo "You provided the arguments:" "$@"

echo "syntax = \"proto3\"; \n"  > test.proto

echo  "message data {\n    string datatype = 1; \n    string datavalue = 2; \n}; \n" >> test.proto

sNAME="Hello"

echo "service ${sNAME} { \n " >> test.proto
for i in  {1..5}
do
    echo "   rpc fnName${i} (data) returns (data) {}" >> test.proto
done
echo "\n};" >> test.proto

## Generate py files

echo "import requests \n"  > test.py

echo "def callUrl(url):\n    # do something\n    val = \"q\"\n    return val \n" >> test.py

for i in  {1..5}
do
    echo "def fnName${i}(urlvalue):\n    return callUrl(urlvalue)\n\n" >> test.py
done

## Generate server code

echo "import calculator \nimport calculator_pb2_grpc\nimport calculator_pb2\n" > test_service.py

echo "class CalculatorServicer(calculator_pb2_grpc.CalculatorServicer):\n\n" >> test_service.py

for i in  {1..5}
do
    echo "    def MultiplyFn(self, request, context):" >> test_service.py
    echo "        response = calculator_pb2.Number()" >> test_service.py
    echo "        response.value = calculator.square_root(request.value)" >> test_service.py
    echo "        return response\n" >> test_service.py
done



