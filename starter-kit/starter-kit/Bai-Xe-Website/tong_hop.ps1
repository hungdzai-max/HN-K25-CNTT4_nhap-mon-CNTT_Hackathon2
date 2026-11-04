# Script: tong_hop.ps1 
# Tac gia: vũ hùng 
# Ngay tao: 4/11 
Write-Host "Dang tao bao cao..." 
"=== BAO CAO SU CÓ WEBSITE ===" > logs/tong_hop.txt 
Get-Content logs/gate.log | Select-String "status=500" >> logs/tong_hop.txt
Get-Content logs/gate.log | Select-String "status=400" | Measure-Object >> logs/tong_hop.txt
Write-Host "Hoan thanh!"