package main

import "fmt"

func main() {
	grades := map[string]int{}
	fmt.Printf("%T\n", grades)

	grades["Mary"] = 99
	grades["Jane"] = 88
	grades["Bob"] = 93

	fmt.Println(grades)

	fmt.Println(grades["Jane"])
}
