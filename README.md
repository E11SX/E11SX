
# flexpass


flexpass is a lightweight, customizable password generator written in both Bash and Python, designed for Linux command-line users who want control, speed, and portability.


## Features


- Customizable password length
- Option to include/exclude:
  - Uppercase letters
  - Digits
  - Symbols
  - Ambiguous characters (like `1`, `l`, `O`, `0`)
- Generate multiple passwords at once
- Copy password to clipboard (`xclip`, `wl-copy`, or `pyperclip`)
- Save passwords to a file
- Secure randomness from system sources (`/dev/urandom` or `SystemRandom`)


## Files

| File          | Language | Description                         |
|---------------|----------|-------------------------------------|
| `flexpass.sh` | Bash     | Fully portable Linux shell version  |
| `flexpass.py` | Python   | Python version with extra features  |


## Usage

### Bash version

bash
./flexpass.sh -l 16 -n 5 -a -c -f passwords.txt

### Python version 
python3 flexpass.py -l 16 -n 5 -a -c -f passwords.txt| Flag | Description                       |


## Options
| Flag | Description                       |
| ---- | --------------------------------- |
| `-l` | Set password length (default: 12) |
| `-n` | Number of passwords to generate   |
| `-a` | Exclude ambiguous characters      |
| `-u` | Disable uppercase letters         |
| `-d` | Disable digits                    |
| `-s` | Disable symbols                   |
| `-c` | Copy last password to clipboard   |
| `-f` | Save passwords to file            |






