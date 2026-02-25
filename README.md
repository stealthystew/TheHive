# Dundas Valley Pools (Static Site)

This project is a static multi-page website for **Dundas Valley Pools**.

## If you do NOT have the files yet

You need to copy/download this project onto your own computer first.

### Option A: Download ZIP from GitHub

1. Open the repository page in your browser.
2. Click **Code** → **Download ZIP**.
3. Extract the ZIP to a folder on your computer.
4. Open a terminal in that extracted folder.

### Option B: Clone with Git

```bash
git clone <your-repo-url>
cd TheHive
```

## Quick start

### macOS / Linux

```bash
cd /path/to/TheHive
./run-local.sh
```

### Windows (Command Prompt)

```bat
cd /d C:\path\to\TheHive
run-local.bat
```

Then open:

- http://127.0.0.1:4173

## Optional arguments

Use a custom port:

```bash
./run-local.sh 4180
```

```bat
run-local.bat 4180
```

Use a custom host binding:

```bash
HOST=0.0.0.0 ./run-local.sh 4173
```

```bat
set HOST=0.0.0.0
run-local.bat 4173
```

## Manual start

```bash
python3 -m http.server 4173 --bind 127.0.0.1
```

## If you see “site can’t be reached”

1. Ensure the server is running in the same terminal where you started the script.
2. Use the exact URL printed by the script.
3. If the port is already in use, run with another port (for example `4180`).

## Windows note

If `./run-local.sh` is not recognized, that is expected on Windows Command Prompt. Use `run-local.bat` instead.
