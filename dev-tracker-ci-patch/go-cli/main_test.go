package main

import "testing"

func TestGreet(t *testing.T) {
    got := Greet("Ahmed")
    want := "Hello, Ahmed!"
    if got != want {
        t.Fatalf("got %q want %q", got, want)
    }
}
