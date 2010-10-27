package Net::OAI::ORE::Agent;

=head1 NAME

Net::OAI::ORE::Agent - Object to represent http://purl.org/dc/terms/Agent

=head1 SYNPOSIS

  my $agent=Net::OAI::ORE::Agent->new;
  $agent->name("A Person");
  $agent->mbox("person\@example.org");
  print "Agent = ".$agent->name." <".$agent->mbox.">\n";

=head1 DESCRIPTION


=cut

use strict;
use warnings;

use Class::Accessor;

use base qw(Class::Accessor);
Net::OAI::ORE::Agent->mk_accessors(qw(uri name mbox));

=head1 METHODS

=head2 Creator 

=head3 new()

Create Net::OAI::ORE::Agent, may set uri, name and mbox via
hash arguments.

=cut

sub new {
  my $class=shift;
  my $self={@_};
  bless $self, (ref($class) || $class);
  return($self);
}

=head2 Accessors

=head3 uri

URI of the Agent. This may be a blank node id. Use instead
L<real_uri> if you want only globally meaningful URI.

=head3 real_uri

Wrapper around L<uri> which returns either a globally meaningful
URI or undef if not set or a blank node. Cannot be used to set
L<uriXX>.

=cut

sub real_uri {
  my $self=shift;
  my $uri=$self->uri(@_);
  return( $uri && $uri!~/^_/ ? $uri : undef );
}

=head3 name

Accessor for foaf:name of this Agent

=head3 mbox

Accessor for foaf:mbox of this Agent

=cut

1;
