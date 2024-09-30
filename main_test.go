package main

import "testing"

func TestHello(t *testing.T) {
	t.Run("saying hello to people", func(t *testing.T) {
		got := Hello("Nick")
		want := "Hello, Nick"
		AssertCorrectMessage(t, got, want)
	})
	t.Run("say 'Hello, World' when an empty string is applied", func(t *testing.T) {
		got := Hello("")
		want := "Hello, World"
		AssertCorrectMessage(t, got, want)
	})
}

func AssertCorrectMessage(t testing.TB, got string, want string) {
	t.Helper()
	if got != want {
		t.Errorf("got %q, want %q", got, want)
	}
}
