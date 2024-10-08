package main

import (
	"fmt"
)

func Sum(numbers []int) int {
	sum := 0
	for _, number := range numbers {
		sum += number
	}
	return sum
}

func SumAll(numbersToSum ...[]int) []int {
	lengthOfNumbers := len(numbersToSum)
	sums := make([]int, lengthOfNumbers)

	for i, numbers := range numbersToSum {
		sums[i] = Sum(numbers)
	}
	return sums
}

func main() {
	fmt.Println(Sum([]int{2, 3, 4, 5, 3}))
	fmt.Println(SumAll([]int{2, 3, 4, 1, 2}))
}
