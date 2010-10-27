#!perl -T

use Test::More tests => 5;

BEGIN {
	use_ok( 'Net::OAI::ORE::ReM' );
	use_ok( 'Net::OAI::ORE::Model' );
	use_ok( 'Net::OAI::ORE::Constant' );
	#use_ok( 'Net::OAI::ORE::Atom' );
	#use_ok( 'Net::OAI::ORE::AtomWriter' );
	use_ok( 'Net::OAI::ORE::N3' );
	use_ok( 'Net::OAI::ORE::RDFXML' );
}

diag( "Testing Net::OAI::ORE $Net::OAI::ORE::ReM::VERSION, Perl $], $^X" );
