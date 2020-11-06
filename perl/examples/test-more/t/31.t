use strict;
use warnings;

use lib 'lib';
use MySimpleCalc qw(sum);

use Test::More tests => 3;
# Test::More instead of Test::Simple

ok( sum(1, 1)    == 2,  '1+1');
ok( sum(2, 2)    == 4,  '2+2');
ok( sum(2, 2, 2) == 6,  '2+2+2');
