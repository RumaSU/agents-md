<#
.SYNOPSIS
  Copies the agent rules template into a target project.

.DESCRIPTION
  Variants:
    clean (default) - AGENTS.md (clean Markdown)
    xml             - AGENTS.xml-blocks.md content, installed as AGENTS.md

.EXAMPLE
  ./install.ps1 -Target "E:\path\to\project"
  ./install.ps1 -Target "E:\path\to\project" -Variant xml
  ./install.ps1 -Target "E:\path\to\project" -Variant xml -Force
#>
param(
  [string]$Target = ".",
  [ValidateSet("clean", "xml")]
  [string]$Variant = "clean",
  [switch]$Force
)

$ErrorActionPreference = "Stop"

$sourceName = if ($Variant -eq "xml") { "AGENTS.xml-blocks.md" } else { "AGENTS.md" }
$source = Join-Path $PSScriptRoot $sourceName

if (-not (Test-Path $source)) {
  throw "$sourceName not found next to this script."
}

if (-not (Test-Path $Target)) {
  New-Item -ItemType Directory -Path $Target -Force | Out-Null
  Write-Host "Created target directory: $Target"
}

$dest = Join-Path (Resolve-Path $Target).Path "AGENTS.md"

if ((Test-Path $dest) -and -not $Force) {
  Write-Error "AGENTS.md already exists at $dest. Back it up or run with -Force."
  exit 1
}

Copy-Item $source $dest -Force
Write-Host "Copied $sourceName (variant: $Variant) -> $dest"
Write-Host "Next: adapt the ADAPT markers in section 3 (Docs Workflow Rules)."