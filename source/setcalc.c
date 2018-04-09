//==============================================================================
//
//  @file setcalc.c
//  @author Yves Candau <ycandau@sfu.ca>
//  
//  @brief A Max external to perform musical set theory calculations. It extends
//  the similar object by Matthew McCabe, with 32 bits and 64 bits version
//  available for Windows and Mac, and a few additions such as outputting
//  either Forte or Rahn prime forms, and processing sets of any length.
//  
//  This Source Code Form is subject to the terms of the Mozilla Public
//  License, v. 2.0. If a copy of the MPL was not distributed with this
//  file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
//==============================================================================

//==============================================================================
//  Header files
//==============================================================================

#include "ext.h"
#include "ext_obex.h"

//==============================================================================
//  Structure declaration for the object
//==============================================================================

typedef struct _setcalc {

  t_object obj;

  // Outlets
  void* outl_complement;
  void* outl_sorted;
  void* outl_normal;
  void* outl_prime;
  void* outl_icv;
  void* outl_forte;

  // Attributes
  char a_verbose;
  t_symbol* a_prime_type_sym;
  short a_prime_type;

} t_setcalc;

//==============================================================================
//  Static variables
//==============================================================================

/*******************************************************************************
*  Global pointer to the class
*/
static t_class* setcalc_class;

/*******************************************************************************
*  Static arrays to store the prime forms and zsets
*
*  The prime forms can be represented by unique identifiers using
*  hexadecimals numbers. Pitch 10 is then 'A' and pitch 11 is 'B'.
*  A 64 bit int, i.e. 16 nybbles, is sufficient for the longest prime forms.
*/
static t_uint64 PF1[1] = {
  0x0
};

static t_uint64 PF2[6] = {
  0x01, 0x02, 0x03, 0x04, 0x05, 0x06
};

static t_uint64 PF3[12] = {
  0x012, 0x013, 0x014, 0x015, 0x016, 0x024, 0x025, 0x026, 0x027, 0x036, 0x037,
  0x048
};

static t_uint64 PF4[29] = {
  0x0123, 0x0124, 0x0134, 0x0125, 0x0126, 0x0127, 0x0145, 0x0156, 0x0167,
  0x0235, 0x0135, 0x0236, 0x0136, 0x0237, 0x0146, 0x0157, 0x0347, 0x0147,
  0x0148, 0x0158, 0x0246, 0x0247, 0x0257, 0x0248, 0x0268, 0x0358, 0x0258,
  0x0369, 0x0137
};

static t_uint64 PF5[38] = {
  0x01234, 0x01235, 0x01245, 0x01236, 0x01237, 0x01256, 0x01267, 0x02346,
  0x01246, 0x01346, 0x02347, 0x01356, 0x01248, 0x01257, 0x01268, 0x01347,
  0x01348, 0x01457, 0x01367, 0x01568, 0x01458, 0x01478, 0x02357, 0x01357,
  0x02358, 0x02458, 0x01358, 0x02368, 0x01368, 0x01468, 0x01369, 0x01469,
  0x02468, 0x02469, 0x02479, 0x01247, 0x03458, 0x01258
};

static t_uint64 PF6[50] = {
  0x012345, 0x012346, 0x012356, 0x012456, 0x012367, 0x012567, 0x012678,
  0x023457, 0x012357, 0x013457, 0x012457, 0x012467, 0x013467, 0x013458,
  0x012458, 0x014568, 0x012478, 0x012578, 0x013478, 0x014589, 0x023468,
  0x012468, 0x023568, 0x013468, 0x013568, 0x013578, 0x013469, 0x013569,
  0x023679, 0x013679, 0x014579, 0x024579, 0x023579, 0x013579, 0x02468A,
  0x012347, 0x012348, 0x012378, 0x023458, 0x012358, 0x012368, 0x012369,
  0x012568, 0x012569, 0x023469, 0x012469, 0x012479, 0x012579, 0x013479,
  0x014679
};

static t_uint64 PF7[38] = {
  0x0123456, 0x0123457, 0x0123458, 0x0123467, 0x0123567, 0x0123478,
  0x0123678, 0x0234568, 0x0123468, 0x0123469, 0x0134568, 0x0123479,
  0x0124568, 0x0123578, 0x0124678, 0x0123569, 0x0124569, 0x0145679,
  0x0123679, 0x0125679, 0x0124589, 0x0125689, 0x0234579, 0x0123579,
  0x0234679, 0x0134579, 0x0124579, 0x0135679, 0x0124679, 0x0124689,
  0x0134679, 0x0134689, 0x012468A, 0x013468A, 0x013568A, 0x0123568,
  0x0134578, 0x0124578
};

static t_uint64 PF8[29] = {
  0x01234567, 0x01234568, 0x01234569, 0x01234578, 0x01234678, 0x01235678,
  0x01234589, 0x01234789, 0x01236789, 0x02345679, 0x01234579, 0x01345679,
  0x01234679, 0x01245679, 0x01234689, 0x01235789, 0x01345689, 0x01235689,
  0x01245689, 0x01245789, 0x0123468A, 0x0123568A, 0x0123578A, 0x0124568A,
  0x0124678A, 0x0134578A, 0x0124578A, 0x0134679A, 0x01235679
};

static t_uint64 PF9[12] =
{
  0x012345678, 0x012345679, 0x012345689, 0x012345789, 0x012346789, 0x01234568A,
  0x01234578A, 0x01234678A, 0x01235678A, 0x01234679A, 0x01235679A, 0x01245689A
};

static t_uint64 PF10[6] = {
  0x0123456789, 0x012345678A, 0x012345679A, 0x012345689A, 0x012345789A,
  0x012346789A
};

static t_uint64 PF11[1] = {
  0x0123456789A
};

static t_uint64 PF12[1] = {
  0x0123456789AB
};

static short ZS4[2] = { 15, 29 };
static short ZS5[6] = { 12, 17, 18, 36, 37, 38 };
static short ZS6[30] = {
  3, 4, 6, 10, 11, 12, 13, 17, 19, 23, 24, 25, 26, 28, 29, 36, 37, 38, 39, 40,
  41, 42, 43, 44, 45, 46, 47, 48, 49, 50 };

static t_uint64* primeforms[13] = {
  NULL,  PF1,  PF2,  PF3, PF4, PF5, PF6, PF7, PF8,  PF9, PF10, PF11, PF12 };
static short* zsets[13] = {
  NULL, NULL, NULL, NULL, ZS4, ZS5, ZS6, ZS5, ZS4, NULL, NULL, NULL, NULL };
static short primeforms_cnt[13] = {
  1,    1,    6,   12,  29,  38,  50,  38,  29,   12,    6,    1,    1 };
static short zsets_cnt[13] = {
  0,    0,    0,    0,   2,   6,  30,   6,   2,    0,    0,    0,    0 };

//==============================================================================
//  Function prototypes
//==============================================================================

// Object methods
void* setcalc_new(t_symbol* sym, long argc, t_atom* argv);
void setcalc_free(t_setcalc* x);
void setcalc_assist(t_setcalc* x, void* b, long msg, long arg, char* str);

// Report functions
void setcalc_warn_mess(t_setcalc* x, t_symbol* sym, const char* msg);
void setcalc_warn_argv(
  t_setcalc* x, t_symbol* sym, long argc, t_atom* argv, long index);

// Attribute setters and getters
t_max_err a_set_prime_type(
  t_setcalc* x, t_object* attr, long argc, t_atom* argv);

// Input methods
void setcalc_int(t_setcalc* x, long val);
void setcalc_float(t_setcalc* x, double val);
void setcalc_list(t_setcalc* x, t_symbol* sym, long argc, t_atom* argv);
void setcalc_anything(t_setcalc* x, t_symbol* sym, long argc, t_atom* argv);

// Musical set theory calculations
t_bool set_is_less(
  const short* left_set, short left_ind,
  const short* right_set, short right_ind,
  short length, short type);

void calc_normal_form(
  const short* set, short* normalform, short length, short type);

void calc_prime_form(
  const short* normalform, short* primeform, short length, short type);

void calc_icv(
  const short* primeform, short* vector, short length);

short find_prime_form_index(const short* primeform, short length);

t_bool is_zset(short forte, short length);

t_symbol* calc_forte_number(const short* primeform, short length);

//==============================================================================
//  Function declarations
//==============================================================================

//******************************************************************************
//  Set various properties for an attribute.
//
//  @param c The class.
//  @param attrname The name of the attribute as a C string.
//  @param order The order of the attribute in the inspector menu.
//  @param category The name of the category in the inspector menu.
//  @param style The style of the attribute ("text", "onoff", "rgba", "enum",
//    "enumindex", "rect", "font", "file")
//  @param label A short description for the inspector menu.
//
void attr_set_propr(t_class* c, const char* attrname,
  const char* order, const char* category, const char* style,
  const char* label) {

  CLASS_ATTR_BASIC(c, attrname, 0);
  CLASS_ATTR_SAVE(c, attrname, 0);
  CLASS_ATTR_SELFSAVE(c, attrname, 0);
  if (order) { CLASS_ATTR_ORDER(c, attrname, 0, order); }
  if (category) { CLASS_ATTR_CATEGORY(c, attrname, 0, category); }
  if (style) { CLASS_ATTR_STYLE(c, attrname, 0, style); }
  if (label) { CLASS_ATTR_LABEL(c, attrname, 0, label); }
}

//******************************************************************************
//  Initialization function
//
void C74_EXPORT ext_main(void* r) {

  t_class* c;

  c = class_new("y.setcalc", (method)setcalc_new, (method)setcalc_free,
    (long)sizeof(t_setcalc), (method)NULL, A_GIMME, 0);

  class_addmethod(c, (method)setcalc_assist, "assist", A_CANT, 0);
  class_addmethod(c, (method)setcalc_int, "int", A_LONG, 0);
  class_addmethod(c, (method)setcalc_float, "float", A_FLOAT, 0);
  class_addmethod(c, (method)setcalc_list, "list", A_GIMME, 0);
  class_addmethod(c, (method)setcalc_anything, "anything", A_GIMME, 0);

  // Attribute: 'prime_type' to toggle between Rahn and Forte primes
  CLASS_ATTR_SYM(c, "prime_type", 0, t_setcalc, a_prime_type_sym);
  attr_set_propr(c, "prime_type", "1", "y.setcalc", NULL, "Prime form type");
  CLASS_ATTR_ENUM(c, "prime_type", 0, "forte rahn");
  CLASS_ATTR_ACCESSORS(c, "prime_type", NULL, a_set_prime_type);

  // Attribute: 'verbose' to turn warnings on or off
  CLASS_ATTR_CHAR(c, "verbose", 0, t_setcalc, a_verbose);
  attr_set_propr(c, "verbose", "2", "y.setcalc", "onoff", "Report warnings");

  class_register(CLASS_BOX, c);
  setcalc_class = c;
}

//******************************************************************************
//  Create a new instance
//
void* setcalc_new(t_symbol* sym, long argc, t_atom* argv) {

  t_setcalc* x = NULL;

  x = (t_setcalc*)object_alloc(setcalc_class);

  if (x == NULL) {
    error("setcalc: Object allocation failed.");
    return NULL;
  }

  x->outl_complement = listout(x);
  x->outl_sorted = listout(x);
  x->outl_normal = listout(x);
  x->outl_prime = listout(x);
  x->outl_icv = listout(x);
  x->outl_forte = outlet_new(x, NULL);

  object_attr_setsym(x, gensym("prime_type"), gensym("rahn"));
  x->a_verbose = 1;

  return x;
}

//******************************************************************************
//  Free the instance
//
void setcalc_free(t_setcalc* x) {

  // nothing to free
}

//******************************************************************************
//  Assist function
//
void setcalc_assist(t_setcalc* x, void* b, long msg, long arg, char* str) {

  switch (msg) {
  case ASSIST_INLET:
    switch (arg) {
    case 0:
      sprintf(str, "Inlet 0: List of pitches (0 to 11 integers only).");
      return;
    default:
      return;
    }
  case ASSIST_OUTLET:
    switch (arg) {
    case 0:
      sprintf(str, "Outlet 0: Forte Number (symbol).");
      return;
    case 1:
      sprintf(str, "Outlet 1: Interval Class Vector (list).");
      return;
    case 2:
      sprintf(str, "Outlet 2: Prime form (list).");
      return;
    case 3:
      sprintf(str, "Outlet 3: Normal form (list).");
      return;
    case 4:
      sprintf(str, "Outlet 4: Sorted and unique pitches only (list).");
      return;
    case 5:
      sprintf(str, "Outlet 5: Complementary set (list).");
      return;
    default:
      return;
    }
  }
}

//******************************************************************************
//  Warn on invalid messages (int or list expected)
//
void setcalc_warn_mess(t_setcalc* x, t_symbol* sym, const char* msg) {

  if (x->a_verbose) {
    object_warn((t_object*)x,
      "%s: %s - Input should be an int or list with 0 <= pitch <= 11",
      sym->s_name, msg);
  }
}

//******************************************************************************
//  Warn on invalid values (int between 0 and 11 expected)
//
void setcalc_warn_argv(
  t_setcalc* x, t_symbol* sym, long argc, t_atom* argv, long index) {

  if (x->a_verbose) {
    const char* msg = " - Arg should be an int with 0 <= pitch <= 11";
    argv += index;
    switch (atom_gettype(argv)) {
    case A_LONG:
      object_warn((t_object* )x,
        "%s: arg[%li] = %" ATOM_LONG_FMT_MODIFIER "i (int)%s",
        sym->s_name, index, argv->a_w.w_long, msg);
      break;
    case A_FLOAT:
      object_warn((t_object* )x,
        "%s: arg[%li] = %" ATOM_FLOAT_FMT_MODIFIER "f (float)%s",
        sym->s_name, index, argv->a_w.w_float, msg);
      break;
    case A_SYM:
      object_warn((t_object* )x,
        "%s: arg[%li] = %s (symbol)%s",
        sym->s_name, index, argv->a_w.w_sym->s_name, msg);
      break;
    }
  }
}

//******************************************************************************
//  Attribute setter for prime_type
//
//  We switch the reference prime forms directly in the static arrays depending
//  on the mode.
//
t_max_err a_set_prime_type(
  t_setcalc* x, t_object* attr, long argc, t_atom* argv) {

  t_symbol* sym = atom_getsym(argv);
  if ((sym == gensym("Forte")) || (sym == gensym("forte"))){
    x->a_prime_type_sym = gensym("forte");
    x->a_prime_type = 1;
    PF5[19] = 0x01378;
    PF6[28] = 0x013689;
    PF6[30] = 0x013589;
    PF7[17] = 0x0123589;
    PF7[19] = 0x0124789;
    PF8[25] = 0x0124579A;
  }
  else if ((sym == gensym("Rahn")) || (sym == gensym("rahn"))) {
    x->a_prime_type_sym = gensym("rahn");
    x->a_prime_type = -1;
    PF5[19] = 0x01568;
    PF6[28] = 0x023679;
    PF6[30] = 0x014579;
    PF7[17] = 0x0145679;
    PF7[19] = 0x0125679;
    PF8[25] = 0x0134578A;
  }
  else {
    if (x->a_verbose) {
      object_warn((t_object*)x,
        "prime_type: Invalid value - Attr should be \'Rahn\' or \'Forte\'");
    }
    return MAX_ERR_GENERIC;
  }
  return MAX_ERR_NONE;
}

//******************************************************************************
//  Process incoming integers, as if it is a one element list
//
void setcalc_int(t_setcalc* x, long val) {

  t_atom atom[1];
  atom_setlong(atom, val);
  setcalc_list(x, gensym("int"), 1, atom);
}

//******************************************************************************
//  Process incoming integers, as if it is a one element list
//
void setcalc_float(t_setcalc* x, double val) {

  setcalc_warn_mess(x, gensym("float"), "Invalid message");
}

//******************************************************************************
//  Process incoming lists
//
void setcalc_list(t_setcalc* x, t_symbol* sym, long argc, t_atom* argv) {

  short pitch;
  t_bool tally[12];
  for (short i = 0; i < 12; i++) { tally[i] = false; }

  // Filter out non long and out of range values
  // and tally the valid values to determine what is in the set
  for (short i = 0; i < argc; i++) {
    if ((atom_gettype(argv + i) == A_LONG)
      && ((pitch = (short)(argv + i)->a_w.w_long) >= 0)
      && (pitch <= 11)) {
      tally[pitch] = true;
    }
    else {
      setcalc_warn_argv(x, sym, argc, argv, i);
    }
  }

  // Use the tally to get a sorted set and its complement
  short set[12];
  short length = 0;
  short compl_set[12];
  short compl_cnt = 0;
  for (short i = 0; i < 12; i++) {
    if (tally[i] == true) { set[length++] = i; }
    else { compl_set[compl_cnt++] = i; }
  }

  // Exit if there are no valid values
  if (length == 0) {
    setcalc_warn_mess(x, sym, "No valid values");
    return;
  }

  // Output the complementary set
  t_atom output[12];
  for (short i = 0; i < compl_cnt; i++) {
    atom_setlong(output + i, compl_set[i]);
  }
  outlet_list(x->outl_complement, NULL, compl_cnt, output);

  // Output the sorted set
  for (short i = 0; i < length; i++) {
    atom_setlong(output + i, set[i]);
  }
  outlet_list(x->outl_sorted, NULL, length, output);

  short normalform[12];
  short primeform[12];
  short vector[6];
  t_symbol* forte_sym;

  // Perform the set calculations
  calc_normal_form(set, normalform, length, x->a_prime_type);
  calc_prime_form(normalform, primeform, length, x->a_prime_type);
  calc_icv(primeform, vector, length);
  forte_sym = calc_forte_number(primeform, length);  

  // Output the normal form, prime form, interval class vector, and Forte number
  for (short i = 0; i < length; i++) {
    atom_setlong(output + i, normalform[i]);
  }
  outlet_list(x->outl_normal, NULL, length, output);
  
  for (short i = 0; i < length; i++) {
    atom_setlong(output + i, primeform[i]);
  }
  outlet_list(x->outl_prime, NULL, length, output);

  for (short i = 0; i < 6; i++) {
    atom_setlong(output + i, vector[i]);
  }
  outlet_list(x->outl_icv, NULL, 6, output);

  outlet_anything(x->outl_forte, forte_sym, 0, NULL);
}

//******************************************************************************
//  Process incoming messages
//
void setcalc_anything(t_setcalc* x, t_symbol* sym, long argc, t_atom* argv) {

  setcalc_warn_mess(x, sym, "Invalid message");
}

//******************************************************************************
//  A comparison operator on pitch sets, used to get the normal form
//
//  A three tiered comparison operator, testing consecutively for:
//    - compact ordering
//    - left packedness
//    - lower first values
//
//  If all three tiers are equal the sets are identicals.
//
//  @param left_set An array holding the left hand set to compare.
//  @param left_first The index of the first set element in the left array.
//  @param right_set An array holding the right hand set to compare.
//  @param right_first The index of the first set element in the right array.
//  @param length The length of the set (all calculations are modulo length).
//  @param type A +1/-1 value to indicate Forte or Rahn primeform mode.
//
t_bool set_is_less(
  const short* left_set, short left_first,
  const short* right_set, short right_first,
  short length, short type) {

  // Compare for compact ordering: width between first and last pitch values
  // Indexes are calculated modulo 'length', starting from the initial indexes
  // Pitch values are calculated modulo 12
  short width_left = (
    left_set[(left_first - 1 + length) % length]
    - left_set[left_first]
    + 12) % 12;
  short width_right = (
    right_set[(right_first - 1 + length) % length]
    - right_set[right_first]
    + 12) % 12;

  // Look for a strict comparison result, otherwise continue to the next tier
  if (width_left < width_right) { return true; }
  else if (width_left > width_right) { return false; }

  // Compare for left packedness: widths between successive pitch values
  // There are two alternatives:
  // Forte's goes left to right, Rahn's goes right to left
  for (short i = (1 - type) / 2 * (length - 2); 
    i != (1 + type) / 2 * (length - 2) + type;
    i += type) {
    width_left = (
      left_set[(left_first + i + 1) % length]
      - left_set[(left_first + i) % length]
      + 12) % 12;
    width_right = (
      right_set[(right_first + i + 1) % length]
      - right_set[(right_first + i) % length]
      + 12) % 12;
    if (type * (width_left - width_right) < 0) { return true; }
    else if (type * (width_left - width_right) > 0) { return false; }
  }

  // Compare the first pitch values
  if (left_set[left_first] < right_set[right_first]) { return true; }
  else { return false; }
}

//******************************************************************************
//  Calculate the normal form from the sorted set
//
//  We use the comparison operator over all circular permutations of the set.
//
//  @param set An array holding the set whose normal form we calculate.
//  @param normalform An array to output the normal form.
//  @param length The length of the set (all calculations are modulo length).
//  @param type A +1/-1 value to indicate Forte or Rahn primeform mode.
//
void calc_normal_form(
  const short* set, short* normalform, short length, short type) {

  short min_ind = 0;
  for (short i = 1; i < length; i++) {
    if (set_is_less(set, i, set, min_ind, length, type)) { min_ind = i; }
  }

  for (short i = 0; i < length; i++) {
    normalform[i] = set[(min_ind + i) % length];
  }
}

//******************************************************************************
//  Calculate the prime form from the normal form
//
//  @param normalform An array holding the normal form.
//  @param primeform An array to output the prime form.
//  @param length The length of the set.
//  @param type A +1/-1 value to indicate Forte or Rahn primeform mode.
//
void calc_prime_form(
  const short* normalform, short* primeform, short length, short type) {

  // Get the inverted set (using primeform as a temporary array)
  // A new sort is not necessary and we can just reverse the order of the values
  for (short i = 0; i < length; i++) {
    primeform[i] = (12 - normalform[length - 1 - i]) % 12;
  }

  // Get the normal form of the inverted set
  short normalform_inv[12];
  calc_normal_form(primeform, normalform_inv, length, type);

  // The prime form is the lowest of the original and inverted forms,
  // transposed to begin with 0
  const short* lowest =
    set_is_less(normalform, 0, normalform_inv, 0, length, type)
    ? normalform
    : normalform_inv;
  for (short i = 0; i < length; i++) {
    primeform[i] = (lowest[i] - lowest[0] + 12) % 12;
  }
}

//******************************************************************************
//  Calculate the interval class vector from the prime form
//
//  The interval class vector is a 6-member tally of the interval classes
//  between distinct elements of a set.
//
//  @param primeform An array holding the prime form.
//  @param icv An array to output the interval class vector.
//  @param length The length of the set.
//
void calc_icv(const short* primeform, short* icv, short length) {

  for (short i = 0; i < 6; i++) { icv[i] = 0; }

  short int_class;
  for (short i = 0; i < length - 1; i++) {
    for (short j = i + 1; j < length; j++) {
      // Calculate the interval and fold it to get the interval class
      int_class = (primeform[j] - primeform[i] + 12) % 12;
      int_class = int_class > 6 ? 12 - int_class : int_class;
      icv[int_class - 1]++;
    }
  }
}

//******************************************************************************
//  Look through the static array of prime form identifiers
//  and return the index of the match
//
//  @param primeform An array holding the prime form.
//  @param length The length of the set.
//
short find_prime_form_index(const short* primeform, short length) {

  // Calculate the hexadecimal identifier of the primeform
  t_uint64 pf_hex = 0;    // primeform[0] is always 0
  for (short i = 1; i < length; i++) {
    pf_hex = pf_hex * 16 + primeform[i];
  }

  // Loop through the array to find a match
  for (short i = 0; i < primeforms_cnt[length]; i++) {
    if (pf_hex == primeforms[length][i]) { return i + 1; }
  }

  // This should not happen: the prime form was not found in the array
  assert(false);
  return 0;
}

//******************************************************************************
//  Predicate function to determine if a prime form is a Z set
//
//  @param forte The Forte number of the set.
//  @param length The length of the set.
//
t_bool is_zset(short forte, short length) {

  for (short i = 0; i < zsets_cnt[length]; i++) {
    if (zsets[length][i] == forte) { return true; }
  }
  return false;
}

//******************************************************************************
//  Get the Forte number from the prime form
//
//  @param primeform An array holding the prime form.
//  @param length The length of the set.
//
t_symbol* calc_forte_number(const short* primeform, short length) {

  // Get the Forte number as the index of a match in the array of primeforms
  short forte = find_prime_form_index(primeform, length);

  // Test if the prime form is a Z related set and create output
  char* zset_str = is_zset(forte, length) ? "Z" : "";
  char forte_str[6];
  sprintf(forte_str, "%d-%s%d", length, zset_str, forte);

  return gensym(forte_str);
}
