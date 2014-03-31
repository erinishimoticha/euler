#!/usr/bin/nodejs

'use strict';

/**
 * Problem 4
 * Largest palindrome product
 * A palindromic number reads the same both ways. The largest palindrome made
 * from the product of two 2-digit numbers is 9009 = 91*99.
 * Find the largest palindrome made from the product of two 3-digit numbers.
 */
(function () {
    var answer = 0;
    var product;
    var ispal;
    var digits = [];

    for (var i = 999; i >= 400; i -= 1) {
        for (var j = 999; j >= 400; j -= 1) {
            product = i * j;
            if (product < answer) {
                continue;
            }
            digits = product.toString().split('');
            ispal = true;

            for (var k = 0; (k <= parseInt(digits.length/2) && ispal); k += 1) {
                if (digits[k] !== digits[digits.length - k - 1]) {
                    ispal = false;
                }
            }
            if (ispal) {
                answer = product;
            }
        }
    }
    console.log(answer);
}());
