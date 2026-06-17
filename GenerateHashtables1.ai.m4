include(HashtableNG.ai.m4)

Import
{
  "Strings.ad",
  "HashAdapters0.ad",
  "Hashtables0.ad",
  "Hashtables1.ad"
}




void Assigner_HT_String::assign(&SPHT_STR_STR* x1, &SPHT_STR_STR* x2)
{
   if(x1 == NULL){ x1 = new SPHT_STR_STR; }

   x1 = x2;
}

SPHT_IMPL(STR_HTS,String_16,SPHT_STR_STR*,Hash_String_16,Compare_String_16,Assigner_String_16,Assigner_HT_String)
