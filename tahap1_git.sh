#!/bin/bash
# Tahap 1: Simulasi Konflik Git (jalankan di Git Bash / Terminal)
mkdir -p Praktik_Git && cd Praktik_Git
git init -b main
git config user.name  >/dev/null || git config user.name "Mahasiswa"
git config user.email >/dev/null || git config user.email "mhs@example.com"

echo "# Proyek Kelulusan" > catatan_tim.txt
git add catatan_tim.txt
git commit -m "Commit awal"

git checkout -b fitur-model
echo "# Model: Random Forest" > catatan_tim.txt
git commit -am "Tambah Random Forest"

git checkout main
echo "# UI: Streamlit" > catatan_tim.txt
git commit -am "Tambah Streamlit"

echo ">>> Memicu konflik..."
git merge fitur-model

echo ">>> Konflik terjadi. Selesaikan manual:"
echo "# UI: Streamlit & Model: Random Forest" > catatan_tim.txt
git add catatan_tim.txt
git commit -m "Resolve conflict"
git log --oneline --graph --all
