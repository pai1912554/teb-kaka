# Teb Kaka

ชุด snippet วางโครงหน้าเว็บ HTML/CSS แบ่งเป็นขั้นตอน สำหรับ VS Code

## คีย์ลัด

| พิมพ์ | ได้ |
|---|---|
| `indext1` … `indext6` | index.html ทีละขั้น รวม 6 ขั้น |
| `page2t1` … `page2t6` | page2.html ทีละขั้น รวม 6 ขั้น |
| `page3t1` … `page3t6` | page3.html ทีละขั้น รวม 6 ขั้น |
| `csst1` … `csst5` | style.css ทีละขั้น รวม 5 ขั้น |
| `indexall` `page2all` `page3all` `cssall` | ทั้งไฟล์รวดเดียว |

พิมพ์คีย์ลัดแล้วกด `Tab` จากนั้นกด `Tab` ต่อเพื่อไล่เติมข้อความทีละจุด

ถ้ากด `Tab` แล้วไม่ขยาย ให้เปิดค่านี้ใน settings.json

```json
"editor.tabCompletion": "onlySnippets"
```

## ติดตั้ง

### 1. ไฟล์ .vsix

โหลด `teb-kaka-1.3.0.vsix` จากหน้า Releases แล้วสั่ง

```bash
code --install-extension teb-kaka-1.3.0.vsix
```

หรือใน VS Code กด `Ctrl+Shift+X` → ปุ่ม `...` มุมขวาบน → Install from VSIX

### 2. clone ลงโฟลเดอร์ส่วนขยายตรง ๆ

ไม่ต้องแพ็ก ไม่ต้องคอมไพล์ เพราะเป็น snippet ล้วน

**Windows**

```bash
git clone https://github.com/pai1912554/teb-kaka.git "%USERPROFILE%\.vscode\extensions\kittikun.teb-kaka-1.3.0"
```

**macOS / Linux**

```bash
git clone https://github.com/pai1912554/teb-kaka.git ~/.vscode/extensions/kittikun.teb-kaka-1.3.0
```

แล้วรีโหลดหน้าต่าง `Ctrl+Shift+P` → Reload Window

### 3. ไม่ติดตั้งส่วนขยายเลย

โหลดไฟล์ `teb-kaka.code-snippets` ไฟล์เดียว วางไว้ที่

- Windows `%APPDATA%\Code\User\snippets\`
- macOS `~/Library/Application Support/Code/User/snippets/`
- Linux `~/.config/Code/User/snippets/`

ใช้ได้ทันที ไม่ต้องรีสตาร์ท

หรือวางไว้ใน `.vscode/` ของโปรเจกต์ แล้ว snippet จะติดไปกับโฟลเดอร์นั้นทุกเครื่อง

## ตรวจว่าติดตั้งแล้ว

`Ctrl+Shift+X` แล้วพิมพ์ `@installed teb`

ช่องค้นหาของ Extensions ค้นจาก Marketplace เป็นค่าเริ่มต้น ต้องใส่ `@installed` นำหน้าถึงจะเห็นของที่ลงในเครื่อง

## หมายเหตุ

snippet ผูกกับชนิดไฟล์ `indext*` `page2t*` `page3t*` ใช้ได้เฉพาะไฟล์ `.html` และ `csst*` เฉพาะไฟล์ `.css`
