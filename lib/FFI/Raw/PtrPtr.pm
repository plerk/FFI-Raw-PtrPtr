package FFI::Raw::PtrPtr;

use strict;
use warnings;
use base qw( FFI::Raw::MemPtr );

# ABSTRACT: Like FFI::Raw::MemPtr but a pointer to a pointer
# VERSION

require XSLoader;
XSLoader::load('FFI::Raw::PtrPtr', $FFI::Raw::PtrPtr::VERSION);

1;
