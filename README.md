# 🚀 Size-Reduction-Distroless-img

A lightweight, interactive Go calculator CLI app containerized using a multi-stage Docker build — reducing image size from **854MB to just 1.9MB** using the `scratch` base image 🐳📉.

---

## 🧮 About the App

This is a simple command-line calculator written in Go (`calculator.go`). It supports basic arithmetic operations (`+`, `-`, `*`, `/`) and takes user input in the format:
## 🐳 Dockerized with Multi-stage Build

The project uses a two-stage Docker build:
1. **Stage 1**: Compiles the Go binary using the full Golang environment.
2. **Stage 2**: Copies only the compiled binary into a `scratch` image, resulting in an extremely small final image.



## 🔧 How to Build & Run

### ✅ At first Build in main repo
docker build -t go-calculator .

### ✅ At second Build in without the multistage repo 
docker build -t reduced-calculator .

### ✅ Check the docker images size 
docker imges 

## 📦 Image Size Comparison

| Docker Image Base | Image Size |
|-------------------|------------|
| `ubuntu` (single stage)  | 854 MB        |
| `scratch` (multistage)   | **1.9 MB** ✅ |
