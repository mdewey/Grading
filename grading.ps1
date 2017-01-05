[CmdletBinding()]
Param(
  [Parameter(Mandatory=$true)]
  [string]$username,
    [Parameter(Mandatory=$true)]
  [string]$repo
)

Write-Host "Starting the clone!"

$url  = "https://github.com/" + $username + "/" + $repo + ".git";

$reset = "rm -Force -r " + $repo;
#iex $reset;

$clone = "git clone " + $url ;
iex $clone;

$move = "cd " + $repo;
iex $move;

$file  = Get-ChildItem *.sln -Recurse;
$start = "start " + $file;
iex $start;

cd ..