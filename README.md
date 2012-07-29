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
