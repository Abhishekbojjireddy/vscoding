trigger CountChild on Child__c (after insert, after delete) {
   if(trigger.isinsert && trigger.isafter)
   {
     totalcount.chcount(trigger.new);
   }
   if(trigger.isdelete && trigger.isafter)
   {
       totalcount.chcount(trigger.old);
   }
   
}