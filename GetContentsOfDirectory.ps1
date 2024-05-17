

$Directory = Read-Host "Enter your directory path, Prefix is C:\Users\pkp_y\ or Enter Full path"


if($Directory.StartsWith("C:\Users\pkp_y\") -and (Test-Path -Path $Directory) ){

  Write-Host "Path is Existed"
  if((Get-Item $Directory) -is [System.IO.DirectoryInfo]){
     Write-Host " Here the list of contents of directory"
     $files = Get-ChildItem -Path $Directory -File
     foreach($file in $files){
        Write-Host $file
     }
     }
  else{
     Write-Host "Entered File path not Directory"
  }

}
elseif(Test-Path -Path ("C:\Users\pkp_y\"+$Directory)){
   Write-Host "Path is Existed"
   if((Get-Item ("C:\Users\pkp_y\"+$Directory)) -is [System.IO.DirectoryInfo]){
   $files = Get-ChildItem -Path ("C:\Users\pkp_y\"+$Directory) -File
   foreach($file in $files){
     Write-Host $file
   }
   }
   else{
   Write-Host "Entered File path not Directory"
   }
}
else{
Write-Host "Path not Existed"
}

