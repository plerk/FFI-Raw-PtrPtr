#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

typedef void FFI_Raw_PtrPtr_t;

MODULE = FFI::Raw::PtrPtr			PACKAGE = FFI::Raw::PtrPtr

FFI_Raw_PtrPtr_t *
new(class)
	SV *class

	CODE:
		Newx(RETVAL, sizeof(void*), char);
		void **ptr = RETVAL;
		*ptr = NULL;

	OUTPUT: RETVAL

void *
dereference(self)
	FFI_Raw_PtrPtr_t *self

	CODE:
		void **ptr = self;
		RETVAL = *ptr;

	OUTPUT: RETVAL

void
copy_to_buffer(self, buffer, size)
	FFI_Raw_PtrPtr_t *self
	SV *buffer
	size_t size

        CODE:
		void **ptr = self;
        	sv_setpvn(buffer, *ptr, size);
        OUTPUT:
        	buffer

void *
scalar_to_pointer(class, other)
        SV *class
        SV *other
        
        CODE:
                void *myptr = NULL;
                size_t size = 0;
                myptr = SvPV(other, size);
                RETVAL = myptr;
                
        OUTPUT:
                RETVAL
                
                

void
DESTROY(self)
	FFI_Raw_PtrPtr_t *self

	CODE:
		void **ptr = self;
		Safefree(ptr);
