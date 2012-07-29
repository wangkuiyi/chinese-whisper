package main
import "fmt"

func whisper(left, right chan int) {
	left <- 1 + <- right
}
func main() {
	const n = 100000
	leftmost := make(chan int)
	right := leftmost
	left := leftmost
	for i := 0; i < n; i++ {
		right = make(chan int)
		go whisper(left, right)
		left = right
	}
	go func(c chan int) { c <- 1 }(right)
	fmt.Println(<- leftmost)
}
