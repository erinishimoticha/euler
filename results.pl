#!/usr/bin/perl

use Data::Dumper;
use Time::HiRes qw(gettimeofday tv_interval);

my @config = (
    {'dir' => 'perl', 'ext' => 'pl', 'name' => 'Perl'},
    {'dir' => 'js', 'ext' => 'js', 'name' => 'JavaScript'}
);
my $res = {};
my @cols = ('Problem #');

foreach my $langConfig (sort {$a->{'dir'} cmp $b->{'dir'}} @config) {
    push(@cols, $langConfig->{'name'});
    chdir($langConfig->{'dir'});
    for (my $idx = 1; $idx < 500; $idx++) {
        my $file  = sprintf("%03d." . $langConfig->{'ext'}, $idx);
        my ($begin, $time) = (0, 0);
        if (-e $file) {
            $res->{$idx}{$langConfig->{'dir'}}{'num'} = $idx;
            $begin = [gettimeofday];
            $res->{$idx}{$langConfig->{'dir'}}{'result'} = `./$file`;
            $res->{$idx}{$langConfig->{'dir'}}{'time'} = tv_interval($begin, [gettimeofday]) * 1000;
            $res->{$idx}{$langConfig->{'dir'}}{'time'} .= " ms";
            chomp $res->{$idx}{$langConfig->{'dir'}}{'result'};
        }
    }
    chdir('..');
}


open(OUT, ">README.md");
print OUT "Euler Problems\n";
print OUT "=====\n";
print OUT "This is just my attempt to keep my mathematical skills honed.\n";
print OUT "\n|" . join('|', @cols) . "|" . "\n";
@cols = map {'---'} @cols;
print OUT "|" . join('|', @cols) . "|" . "\n";
foreach my $num (sort {$a <=> $b} keys %$res) {
    next if !$res->{$num};
    my @cells = ($num);
    foreach my $langConfig (sort {$a->{'dir'} cmp $b->{'dir'}} @config) {
        if ($res->{$num}{$langConfig->{'dir'}}{'time'}) {
            push(@cells, $res->{$num}{$langConfig->{'dir'}}{'time'});
        } else {
            push(@cells, "n/a");
        }
    }
    print OUT "|" . join('|', @cells) . "|" . "\n";
}
close OUT;


__END__
do
    echo "# $lang" >> README.md
    cd $lang
    for f in *.*
    do
        echo "## $lang$f" >> ../README.md
        begin=$(($(date +%s%N)/1000000))
        ./$f
        end=$(($(date +%s%N)/1000000))
        time=$((end - begin))
        echo "$time ms" >> ../README.md
        echo "" >> ../README.md
    done
    cd ..
done
