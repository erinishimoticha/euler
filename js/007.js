#!/usr/bin/node

"use strict";

/*
 * Problem 7
 * 10001st prime
 * By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
 * that the 6th prime is 13.
 * What is the 10 001st prime number?
 */

var isPrime = require('./prime');

var primeidx = 1; // prime #1 is 2.
var answer;
for (var i = 3; primeidx != 10001; i += 2) {
    if (isPrime(i)) {
        primeidx++;
        answer = i;
    }
}

console.log(answer);
