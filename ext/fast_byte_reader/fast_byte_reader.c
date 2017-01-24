#include <ruby.h>

static VALUE fast_byte_reader_initialize(VALUE fbr, VALUE io);
static VALUE fast_byte_reader_read(VALUE fbr, int len);
static VALUE fast_byte_reader_seek(VALUE fbr, VALUE pos);
static VALUE fast_byte_reader_byte(VALUE fbr);
static VALUE fast_byte_reader_var_int32(VALUE fbr);
static VALUE fast_byte_reader_eof(VALUE fbr);
static VALUE fast_byte_reader_close(VALUE fbr);

static ID id_read, id_write;

VALUE fast_byte_reader_initialize(VALUE obj, VALUE arg) {
  if(rb_respond_to(arg, rb_intern("read"))) {
    rb_funcall(arg, rb_intern("binmode"), 0);
    rb_iv_set(obj, "@io", arg);
  } else {
    rb_raise(rb_eTypeError, "IO required to init FastByteReader");
  }
  return obj;
}

VALUE fast_byte_reader_read(VALUE obj, int len) {
  VALUE io = rb_iv_get(obj, "@io");
  VALUE string = rb_funcall(io, id_read, 1, len);
  return string;
}

VALUE fast_byte_reader_byte(VALUE obj) {
  VALUE io = rb_iv_get(obj, "@io");
  VALUE string = rb_funcall(io, rb_intern("getbyte"), 0);
  return string;
}

VALUE fast_byte_reader_seek(VALUE obj, VALUE pos) {
  VALUE io = rb_iv_get(obj, "@io");
  return rb_funcall(io, rb_intern("seek"), 2, pos, INT2FIX(1));
}

static VALUE fast_byte_reader_var_int32(VALUE fbr) {
  unsigned long long int_val = 0;
  unsigned shift = 0;
  unsigned char byte;
  unsigned int count = 0;

  while (1) {
    if((count + 1) == 4) {
      return INT2NUM(int_val);
    }
    if (shift >= 64) {
      rb_raise(rb_eArgError, "too many bytes when decoding varint");
    }
    byte = (unsigned char)NUM2INT(fast_byte_reader_byte(fbr));
    int_val |= ((unsigned long long)(byte & 0x7f)) << shift;
    shift += 7;
    count = count + 1;
    if ((byte & 0x80) == 0) {
      return INT2NUM(int_val);
    }
  }
}

VALUE fast_byte_reader_eof(VALUE obj) {
  VALUE io = rb_iv_get(obj, "@io");
  VALUE eof = rb_funcall(io, rb_intern("eof?"), 0);
  return eof;
}

VALUE fast_byte_reader_close(VALUE obj) {
  VALUE io = rb_iv_get(obj, "@io");
  VALUE close = rb_funcall(io, rb_intern("close"), 0);
  return close;
}

void Init_fast_byte_reader()
{
    id_read = rb_intern("read");
    static VALUE klass;

    klass = rb_define_class("FastByteReader", rb_cObject);

    rb_define_attr(klass, "io", 1, 1);
    rb_define_method(klass, "initialize", fast_byte_reader_initialize, 1);
    rb_define_method(klass, "read", fast_byte_reader_read, 1);
    rb_define_method(klass, "byte", fast_byte_reader_byte, 0);
    rb_define_method(klass, "seek", fast_byte_reader_seek, 1);
    rb_define_method(klass, "var_int32", fast_byte_reader_var_int32, 0);
    rb_define_method(klass, "eof?", fast_byte_reader_eof, 0);
    rb_define_method(klass, "close", fast_byte_reader_close, 0);
}
