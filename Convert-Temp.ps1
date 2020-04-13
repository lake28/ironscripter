#https://ironscripter.us/a-beginner-powershell-function-challenge/

### Convert celsius to fahrenheit and back 


# To help you along, you can use these formulas to convert temperatures. To convert from Celsius to Fahrenheit: (C*1.8)+32. To convert from Fahrenheit to Celsius is a matter of reversing the process: (F-32)/1.8. As points of reference, freezing is 32F and 0C. Boiling is 212F and 100C.

function ConvertTo-Celsius {
    [CmdletBinding()]
    param (
        $temparture        
    )

    $ConvertedTemp = ($temparture * 1.8) + 32

    $TempObject = [PSCustomObject]@{
        "Temparture in Fahrenheit" = $ConvertedTemp
        "Temparture in Celsius"    = $ConvertedTemp
    }
    Write-Output $TempObject
    
}

