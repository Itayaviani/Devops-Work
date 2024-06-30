# Fibonacci Sequence Generator

This project includes a script to generate the Fibonacci sequence up to a given number and a Jenkins pipeline to automate the execution and publication of the results in HTML format.

## Files

- `fibonacci.sh`: A bash script that generates the Fibonacci sequence up to a specified number and produces an HTML output. If the input is invalid, it generates an HTML error message.
- `Jenkinsfile`: A Jenkins pipeline definition that automates the process of making the script executable, running it with a user-provided parameter, and publishing the HTML output.

## fibonacci.sh

This script generates the Fibonacci sequence up to a specified number and outputs the result in HTML format. It also handles invalid input by generating an HTML error message.

### Usage

```bash
./fibonacci.sh <number>
