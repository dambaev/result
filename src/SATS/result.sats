#define ATS_PACKNAME "result"
#define ATS_EXTERN_PREFIX "result"
#include "share/atspre_staload.hats" // include template definitions

absvt0ype result_vtb( b: bool, s:viewt0ype+, f:viewt0ype+)

praxi
  result_vt_success
  { s: viewt0ype}{f:viewt0ype}{a:viewt0ype}
  ( i: !INV(a) >> result_vtb( true, s, f)
  ):<prf> void 
praxi
  result_vt_failure
  {f:viewt0ype}{ s: viewt0ype}{ a: viewt0ype}
  ( i: !INV(a) >> result_vtb( false, s, f)
  ):<prf> void 
praxi
  result_vt_unsuccess
  { s: viewt0ype}{f:viewt0ype}
  ( i: !result_vtb(true, INV(s), f) >> s
  ):<prf> void 
praxi
  result_vt_unfailure
  {f:viewt0ype}{ s: viewt0ype}
  ( i: !result_vtb(false, s, INV(f)) >> f
  ):<prf> void 

absview result_vb( b:bool, s:view, f: view)


praxi
  result_v_success
  { s: view}{f:view}{a:view}
  ( i: !INV(a) >> result_vb( true, s, f)
  ):<prf> void 
praxi
  result_v_failure
  {f:view}{ s: view}{ a: view}
  ( i: !INV(a) >> result_vb( false, s, f)
  ):<prf> void 
praxi
  result_v_unsuccess
  { s: view}{f:view}
  ( i: !result_vb(true, INV(s), f) >> s
  ):<prf> void 
praxi
  result_v_unfailure
  {f:view}{ s: view}
  ( i: !result_vb(false, s, INV(f)) >> f
  ):<prf> void 
