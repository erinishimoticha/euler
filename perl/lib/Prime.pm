package Prime;

sub isprime($) {
	my $n = shift;
    my $sq = int(sqrt($n));
    return 0 if ($n % 2 == 0);
    for (my $i = 3; $i <= $sq; $i += 1) {
        return 0 if ($n % $i == 0);
    }
    return 1;
}

1;
