# Day 1 – CLI Flags in Go

[![Go](https://img.shields.io/badge/Go-1.22+-blue)](https://go.dev/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Build Status](https://github.com/ahmadu2305/day1-cli-flags/actions/workflows/go.yml/badge.svg)](https://github.com/ahmadu2305/day1-cli-flags/actions)

A small Go CLI application that prints either the Go Gopher mascot or a custom message, with options to transform the text and repeat it.

---

## Features
- **Default output**: Prints the Go mascot.
- **Custom message**: Pass your own text with `--msg`.
- **Uppercase option**: Transform text to uppercase with `--upper`.
- **Repeat option**: Print the text multiple times with `--repeat`.

---

## Usage

### Run Locally
```bash
# Clone the repo
git clone git@github.com:ahmadu2305/day1-cli-flags.git
cd day1-cli-flags

# Run tests
go test

# Run with default mascot
go run .

# Uppercase output
go run . --upper

# Repeat message 3 times
go run . --repeat 3

# Custom message in uppercase, repeated 2 times
go run . --upper --repeat 2 --msg "Go is expressive, concise, clean, and efficient."


$ go run .
Go Gopher

$ go run . --upper
GO GOPHER

$ go run . --repeat 3 --msg "Go is fun!"
Go is fun! Go is fun! Go is fun!


day1-cli-flags/
├── go.mod
├── main.go
├── mascot/
│   └── mascot.go
├── repeat_test.go
└── README.md

