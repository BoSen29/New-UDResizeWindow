# New-UDResizeWindow
A component consisting of 3 other components to give a window effect in UniversalDashboard that can be dragged minimized and display
UniversalDashbaord content from any of the commands in UniversalDashboard to be displayed inside the window of this component.

## Parameters

* -Height this is a number value defaulted to 500
* -Width this is a number value defauled to 500
* -Content this is a script block parameter which will allow you to nest actual UD controls inside the window

## Example

```
Import-Module -Name UniversalDashboard
Import-Module -Name UniversalDashboard.UDResizeWindow
Get-UDDashboard | Stop-UDDashboard

Start-UDDashboard -Port 10005 -Dashboard (
    New-UDDashboard -Title "Powershell UniversalDashboard" -Content {
        New-UDLayout -Columns 2 -Content {
            New-UDResizeWindow -Id "DragWindow" -Content {
                New-UDHeading -Size 5 -Text "Brand New Component"
                New-UDImage -Url "https://static.tvtropes.org/pmwiki/pub/images/rsz_superheroes2.png"
                New-UDHeading -Size 6 -Text "Look at this amazing window in UD it can be moved and repositioned to anywhere you want, you can choose X and Y starting positions"
            }
            New-UDResizeWindow -Content {
                New-UDCard -Content {
                    New-UDHeading -Size 3 -Text "For UniversalDashboard"
                    New-UDImage -Url "https://www.dccomics.com/sites/default/files/field/image/BizSuperman_blog_5ad0fcd2033464.18754984.jpg"
                    New-UDHeading -Size 6 -Text "Look at this amazing window in UD it can be moved and repositioned to anywhere you want, you can choose X and Y starting positions"
                }
            } -ResizeHandles @('nw', 'ne', 's')
        }


    }
)
```
