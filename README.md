# 📁 **Mini File Search Utility**
### **Author:** Anvit Bhardwaj  
### **Project Title:** Mini File Search Utility

---

# 📘 **Overview**
The Mini File Search Utility is a Unix-based shell script designed to quickly locate files within a directory using search parameters like **name**, **extension**, and **size**. It simplifies practical file discovery and enhances command-line efficiency.

---

# 🎯 **Project Objectives**
- Build a fast and reliable Unix-based file searching tool.
- Enable search by **file name**, **extension**, and **size filters**.
- Demonstrate use of essential Unix commands.
- Produce clean, readable search results.

---

# ⚙️ **Key Functionalities**
- 🔍 Search files by **keyword in filename**
- 📝 Search using **file extension**
- 📏 Filter results by **file size** (e.g., `+100k`, `-1M`)
- 📂 Recursively searches subdirectories
- 🖥️ Case-insensitive search for better matching

---

# 🧩 **Core Commands Used**
| Command | Purpose |
|--------|---------|
| `find` | Perform file search based on name, extension, size |
| `echo` | Display output messages |
| `dd` | Create test files of specific sizes |
| `chmod` | Make script executable |
| `ls` | View and verify files |

---

# 🏗️ **Code Structure**
```
📦 Mini-File-Search-Utility
 ┣ 📜 search.sh
 ┣ 📄 output.txt
 ┣ 📁 testfiles/
 ┗ 📘 README.md
```

---

# 📤 **Example Output**
Below is the actual terminal output captured during script execution:

```
Searching in directory: .
Keyword: txt
./notes.txt
./report.txt
./hello.txt
./report1.txt
./report2.txt

Searching in directory: .  
Keyword: report  
./report.txt  
./report1.txt  
./report2.txt  
```

---

# 🚀 **How to Run**
1. Give execute permission:
```bash
chmod +x search.sh
```

2. Execute the script:
```bash
./search.sh <directory> <name/extension> [size]
```

---

# 🧪 **Testing With Sample Files**
Create mock files:
```bash
touch notes.txt report.txt hello.txt
mkdir logs reports
echo "sample" > report1.txt
dd if=/dev/zero of=bigfile.log bs=1k count=150
```

Run searches:
```bash
./search.sh . txt
./search.sh . report
./search.sh . log +100k
```

---

# 📈 **Future Enhancements**
- Add color-coded output for easier visibility  
- Option to save results to a file automatically  
- Interactive (menu-driven) mode  
- Show total count of matched files  
- Add support for regex pattern searching  

---

# 📄 **License**
This project is free for academic and personal use.
