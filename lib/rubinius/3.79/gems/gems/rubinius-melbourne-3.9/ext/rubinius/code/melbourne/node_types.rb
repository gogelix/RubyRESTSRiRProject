node_types = %w[
  scope
  block
  if
  case
  when
  opt_n
  while
  until
  iter
  for
  break
  next
  redo
  retry
  begin
  rescue
  resbody
  ensure
  and
  or
  masgn
  lasgn
  dasgn
  dasgn_curr
  gasgn
  iasgn
  iasgn2
  cdecl
  cvasgn
  cvdecl
  op_asgn1
  op_asgn2
  op_asgn_and
  op_asgn_or
  op_cdecl
  call
  fcall
  vcall
  qcall
  super
  zsuper
  array
  zarray
  values
  hash
  return
  yield
  lvar
  dvar
  gvar
  ivar
  const
  cvar
  nth_ref
  back_ref
  match
  match2
  match3
  lit
  str
  dstr
  xstr
  dxstr
  evstr
  dregx
  dregx_once
  args
  args_aux
  opt_arg
  kw_arg
  postarg
  argscat
  argspush
  splat
  to_ary
  block_arg
  block_pass
  defn
  defs
  defnm
  defsm
  fun
  funm
  alias
  valias
  undef
  class
  module
  sclass
  colon2
  colon3
  dot2
  dot3
  flip2
  flip3
  self
  nil
  true
  false
  errinfo
  defined
  postexe
  alloca
  bmethod
  memo
  ifunc
  dsym
  andattrasgn
  attrasgn
  prelude
  lambda
  optblock
  last
  file
  regex
  number
  float
  encoding
  preexe
  rational
  imaginary
]

def write_node_types(list)
  File.open("node_types.cpp", "wb") do |f|
    f.puts <<EOF
/* This file is generated by node_types.rb. Do not edit. */

#include "namespace.h"
#include "node_types.hpp"

#include <stdio.h>

namespace MELBOURNE {
  static const char node_types[] = {
EOF

    indexes = [0]
    list.each do |type|
      f.puts("    \"#{type}\\0\"")
      indexes.push indexes.last + type.size + 1
    end

    f.puts("  };")
    f.puts

    f.puts("  static const unsigned short node_types_offsets[] = {")

    f.puts indexes.map { |i| "    #{i}" }.join(",\n")

    f.puts <<EOF
  };

  const char *get_node_type_string(enum node_type node) {
    if(node < #{list.size}) {
      return node_types + node_types_offsets[node];
    } else {
#define NODE_STRING_MESSAGE_LEN 20
      static char msg[NODE_STRING_MESSAGE_LEN];
      snprintf(msg, NODE_STRING_MESSAGE_LEN, "unknown node type: %d", node);
      return msg;
    }
  }
};
EOF
  end

  File.open("node_types.hpp", "wb") do |f|
    f.puts <<EOF
#ifndef MEL_NODE_TYPES_HPP
#define MEL_NODE_TYPES_HPP
/* This file is generated by node_types.rb. Do not edit. */

namespace MELBOURNE {
  enum node_type {
EOF

  f.puts list.map { |x| "    NODE_#{x.upcase}" }.join(",\n")

  f.puts <<EOF
  };

  const char *get_node_type_string(enum node_type nt);

};

#endif
EOF
  end
end

write_node_types node_types
