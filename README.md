# Teb Kaka

## คีย์ลัด

- `indext1` ถึง `indext6`  (index.html แบ่ง 6 ขั้น)  และ `indexall` ทั้งไฟล์
- `page2t1` ถึง `page2t6`  (page2.html แบ่ง 6 ขั้น)  และ `page2all` ทั้งไฟล์
- `page3t1` ถึง `page3t6`  (page3.html แบ่ง 6 ขั้น)  และ `page3all` ทั้งไฟล์
- `csst1` ถึง `csst5`  (css/style.css แบ่ง 5 ขั้น)  และ `cssall` ทั้งไฟล์

พิมพ์คีย์ลัดแล้วกด `Tab` จากนั้นกด `Tab` ต่อเพื่อไล่เติมข้อความทีละจุด

ถ้ากด `Tab` แล้วไม่ขยาย ให้เปิดค่านี้ใน settings.json

```json
"editor.tabCompletion": "onlySnippets"
```

## ติดตั้ง

### ง่ายสุด ดับเบิลคลิก

โหลด `install.bat` จากหน้า Releases แล้วดับเบิลคลิก

### คำสั่งเดียว

```powershell
irm https://raw.githubusercontent.com/pai1912554/teb-kaka/master/install.ps1 | iex
```

### เป็นส่วนขยาย

```bash
code --install-extension teb-kaka-1.4.0.vsix
```

### clone ลงโฟลเดอร์ส่วนขยายตรง ๆ

```bash
git clone https://github.com/pai1912554/teb-kaka.git "%USERPROFILE%\.vscode\extensions\kittikun.teb-kaka-1.4.0"
```

## ตรวจว่าติดตั้งแล้ว

`Ctrl+Shift+X` แล้วพิมพ์ `@installed teb`

ต้องใส่ `@installed` นำหน้า เพราะช่องค้นหาค้นจาก Marketplace เป็นค่าเริ่มต้น

## หมายเหตุ

`indext*` `page2t*` `page3t*` ใช้ได้เฉพาะไฟล์ `.html` และ `csst*` เฉพาะไฟล์ `.css`

โฟลเดอร์ `template/` คือไฟล์ต้นทางที่ snippet สร้างมาจาก
