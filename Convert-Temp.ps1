#https://ironscripter.us/a-beginner-powershell-function-challenge/

### Convert celsius to fahrenheit and back 


# To help you along, you can use these formulas to convert temperatures. To convert from Celsius to Fahrenheit: (C*1.8)+32. To convert from Fahrenheit to Celsius is a matter of reversing the process: (F-32)/1.8. As points of reference, freezing is 32F and 0C. Boiling is 212F and 100C.

Param(
    [Parameter(Mandatory = $true,
        Position = 0,
        ParameterSetName = "ToFahrenheit",
        ValueFromPipeline = $true)
        ]

        [Parameter(Mandatory = $true,
            Position = 0,
            ParameterSetName = "ToCelsius",
            ValueFromPipeline = $true)
            ]
            [Single[]]$Temperature,

            [Parameter(ParameterSetName = 'ToFahrenheit')]
            [Switch]$ToFahrenheit,

            [Parameter(ParameterSetName = 'ToCelsius')]
            [Switch]$ToCelsius

        )


        function ConvertTo-Fahrenheit {
            [CmdletBinding()]
            param (
                $Temperature
               
            )

            $ConvertedTemp = ($($Temperature)*1.8)+32

            Write-Host $ConvertedTemp
               
        }

        function ConvertTo-Celsius {
            [CmdletBinding()]
            param (
                $Temperature       
            )

            $ConvertedTemp = ($($Temperature) - 32) /1.8

             Write-Host $ConvertedTemp
            
    
        }

        if ($ToFahrenheit){
            $ConvertedTemp = ConvertTo-Fahrenheit  -Temperature $Temperature
        }
        else {
            $ConvertedTemp = ConvertTo-Celsius -Temperature $Temperature    
        }
 
