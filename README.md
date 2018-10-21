# Docker OCR
Convert OCR into PDF using tesseract in Docker.

## Installation
Clone `docker-ocr` from github
```bash
git clone https://github.com/hogehoge0604/docker-ocr.git
```

## Execute
```bash
./execute.sh ocr_from_pdf_filename ocr_to_filename
```
It takes a lot of time to build Dockerfile for the first run.  
Upon successful completion, the converted PDF is stored in the "file" folder.

