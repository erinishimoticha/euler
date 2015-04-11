#!/usr/bin/node

"use strict";
/*
 *  Problem 9
 *  Special Pythagorean triplet
 *  A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
 *  a2 + b2 = c2
 *  For example, 32 + 42 = 9 + 16 = 25 = 52.
 *  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 *  Find the product abc.
 */


var a = 0;
var b = 1;
var answer = '';
var total;
var c;

while (!answer) {
    a++;
    b = a;
    total = 0;
    while (total <= 1000) {
        b++;
        c = Math.sqrt(a * a + b * b);
        total = a + b + c;
        if (Math.floor(c) == c) {
            if (total === 1000) {
                answer = a * b * c;
            }
        }
    }
}

console.log(answer);
