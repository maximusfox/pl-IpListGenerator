#!/usr/bin/env perl

use utf8;
use strict;
use warnings;
use feature qw/say switch unicode_strings/;

use Net::IP;

unless (@ARGV) {
	say 'Usage: iplgen 192.168.1.1 192.168.1.10';
	exit;
}

my $range = Net::IP->new($ARGV[0].'-'.$ARGV[1]) or die (Net::IP::Error());
while ($range) { say $range->ip; $range++; }