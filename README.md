Chinese Whispers
================

Chinese Whispers is an interesting program introduced by Rob Pike in
his talk "Go Concurrency Patterns" on Google I/O 2012.  The program
creates a sequence of 100,001 channels interleaved by 100,000 threads.
Each thread reads from the channel to its left and writes processed
input to the channel to its right.

This projects contains implementations of Chinese Whispers in various
languages.  And can be used to test thread models of language
implementations.

If you want to have a look at more implementations of Chinese 
Whispers, please refer to [my blog post](http://cxwangyi.wordpress.com/2012/07/29/chinese-whispers-in-racket-and-go/).
