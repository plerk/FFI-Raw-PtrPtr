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
DESTROY(self)
	FFI_Raw_PtrPtr_t *self

	CODE:
		void **ptr = self;
		Safefree(ptr);
