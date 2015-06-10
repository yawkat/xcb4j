%module LibXcb

//from swig lib
%include "typemaps.i";
//%include "arrays_java.i";
%include "carrays.i"
%array_class(int, IntArray);
%array_class(unsigned short, UShortArray);
%array_class(unsigned char, UCharArray);

%include "various.i";
%include "enumtypeunsafe.swg";
SWIG_JAVABODY_PROXY(public, public, SWIGTYPE);
SWIG_JAVABODY_TYPEWRAPPER(public, public, public, SWIGTYPE);


//own lib
%include "primitives_xcb.i";
%include "niobuffers_java.i";
%include "xcb_generic_error_t.i";
%include "equals_hash_java.i";
%include "custom_xcb.i";
%include "xkb.i";
//TODO somewhere a pointer-pointer of xcb_screen_t is used. handle this.

%{
#include <xcb/xcb.h>
#include <xcb/xproto.h>
#include <xcb/damage.h>
#include <xcb/shape.h>
#include <xcb/sync.h>
#include <xcb/xcb_icccm.h>
#include <xcb/xcb_keysyms.h>
#include <xcb/xcb_util.h>
#include <xcb/xfixes.h>
#include <xcb/composite.h>
#include <xcb/render.h>
#include <xcb/xcb_atom.h>
#include <xcb/xcb_ewmh.h>
#include <xcb/xkb.h>
#include <xkbcommon/xkbcommon.h>
#include <xkbcommon/xkbcommon-compat.h>
#include <xkbcommon/xkbcommon-keysyms.h>
#include <xkbcommon/xkbcommon-names.h>
#include <xkbcommon/xkbcommon-x11.h>
%}

%apply char **STRING_ARRAY {char **host};

//xcb_extenstion_t is an opaque structure that we only want to pass around after the extension is queried.
%immutable;
extern xcb_extension_t xcb_damage_id;
extern xcb_extension_t xcb_xfixes_id;
extern xcb_extension_t xcb_render_id;
extern xcb_extension_t xcb_composite_id;
extern xcb_extension_t xcb_shape_id;
extern xcb_extension_t xcb_sync_id;
extern xcb_extension_t xcb_xkb_id;
%mutable;

%include "/usr/include/xcb/xcb.h";
%include "/usr/include/xcb/xproto.h";
%import "/usr/include/xcb/xcbext.h";
%include "/usr/include/xcb/damage.h";
%include "/usr/include/xcb/shape.h";
%include "/usr/include/xcb/sync.h";
%include "/usr/include/xcb/xcb_icccm.h";
%include "/usr/include/xcb/xcb_keysyms.h";
%include "/usr/include/xcb/xcb_util.h";
%include "/usr/include/xcb/xfixes.h";
%include "/usr/include/xcb/composite.h";
%include "/usr/include/xcb/render.h";
%include "/usr/include/xcb/xcb_atom.h";
%include "/usr/include/xcb/xcb_ewmh.h";
%include "/usr/include/xcb/xkb.h";
%include "/usr/include/xkbcommon/xkbcommon.h";
%include "/usr/include/xkbcommon/xkbcommon-compat.h";
%include "/usr/include/xkbcommon/xkbcommon-keysyms.h";
%include "/usr/include/xkbcommon/xkbcommon-names.h";
%include "/usr/include/xkbcommon/xkbcommon-x11.h";
