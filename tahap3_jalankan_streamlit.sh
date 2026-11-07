#!/bin/bash
cd "$(dirname "$0")"
if [ ! -f model_kelulusan.pkl ]; then
    echo "Model belum ada, melatih model dulu..."
    python 1_latih_model.py
fi
python -m streamlit run app.py
