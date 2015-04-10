#!/usr/bin/node

"use strict";

/*
 *  Problem 5
 *  Smallest multiple
 *  2520 is the smallest number that can be divided by each of the numbers from 1
 *  to 10 without any remainder.
 *  What is the smallest positive number that is evenly divisible by all of the
 *  numbers from 1 to 20?
 */

var primes = 2 * 3 * 5 * 11 * 13 * 17 * 19;
var i = primes;

while (i) {
    var j;
    for (var j = 1; j <= 20; j++) {
        if (i % j) {
            break;
        }
        if (j == 20) {
            console.log(i);
            return;
        }
    }
    i += primes;
}
