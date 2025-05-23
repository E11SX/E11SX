#!/bin/bash

# Hybrid Launcher for flexpass

# Path to generators
BASH_GEN="./generator_bash.sh"
PY_GEN="./generator_py.py"

# Check if Python is available and pyperclip is installed
if command -v python3 >/dev/null && python3 -c "import pyperclip" 2>/dev/null; then
  echo "[+] Using Python version"
  python3 "$PY_GEN" "$@"
else
  echo "[!] Python version unavailable. Using Bash fallback."
  bash "$BASH_GEN" "$@"
fi
#!/bin/bash

# Installation script for flexpass

TARGET="/usr/local/bin/flexpass"
SOURCE="$(pwd)/flexpass.sh"

echo "[*] Installing flexpass to $TARGET"

if [ -f "$TARGET" ]; then
  echo "[!] Already installed. Replacing..."
  sudo rm "$TARGET"
fi

sudo chmod +x "$SOURCE"
sudo ln -s "$SOURCE" "$TARGET"

echo "[+] flexpass is now available system-wide."
echo "    Run with: flexpass -l 16 -n 3 -c"
