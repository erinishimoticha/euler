#!/usr/bin/perl

use strict;
use warnings;

# Problem 7
# 10001st prime
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
# What is the 10 001st prime number?

use lib 'perl/lib';
use Prime;

my $primeidx = 1; # prime #1 is 2.
my $answer;
for (my $i = 3; $primeidx != 10001; $i += 2) {
    if (Prime::isprime($i)) {
        $primeidx++;
        $answer = $i;
    }
}

print "$answer\n";
