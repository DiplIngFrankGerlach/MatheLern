include(HashtableNG.ai.m4)

Import
{
  "Strings.ad",
  "HashAdapters0.ad",
  "Hashtables0.ad"
}

SPHT_IMPL(STR_STR,String_16,String_16,Hash_String_16,Compare_String_16,Assigner_String_16,Assigner_String_16)
SPHT_IMPL(LL_STR,longlong,String_16,Hash_longlong,Compare_longlong,Assigner_longlong,Assigner_String_16)
