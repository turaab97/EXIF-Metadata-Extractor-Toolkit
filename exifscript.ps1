# Function to get EXIF data from a photo
Function Get-ExifData {
    Param (
        [string]$FilePath
    )

    # Check if the file exists
    If (Test-Path $FilePath) {
        # Use .NET Framework to read EXIF data
        $photo = New-Object System.Drawing.Bitmap($FilePath)
        $exif = $photo.PropertyItems
        
        # Output the EXIF data
        foreach ($item in $exif) {
            $id = $item.Id
            $value = [System.Text.Encoding]::Ascii.GetString($item.Value)
            Write-Output "$id: $value"
        }
    } Else {
        Write-Host "File not found: $FilePath" -ForegroundColor Red
    }
}

# Example usage: Specify the path to your photo file
$photoPath = "C:\path\to\your\photo.jpg"

# Call the function to get and display EXIF data
Get-ExifData -FilePath $photoPath
