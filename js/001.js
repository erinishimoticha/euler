#!/usr/bin/nodejs

'use strict';

/**
 * Problem 1
 * Multiples of 3 and 5
 * If we list all the natural numbers below 10 that are multiples of 3 or 5, we
 * get 3, 5, 6 and 9. The sum of these multiples is 23.
 * Find the sum of all the multiples of 3 or 5 below 1000.
 */

var total = 0;

for (var i = 1; i < 1000; i++) {
    if (Math.floor(i/3) === i/3 || Math.floor(i/5) === i/5) {
        total = total + i;
    }
}

console.log(total);
