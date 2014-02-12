#!/usr/bin/perl

use strict;
use warnings;

# Problem 10
# Summation of primes
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

use lib 'lib';
use Prime;

my $sum = 2;
# TODO Too slow. See if a prime number generator is faster.
for (my $num = 3; $num < 2000000; $num += 2) {
    if (Prime::isprime($num)) {
        $sum += $num;
    }
}

print "$sum\n";
