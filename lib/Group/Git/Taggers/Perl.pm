package Group::Git::Taggers::Perl;

# Created on: 2015-04-18 19:09:53
# Create by:  Ivan Wills
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

use Moo;
use namespace::autoclean;
use version;
use Carp;
use English qw/ -no_match_vars /;

extends 'Group::Git::Taggers';

our $VERSION = version->new('0.0.3');

sub match {
    my ($self, $project) = @_;

    return -f 'Makefile.PL' || -f 'Build.PL' || -f 'dist.ini';
}


1;

__END__

=head1 NAME

Group::Git::Taggers::Perl - Tags repositories as containing Perl code for Group::Git

=head1 VERSION

This documentation refers to Group::Git::Taggers::Perl version 0.0.3

=head1 SYNOPSIS

   use Group::Git::Taggers::Perl;

   # Brief but working code example(s) here showing the most common usage(s)
   # This section will be as far as many users bother reading, so make it as
   # educational and exemplary as possible.


=head1 DESCRIPTION

Looks at a repository and determines if it is a Perl repository based whether
it contains one of the following files:

=over 4

=item *

Makefile.PL - Traditional Ext::Utils

=item *

Build.PL - L<Module::Build>

=item *

dist.ini - L<Dist::Zilla>

=back

=head1 SUBROUTINES/METHODS

=head2 C<match ()>

Returns true if the repository contains one of C<Makefile.PL>, C<Build.PL> or C<dist.ini>

=head1 DIAGNOSTICS

=head1 CONFIGURATION AND ENVIRONMENT

=head1 DEPENDENCIES

=head1 INCOMPATIBILITIES

=head1 BUGS AND LIMITATIONS

There are no known bugs in this module.

Please report problems to Ivan Wills (ivan.wills@gmail.com).

Patches are welcome.

=head1 AUTHOR

Ivan Wills - (ivan.wills@gmail.com)

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2015 Ivan Wills (14 Mullion Close, Hornsby Heights, NSW Australia 2077).
All rights reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. See L<perlartistic>.  This program is
distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

=cut
