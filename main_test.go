package main

import "testing"

func TestHello(t *testing.T) {
	t.Run("saying hello to people", func(t *testing.T) {
		got := Hello("Nick", "English")
		want := "Hello, Nick"
		AssertCorrectMessage(t, got, want)
	})
	t.Run("say 'Hello, World' when an empty string is applied", func(t *testing.T) {
		got := Hello("", "English")
		want := "Hello, World"
		AssertCorrectMessage(t, got, want)
	})
	t.Run("in Spanish", func(t *testing.T) {
		got := Hello("Elodie", "Spanish")
		want := "Hola, Elodie"
		AssertCorrectMessage(t, got, want)
	})
	t.Run("in French", func(t *testing.T) {
		got := Hello("Nick", "French")
		want := "Bonjure, Nick"
		AssertCorrectMessage(t, got, want)
	})
}
func AssertCorrectMessage(t testing.TB, got, want string) {
	t.Helper()
	if got != want {
		t.Errorf("got %q, want %q", got, want)
	}
}
