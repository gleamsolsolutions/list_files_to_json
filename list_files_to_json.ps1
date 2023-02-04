$results = Get-ChildItem -Path . -Recurse | Select-Object -Property FullName, CreationTimeUtc , LastWriteTime, Length, Extension
$json = $results | ConvertTo-Json
$json | Out-File "file.json"