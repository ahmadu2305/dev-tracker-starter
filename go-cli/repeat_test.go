package main

import "testing"

func TestRepeat(t *testing.T) {
	tests := []struct {
		s   string
		n   int
		out string
	}{
		{"go", 1, "go"},
		{"go", 3, "go go go"},
		{"", 3, "  "}, // empty string repeated with spaces
		{"x", 0, ""},
	}
	for _, tt := range tests {
		got := repeat(tt.s, tt.n)
		if got != tt.out {
			t.Fatalf("repeat(%q,%d) = %q; want %q", tt.s, tt.n, got, tt.out)
		}
	}
}
