#!/usr/bin/perl

use strict;
use warnings;

# Problem 9
# Special Pythagorean triplet
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.


my $a = 0;
my $b = 1;
my $answer = '';
while (!$answer) {
    $a++;
    $b = $a;
    my $total = 0;
    while ($total <= 1000) {
        $b++;
        my $c = sqrt($a * $a + $b * $b);
        $total = $a + $b + $c;
        if (int($c) == $c) {
            if($total == 1000) {
                $answer = $a * $b * $c;
            }
        }
    }
}
print "$answer\n";
