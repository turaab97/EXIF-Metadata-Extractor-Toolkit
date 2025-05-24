#EXIF Metadata Extractor Toolkit

A cross-platform toolkit for retrieving image EXIF metadata on Windows and Linux:

exifscript.sh: Bash EXIF metadata extractor (uses exiftool)

exifscript.ps1: PowerShell EXIF metadata extractor

Repository Contents

exifscript.sh        # Bash EXIF metadata extractor
exifscript.ps1       # PowerShell EXIF metadata extractor
README.md            # This guide

Prerequisites

PowerShell 5.1+ or PowerShell Core (for exifscript.ps1)

Bash (Linux/macOS)

exiftool (for exifscript.sh)

Installation

# Clone the repo
git clone https://github.com/turaab97/file-forensics-toolkit.git
cd file-forensics-toolkit
# On Windows, unblock PowerShell script:
Unblock-File .\exifscript.ps1
# On Linux/macOS, make Bash script executable:
chmod +x exifscript.sh

Usage

EXIF Metadata Extractor (Bash)

Extract EXIF data from an image:

./exifscript.sh image.jpg

EXIF Metadata Extractor (PowerShell)

Extract EXIF data from an image:

.\exifscript.ps1 -Path image.jpg

Contributing

Fork this repo

Create a feature branch: git checkout -b feature/YourFeature

Commit your changes: git commit -m "Add feature"

Push: git push origin feature/YourFeature

Open a Pull Request

License

MIT © Syed Ali Turab

