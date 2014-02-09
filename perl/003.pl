#!/usr/bin/perl

use strict;
use warnings;

# Problem 3
# Largest prime factor
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

use Prime;
my $n = 600851475143;
my $sq = sqrt($n);
my $div = 2;
my $answer = 0;

for (my $i = 1; $i <= $sq; $i += 2) {
    if ($n % $i == 0) {
        if (Prime::isprime($i) && $i > $answer) {
            $answer = $i;
        }
    } elsif ($answer == 0) {
        $div = $i;
    }
}

print "$answer\n";
