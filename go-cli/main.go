package main

import (
	"flag"
	"fmt"
	"strings"

	"github.com/ahmadu2305/day1-cli-flags/mascot"
)

func repeat(s string, n int) string {
	if n < 1 {
		return ""
	}
	var b strings.Builder
	for i := 0; i < n; i++ {
		if i > 0 {
			b.WriteString(" ")
		}
		b.WriteString(s)
	}
	return b.String()
}

func main() {
	upper := flag.Bool("upper", false, "print in UPPERCASE")
	repeatN := flag.Int("repeat", 1, "number of times to repeat")
	msg := flag.String("msg", "", "custom message (optional)")
	flag.Parse()

	text := *msg
	if text == "" {
		text = mascot.BestMascot()
	}
	if *upper {
		text = strings.ToUpper(text)
	}
	fmt.Println(repeat(text, *repeatN))
}
