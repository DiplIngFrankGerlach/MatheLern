include(HashtableNG.ai.m4)

Import
{
  "Strings.ad",
  "HashAdapters0.ad",
  "Hashtables0.ad"
}

SPHT_IMPL(STR_STR,String_16,String_16,Hash_String_16,Compare_String_16,Assigner_String_16,Assigner_String_16)
SPHT_IMPL(LL_STR,longlong,String_16,Hash_longlong,Compare_longlong,Assigner_longlong,Assigner_String_16)

void Assigner_STRP::assign(&String_16* x1,String_16* x2)
{
  if(x1 == NULL) { x1 = new String_16; }
  x1.assign(x2);
}

int Hash_STRP::hash(String_16* x)
{
     if(x == NULL) { return 0; }
     
     return x.hashCode();
}

int Compare_STRP::compare(String_16* x1,String_16* x2)
{
   if(x1 == NULL) { return 0; }
   if(x2 == NULL) { return 0; }
   return x1.equals(*x2);
}
SPHT_IMPL(LL_STRP,longlong,String_16*,Hash_longlong,Compare_longlong,Assigner_longlong,Assigner_STRP)

SPHT_IMPL(STRP_STRP,String_16*,String_16*,Hash_STRP,Compare_STRP,Assigner_STRP,Assigner_STRP)

