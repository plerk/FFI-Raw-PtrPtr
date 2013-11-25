package FFI::Raw::PtrPtr;

use strict;
use warnings;
use base qw( FFI::Raw::MemPtr );

# ABSTRACT: Like FFI::Raw::MemPtr but a pointer to a pointer
# VERSION

=head1 DESCRIPTION

This is a hack to try and deal with pointer to pointers in a
L<FFI::Raw> / L<FFI::Sweet> context.  It wasn't thought through
particularly well and I don't advocate its use (at least in its
current form), but I used it to get certain things working in
L<Archive::Libarchive::FFI> so that i could start writing tests.
I'm leaving it here for reference only.

=cut

require XSLoader;
XSLoader::load('FFI::Raw::PtrPtr', $FFI::Raw::PtrPtr::VERSION);

1;
