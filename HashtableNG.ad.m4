

/***
* Sappeur Hashtable, Next Generation
*
* Key-Value Style
  Keys and Values are stored as values, not pointers (may use pointers internally (RAII etc), though)
  keys must implement getHashCode() and equals()

  keyType type of the key entry
  valueType type of the value entry
  hashAC Hash Adapter Class
  compareAC Comparison Adapter Class
*/



define(SPHT,

    class dllexport_a SPHT_Entry_$1
    {
         $2 key;
         $3 value;
         SPHT_Entry_$1 * next;
         int is_used; 
        methods:
         SPHT_Entry_$1();

    };
    
    class dllexport_a SPHT_$1
    {
         *SPHT_Entry_$1 _elements[];
         int numberOfEntries;
         int iterator_pos;
         SPHT_Entry_$1* iterator_next; 
       methods:
         SPHT_$1();         

         void insert(&$2 key,&$3 value);

         int search(&$2 key,&$3 value);

         void del(&$2 key);

         static void insertInternally(*SPHT_Entry_$1 bins[],
                                      &$2 key,
                                      &$3 value);
                    
         void resetIterator();

         int nextElem(&$2 key,&$3 value);

         int size();

         void clear();
    };
    
)


