# Teb Kaka - ติดตั้ง snippet ลง VS Code ด้วยคำสั่งเดียว
# irm https://raw.githubusercontent.com/pai1912554/teb-kaka/master/install.ps1 | iex

$ErrorActionPreference = 'Stop'
$file = 'teb-kaka.code-snippets'
$url  = 'https://raw.githubusercontent.com/pai1912554/teb-kaka/master/teb-kaka.code-snippets'

# หาโฟลเดอร์ snippets ของ VS Code ทุกรุ่นที่ลงไว้
$targets = @(
    "$env:APPDATA\Code\User\snippets",              # VS Code
    "$env:APPDATA\Code - Insiders\User\snippets",   # Insiders
    "$env:APPDATA\VSCodium\User\snippets"           # VSCodium
) | Where-Object { Test-Path (Split-Path $_ -Parent) }

if (-not $targets) {
    Write-Host "  ไม่เจอ VS Code ในเครื่องนี้" -ForegroundColor Red
    Write-Host "  ลองเปิด VS Code สักครั้งก่อน แล้วรันใหม่"
    return
}

Write-Host ""
Write-Host "  Teb Kaka  กำลังติดตั้ง" -ForegroundColor Cyan

$data = Invoke-WebRequest -Uri $url -UseBasicParsing
foreach ($t in $targets) {
    if (-not (Test-Path $t)) { New-Item -ItemType Directory -Path $t -Force | Out-Null }
    [System.IO.File]::WriteAllBytes((Join-Path $t $file), $data.Content)
    Write-Host "  ลงแล้ว: $t" -ForegroundColor Green
}

# ตั้งค่าให้กด Tab แล้วขยาย snippet ได้
$settings = "$env:APPDATA\Code\User\settings.json"
if (Test-Path $settings) {
    $raw = Get-Content $settings -Raw -Encoding UTF8
    if ($raw -notmatch '"editor\.tabCompletion"') {
        Write-Host ""
        Write-Host "  แนะนำ: เพิ่มบรรทัดนี้ใน settings.json เพื่อให้กด Tab แล้วขยาย" -ForegroundColor Yellow
        Write-Host '    "editor.tabCompletion": "onlySnippets"'
    }
}

Write-Host ""
Write-Host "  เสร็จ  เปิดไฟล์ .html พิมพ์ indext1 แล้วกด Tab" -ForegroundColor Cyan
Write-Host "         เปิดไฟล์ .css  พิมพ์ csst1   แล้วกด Tab"
Write-Host ""
