# User Creation Script v2

## 📌 Description
This project is a Bash script that automates user creation in a Linux system.

It creates users, assigns passwords, and forces password reset on first login.

---

## 🚀 Features
- Creates new users
- Accepts username and comment as input
- Generates random password
- Forces password change on first login
- Validates root privileges
- Includes error handling

---

## 🛠️ Technologies Used
- Bash (Shell Scripting)
- Linux Commands:
  - useradd
  - passwd
  - chpasswd
  - date

---

## Output

<img width="881" height="107" alt="Screenshot from 2026-04-10 13-20-51" src="https://github.com/user-attachments/assets/81a64b00-c849-4c37-afef-1ec839622806" />

---

## ▶️ How to Run

```bash
chmod +x user_create.sh
sudo ./user_create.sh <username> "Full Name"
