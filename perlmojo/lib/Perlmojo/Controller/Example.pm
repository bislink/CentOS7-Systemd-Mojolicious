package Perlmojo::Controller::Example;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub welcome {
  my $self = shift;

  # Render template "example/welcome.html.ep" with message
  $self->render(msg => 'Home - C7.GAP.A1Z.US');
}

sub support {
  my $self = shift;

  # Render template "example/welcome.html.ep" with message
  $self->render(msg => 'Support - C7.GAP.A1Z.US');
}

sub contact {
  my $self = shift;

  # Render template "example/welcome.html.ep" with message
  $self->render(msg => 'Contact - C7.GAP.A1Z.US');
}


1;
