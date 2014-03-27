#!/usr/bin/nodejs

'use strict';

/**
 * Problem 3
 * Largest prime factor
 * The prime factors of 13195 are 5, 7, 13 and 29.
 * What is the largest prime factor of the number 600851475143?
 */

var n = 600851475143;
var sq = Math.sqrt(n);
var div = 2;
var answer = 0;

function isPrime(n) {
    var sq = parseInt(Math.sqrt(n));
    if (n % 2 === 0) {
        return false;
    }
    for (var i = 3; i <= sq; i += 1) {
        if (n % i === 0) {
            return false;
        }
    }
    return true;
}

for (var i = 1; i <= sq; i += 2) {
    if (n % i === 0) {
        if (isPrime(i) && i > answer) {
            answer = i;
        }
    } else if (answer === 0) {
        div = i;
    }
}

console.log(answer);
