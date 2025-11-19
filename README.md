# 📁 **Mini File Search Utility**
### **Author:** Anvit Bhardwaj  
### **Project Title:** Mini File Search Utility

---

# 📘 **Overview**
The Mini File Search Utility is a Unix-based shell script designed to quickly locate files within a directory using search parameters like **name**, **extension**, and **size**. It simplifies practical file discovery and enhances command-line efficiency.

---

# 🎯 **Project Objectives**
- Develop a functional Unix shell script to search files efficiently.
- Implement support for name-based and extension-based searching.
- Include optional file-size-based filtering.
- Demonstrate usage of essential Unix commands like `find`.
- Provide clear and testable outputs for validation.

---

# ⚙️ **Key Functionalities**
- 🔍 Search files by **keyword in name**.
- 📝 Search by **file extension**.
- 📏 Filter results by **file size** (e.g., `+100k`, `-1M`).
- 📂 Searches inside subdirectories as well.
- 🖥️ Case-insensitive search for broader matching.

---

# 🧩 **Core Commands Used**
| Command | Purpose |
|--------|---------|
| `find` | Locate files with conditions like size, name, extension |
| `echo` | Display output messages to the user |
| `dd` | Create large mock files for testing |
| `chmod` | Make the script executable |
| `ls` | Verify and inspect created files |

---

# 🏗️ **Code Structure**
```
📦 Mini-File-Search-Utility
 ┣ 📜 search.sh
 ┣ 📄 output.txt
 ┗ 📘 README.md
```

---

# 📤 **Example Output**
Below is the example output captured during script execution:

![Example Output](output.png)

---

# 🚀 **How to Run**
1. Give execute permission:
```bash
chmod +x search.sh
```
2. Run the script:
```bash
./search.sh <directory> <name/extension> [size]
```

---

# 🧪 **Testing With Sample Files**
Create mock files for testing:
```bash
touch notes.txt report.txt hello.txt
mkdir logs reports
echo "sample" > report1.txt
dd if=/dev/zero of=bigfile.log bs=1k count=150
```

Run tests:
```bash
./search.sh . txt
./search.sh . report
./search.sh . log +100k
```

---

# 📈 **Future Enhancements**
- Add color-coded output for better readability.
- Include option to export results to a text file automatically.
- Add interactive mode (menu-driven search choices).
- Display total number of matching files.
- Enable regex-based pattern searching.

---

# 📄 **License**
This project is free for academic and personal use.
