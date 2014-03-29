#!/usr/bin/perl

use strict;
use warnings;

# Problem 15
# Lattice paths
# Starting in the top left corner of a 22 grid, and only being able to move to
# the right and down, there are exactly 6 routes to the bottom right corner.`
# How many such routes are there through a 20x20 grid?

my $gridsize = 20;
sub fact($);

my $count = fact($gridsize * 2) / (fact($gridsize) * fact(($gridsize * 2) - $gridsize));
print $count, "\n";

sub fact($) {
    my $num = shift;
    my $answer = 1;

    for (1; $num > 0; $num--) {
        $answer *= $num;
    }
    return $answer;
}

__END__

# THIS WAY LIES MADNESS

sub makepaths($$);
makepaths(0, 0);
print $count, "\n";

sub makepaths($$) {
    my ($x, $y) = (shift, shift);
    if ($x != $gridsize) {
        makepaths($x + 1, $y);
    }

    if ($y != $gridsize) {
        makepaths($x, $y + 1);
    }

    if ($x == $gridsize && $y == $gridsize) {
        $count++;
    }
}
