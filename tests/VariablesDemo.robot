Documentation    
*** Variables ***
@{my_list}    Apple    Banana    Orange
&{my_dict}    name=my_value1    password=my_value2

*** Test Cases ***
Test List Variable
    Log    ${my_list}   # Pass: Logs the whole list object
    Log Many    @{my_list}   # Pass: Logs the items of the list object
    Log Many    ${my_list}   # Pass: Logs the whole list object
    Log    ${my_list}[0]    # Pass: Logs the first item of the list object
    # Log    @{my_list}[0]    # Fail: @{my_list} is not a list object and does not have an index
    # Log    @{my_list}       # Fail: The second argument of the Log keyword `level` only allows the values `TRACE`, `DEBUG`, `INFO`, `WARN`, `ERROR`, `NONE`.
                            # The value `Banana` for the argument `level` is not allowed.
    # Log    ${my_list}[0]    ${my_list}[1]   ${my_list}[2]   # Fail: Same as above    
    FOR    ${item}    IN    @{my_list}  # Pass: Iterates over the items of the list object
        Log    ${item}                  # Pass: Logs the items of the list object   
    END

Test Dictionary Variable
    Log    ${my_dict}   # Pass: Logs the whole dict object
    Log    ${my_dict}[name]    # Pass: Logs the value of the first key in the dict object
    #Log    &{my_dict}[name]    # Fail: &{my_dict} is not a dict object and does not have an key
    FOR    ${key}    ${value}    IN    &{my_dict}  # Pass: Iterates over the items of the dict object
        Log Many    ${key}    ${value}             # Pass: Logs the items of the dict object   
    END