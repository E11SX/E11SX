
# Flexpass


flexpass is a lightweight, customizable password generator written in both Bash and Python, designed for Linux command-line users who want control, speed, and portability.


# Features


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


# Files


| File          | Language | Description                         |
|---------------|----------|-------------------------------------|
| `flexpass.sh` | Bash     | Fully portable Linux shell version  |
| `flexpass.py` | Python   | Python version with extra featu


# Options


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


# Requirements


#####  For python
python 3.6+

  pyperclp

```
pip install pyperclip
```
#####  For bash
```
sudo apt install xclip
```
or

```
sudo pacman -S wl-clipboard
```

# Installation

#####   Clone the GitHub repo:

```
git clone https://github.com/E11SX/flexpass-PASSgnrtr.git
cd flexpass.sh
```

#####   Make the hybrid launcher executable:

```
chmod +x flexpass.sh
```

#####   Symlink to a global bin directory:

```
sudo ln -s "$(pwd)/flexpass.sh" /usr/local/bin/flexpass.sh
```


# Example

```
$ ./flexpass.sh -l 20 -n 2 -a
%gHjR*sez@MucD#tbKv(
!duXpHZsfQaW^bnrL&*(
```

