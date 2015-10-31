package Pseudon::Parser;
use strict;
use warnings;

use PPI;
use Exporter qw(import);

our @EXPORT_OK = qw(parse);

sub parse {
    my ($source) = @_;
    my $node = PPI::Document->new(\$source);
    return $node;
}
