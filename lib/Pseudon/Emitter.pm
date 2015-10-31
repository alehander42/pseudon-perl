package Pseudon::Emitter;
use strict;
use warnings;

use PPI;
use Dumpvalue;
use Exporter qw(import);

our @EXPORT_OK = qw(emit);

sub emit {
  my ($node) = @_;
  my @w = $node->children;
  Dumpvalue->new->dumpValue($w[0]);
  my @pkg = $w[0]->children;
  Dumpvalue->new->dumpValue($pkg[0]);
  return "(Cell)\n";
}
