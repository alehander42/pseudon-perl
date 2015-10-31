package Pseudon::Translator;
use strict;
use warnings;

use Pseudon::Parser qw(parse);
use Pseudon::Emitter qw(emit);

use Exporter qw(import);

our @EXPORT_OK = qw(translate);

sub translate {
  my ($source) = @_;
  my $node = parse($source);
  my $clj = emit($node);
  return $clj;
}
