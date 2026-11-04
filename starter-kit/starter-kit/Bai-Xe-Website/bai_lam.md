# bai_lam

# BÀI LÀM – HACKATHON 02

- **Mã đề:** 02
- **Họ tên: vũ mạnh hùng**
- **Lớp: cntt4**
- **Link repository:**
- **Hệ điều hành (Windows/macOS):**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```bash
hiển thị đường dẫn tuyệt đối của thư mục hiện tại: pwd
liệt kê nội dung bao gồm file ẩn: ls
di chuyển file huong_dan_van_hanh.txt vào docs: mv 
tạo thư mục backup trong thư mục gốc: mkdir backup 
sao chép data/luot_gui_xe_thang_2.xlsx vào backup:  cp '.\data\Luot_Gui_Xe_Thang 2.xlsx' backup
xóa file .tmp tại thư mục gốc, không xóa file khác :  rm .\temp_202.tmp
dùng đường dẫn tương đối vào logs: cd logs
liệt kê nội dung rồi quay lại thư mục gốc : ls và cd..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```
Windows PowerShell 5.1
Copyright (C) Microsoft Corporation. All rights reserved.

PS C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website> pwd

Path
----
C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website

PS C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website> ls

    Directory: C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/4/2026   7:38 AM                data
d-----         11/4/2026   7:36 AM                docs
d-----         11/4/2026   7:36 AM                evidence
d-----         11/4/2026   7:38 AM                logs
d-----         11/4/2026   7:32 AM                web
------         11/3/2026   7:06 AM             73 .env
-a----         11/3/2026   7:06 AM           2412 bai_lam.md
-a----         11/3/2026   7:06 AM            155 Huong_Dan_Van_Hanh.txt
------         11/3/2026   7:06 AM             22 temp_202.tmp

PS C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website> mv .\Huong_Dan_Van_Hanh.txt docs
PS C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website> mkdir backup

    Directory: C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/4/2026   7:40 AM                backup

PS C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website> cp '.\data\Luot_Gui_Xe_Thang 2.xlsx' backup
PS C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website> rm .\temp_202.tmp
PS C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website> cd logs
PS C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website\logs> ls

    Directory: C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website\logs

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:06 AM            977 Gate.log

PS C:\Users\manly\Downloads\starter-kit\starter-kit\Bai-Xe-Website\logs> cd..
```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```bash
 get-content logs/gate.log | select-string status=500
```

### 2 dòng đầu tiên trong logs/loi_500.txt

```
2026-02-28 08:03:17 GET /vi-tri-bai status=200
2026-02-28 08:05:28 GET /dang-ky-ve status=200

```

### b) Lệnh đếm số dòng status=404 và kết quả

```bash

```

get-content logs/gate.log | select-string status=404).count

```
4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```bash
# Script: tong_hop.ps1 
# Tac gia: vũ hùng 
# Ngay tao: 4/11 
Write-Host "Dang tao bao cao..." 
"=== BAO CAO SU CÓ WEBSITE ===" > logs/tong_hop.txt 
Get-Content logs/gate.log | Select-String "status=500" >> logs/tong_hop.txt
Get-Content logs/gate.log | Select-String "status=400" | Measure-Object >> logs/tong_hop.txt
Write-Host "Hoan thanh!"
```

### Nội dung file logs/tong_hop.txt

```
(Dán nội dung file vào đây – xoá dòng này)
```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.
> 
- [x]  README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x]  .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x]  .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 |  |  |  |
| 2 |  |  |  |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).
> 

### Báo cáo lỗi gửi trưởng nhóm

- **Context:**
- **Expected:**
- **Actual:**
- **Log:**

### Câu tìm kiếm Google

```
(Ghi câu tìm kiếm vào đây – xoá dòng này)
```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/luot_gui_xe_thang_2.xlsx`, không cần ghi vào đây.
>