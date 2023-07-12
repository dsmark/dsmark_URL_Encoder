param (
    [switch]$e,
    [switch]$d
)

Add-Type -AssemblyName System.Web

function EncodeURL()
{    
    $clipboardText = Get-Clipboard
    
    # Encode the URL
    $encodedURL = [System.Web.HttpUtility]::UrlEncode($clipboardText) 
    $encodedURL | Set-Clipboard
}

function DecodeURL()
{    
    $clipboardText = Get-Clipboard
    
    # Decode the URL
    $decodedURL = [System.Web.HttpUtility]::UrlDecode($clipboardText)
    $decodedURL | Set-Clipboard
}

switch ($true) {
    {$e} {
        EncodeURL
        break
    }
    {$d} {
        DecodeURL
        break
    }
   
    default {
        EncodeURL
        break
    }
}