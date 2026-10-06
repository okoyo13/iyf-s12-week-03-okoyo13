# **Shell used:** Git Bash on Windows
**Working directory:** `~/OneDrive/Desktop/My Folder/iyf-s12-week-02-okoyo13`

---

## Basic Navigation

### 1. Find current directory
```bash
pwd
```
**Output:**
```
/c/Users/rodri/OneDrive/Desktop/My Folder/iyf-s12-week-02-okoyo13
```
`pwd` stands for **print working directory** — it shows where you currently are in the filesystem.

---

### 2. List contents of current directory
```bash
ls
```
**Output:**
```
box-model-practice/  flexbox-practice/  grid-practice/
index.html  README.md  styles.css  typography-system/
```

**Variants I tried:**
```bash
ls -l     # long format — shows permissions, size, date
ls -a     # all files — includes hidden files like .git
ls -la    # combination of both
```

---

### 3. Navigate to Documents folder
```bash
cd ~/Documents
```
`~` is a shortcut for your **home directory**. On Windows with Git Bash, `~` maps to `/c/Users/rodri`. `cd` stands for **change directory**.

Verify with `pwd`:
```bash
pwd
# /c/Users/rodri/Documents
```

---

### 4. Go back one directory
```bash
cd ..
```
`..` means **the parent of the current directory**. If I was in `~/Documents`, after `cd ..` I'm back in `~`.

Verify:
```bash
pwd
# /c/Users/rodri
```

---

### 5. Navigate to home directory
```bash
cd ~
```
Or simply:
```bash
cd
```
Both take you to your home directory. Verify:
```bash
pwd
# /c/Users/rodri
```

---

### Bonus navigation tricks I picked up

```bash
cd -        # go back to the PREVIOUS directory (toggle)
cd ../..    # go up TWO levels
cd /c/      # jump to a specific absolute path
```

---

## Create Project Structure

**Target structure:**
```
my-project/
├── src/
│   ├── css/
│   ├── js/
│   └── images/
├── docs/
├── tests/
└── README.md
```

### Step 1 — Go to a workspace folder
I created the project inside my Desktop to keep it separate from the portfolio repo.

```bash
cd ~/Desktop
mkdir terminal-practice
cd terminal-practice
```

### Step 2 — Create the top-level folder

```bash
mkdir my-project
cd my-project
```

### Step 3 — Create the nested folders in one command

```bash
mkdir -p src/css src/js src/images docs tests
```

**Why `-p`?**
`-p` tells `mkdir` to create **parent directories as needed**. Without it, `mkdir src/css` would fail because `src/` doesn't exist yet. With `-p`, it creates `src/` **and** `css/` in one go.

### Step 4 — Create the README file

**On Git Bash / Mac / Linux:**
```bash
touch README.md
```

**On PowerShell (Windows native):**
```powershell
New-Item -Path README.md -ItemType File
```

I used `touch` because I'm in Git Bash.

### Step 5 — Verify the structure

```bash
ls -R
```

**Output:**
```
.:
docs/  my-project/  README.md  src/  tests/

./docs:

./src:
css/  images/  js/

./src/css:

./src/images:

./src/js:

./tests:
```

`ls -R` lists contents **recursively** — that's how you confirm nested folders were created correctly.

## What I learned

1. **`~` is a shortcut to home** — no more typing the full path.
2. **`..` means "parent directory"** — `cd ..` goes up one level.
3. **`-p` is essential for nested folders** — `mkdir -p src/css` creates both in one command.
4. **`ls -R` is the fastest way to verify a folder tree** — much faster than clicking through a GUI.
5. **`touch` creates empty files** — useful for scaffolding projects (README, config files, etc.).
6. **PowerShell equivalents exist** — `New-Item` instead of `touch`, but Git Bash gives you the familiar Unix tools on Windows.

---

## Why this matters for web development

Almost every real workflow happens in the terminal:

- **`git add`, `git commit`, `git push`** — version control
- **`npm install`, `npm run dev`** — JavaScript projects
- **`python -m http.server`** — local preview server
- **`cd` into a project** — then run build tools

Being comfortable navigating and creating files without a GUI is a **prerequisite** for the rest of modern web development.

---

## Bonus · Clean up

After documenting, I removed the practice folder to keep my Desktop tidy:

```bash
cd ~/Desktop
rm -rf terminal-practice
```

⚠️ **Warning:** `rm -rf` is dangerous — it permanently deletes without asking. Never run it on a path you're unsure about. Use `ls` first to confirm you're in the right place.
