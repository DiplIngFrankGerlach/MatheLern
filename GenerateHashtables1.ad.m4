include(HashtableNG.ad.m4)


class Assigner_HT_String
{
methods:
         static void assign(&SPHT_STR_STR* x1,
                            &SPHT_STR_STR* x2);
};

SPHT(STR_HTS,String_16,SPHT_STR_STR*,Hash_String_16,Compare_String_16,Assigner_String_16,Assigner_HT_String)

