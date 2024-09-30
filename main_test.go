package main

import "testing"

func TestHello(t *testing.T) {
	got := Hello("Nick")
	want := "Hello, Nick"
	if got != want {
		t.Errorf("Got %q, want %q", got, want)
	}
}
