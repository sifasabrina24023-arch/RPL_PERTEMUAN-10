# Praktik MLOps Streamlit – Prediksi Kelulusan Mahasiswa

Modul Praktikum 10 – Rekayasa Perangkat Lunak (SSD1030)
UIN K.H. Abdurrahman Wahid Pekalongan – Sains Data

Kolaborasi tim (Git conflict) + MLOps dasar: latih model `.pkl` lalu tampilkan lewat UI Streamlit.

## Struktur
| File | Fungsi |
|------|--------|
| `tahap1_git.sh` | Tahap 1 – simulasi merge conflict |
| `1_latih_model.py` | Tahap 2 – latih & simpan `model_kelulusan.pkl` |
| `app.py` | Tahap 3 – UI Streamlit |
| `tahap3_jalankan_streamlit.bat/.sh` | Shortcut menjalankan aplikasi |

## Cara menjalankan
```bash
pip install -r requirements.txt
python 1_latih_model.py
streamlit run app.py        # atau: python -m streamlit run app.py
```
Buka http://localhost:8501, coba IPK 3.8 / SKS 150 (lulus) dan IPK 2.5 / SKS 110 (tidak lulus).
