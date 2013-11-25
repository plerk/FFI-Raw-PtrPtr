# FFI::Raw::PtrPtr

Like FFI::Raw::MemPtr but a pointer to a pointer

# DESCRIPTION

This is a hack to try and deal with pointer to pointers in a
[FFI::Raw](https://metacpan.org/pod/FFI::Raw) / [FFI::Sweet](https://metacpan.org/pod/FFI::Sweet) context.  It wasn't thought through
particularly well and I don't advocate its use (at least in its
current form), but I used it to get certain things working in
[Archive::Libarchive::FFI](https://metacpan.org/pod/Archive::Libarchive::FFI) so that i could start writing tests.
I'm leaving it here for reference only.

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
