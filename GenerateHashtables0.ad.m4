include(HashtableNG.ad.m4)


SPHT(STR_STR,String_16,String_16,Hash_String_16,Compare_String_16,Assigner_String_16,Assigner_String_16)

SPHT(LL_STR,longlong,String_16,Hash_longlong,Compare_longlong,Assigner_longlong,Assigner_String_16)

class Assigner_STRP
{
      methods:
         static void assign(&String_16* x1,String_16* x2);
};

class Hash_STRP
{
       methods:
         static int hash(String_16* x);
};

class Compare_STRP
{
       methods:
         static int compare(String_16* x1,String_16* x2);
};

SPHT(LL_STRP,longlong,String_16*,Hash_longlong,Compare_longlong,Assigner_longlong,Assigner_STRP)
SPHT(STRP_STRP,String_16*,String_16*,Hash_STRP,Compare_STRP,Assigner_STRP,Assigner_STRP)




