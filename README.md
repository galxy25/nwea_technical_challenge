# nwea_technical_challenge
NWEA Technical Challenge

This should take anywhere between 15mins – 1 hour to complete and would give us a better understanding on their logical thinking.

## Exercise

### Problem Statement

Given a nested list of integers, implement a function to flatten it. Each element is either an integer, or a list -- whose elements may also be integers or other lists. Provide a github gist link to your code and tests,. You may use whatever language you are comfortable with but do not use any built-in flattening functions that provide this functionality like Ruby’s Array.flatten.

#### Examples

flattened_list = [5,6,7,8,9]
nested_list = [5,6, [7,8], [9]]

if flatten(nested_list) == flattened_list
   p "Pass"
else
   p "Fail"

### Solution

#### Algorithm

1. Initialize empty result list
2. Validate the input is a list
    a. Else throw validation error
3. For each element of the list
    a. validate the element is an integer or list
        Else throw validation error
       if the element is an integer
         add element to the result list
       else
        run the list through step 3 of this algorithm
4. Return result list

#### Testing

To run test cases

```bash
ruby flatten_test.rb
```
