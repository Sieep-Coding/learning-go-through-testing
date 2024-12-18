package structsandmore

import "testing"

func TestPerimeter(t *testing.T) {
	got := Perimeter(10.0, 10.0)
	want := 40.0
	if got != want {
		t.Errorf("got %.3f, want %.3f", got, want)
	}
}

func TestArea(t *testing.T) {
	got := Area(12.0, 6.0)
	want := 72.0
	if got != want {
		t.Errorf("got %.3f, want %.3f", got, want)
	}
}
