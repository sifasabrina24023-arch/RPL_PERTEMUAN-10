@echo off
cd /d "%~dp0"
if not exist model_kelulusan.pkl (
    echo Model belum ada, melatih model dulu...
    python 1_latih_model.py
)
python -m streamlit run app.py
pause
