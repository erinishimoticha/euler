#!/usr/bin/perl

use strict;
use warnings;

# Problem 5
# Smallest multiple
# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

my $primes = 2 * 3 * 5 * 11 * 13 * 17 * 19;
my $i = $primes;

while ($i) {
    my $j;
    for ($j = 1; $j <= 20; $j++) {
        if ($i % $j) {
            last;
        }
        if ($j == 20) {
            print "$i\n";
            exit();
        }
    }
    $i += $primes;
}
