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