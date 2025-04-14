# String-Calculator

## Defination

Please visit the below link for problem statement.
https://blog.incubyte.co/blog/tdd-assessment/

## Version

ruby - v3.3.3
rspec - v3.13.0

## Setup

* Install Rspec gem 
```
gem install rspec
```

## Usage

Go to project directory and run the below command
```
rspec ./spec/string_calculator_spec.rb
```

**The following test input is covered in the test case:**

* The function returns 0 for nil or an empty string ('').
* An error is thrown if any negative numbers are present in the input string. If multiple negative numbers are found, all of them will be included in the error message.
* The function supports comma-separated input (e.g., 1,2,3).
* It also accepts newline characters as delimiters (e.g., 1\n2\n3).
* Custom delimiters are supported, such as //;\n1;2;3.
* Any numbers greater than 1000 will be ignored.
* The function can handle delimiters of any length, such as //@@@\n1@@@2@@@3.