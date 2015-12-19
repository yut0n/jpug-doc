use strict;
use warnings;
use TestLib;
use Test::More tests => 13;

my $tempdir = TestLib::tempdir;

program_help_ok('pg_controldata');
program_version_ok('pg_controldata');
program_options_handling_ok('pg_controldata');
command_fails(['pg_controldata'], 'pg_controldata without arguments fails');
command_fails([ 'pg_controldata', 'nonexistent' ],
	'pg_controldata with nonexistent directory fails');
<<<<<<< HEAD
system_or_bail 'initdb', '-D', "$tempdir/data", '-A', 'trust';
=======
standard_initdb "$tempdir/data";
>>>>>>> FETCH_HEAD
command_like([ 'pg_controldata', "$tempdir/data" ],
	qr/checkpoint/, 'pg_controldata produces output');
