import subprocess
import sys

# List of packages to install
packages = [
    "numpy",
    "pandas",
    "matplotlib",
    "scikit-learn",
    "keras",
    "Django",
    "Flask",
    "h5py",
    "openpyxl"
    "regex",
    "requests",
    "scipy",
    "seaborn",
    "selenium"
]

# Install packages
for package in packages:
    subprocess.check_call([sys.executable, "-m", "pip", "install", package])

