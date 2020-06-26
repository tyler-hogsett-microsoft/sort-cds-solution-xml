param(
  [Parameter(Mandatory=$true)]
  [string] $path,
  [string[]] $orderedNodeQueries
)

process {
  $files = Get-ChildItem $path -Recurse
  foreach($file in $files) {
    & $PSScriptRoot\Sort-XmlFile.ps1 $file.FullName $orderedNodeQueries
  }
}