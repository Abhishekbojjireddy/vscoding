trigger Mercholdmap on Merchandise__c (before insert,after insert,before update,before delete ,after delete,after undelete) {
  if(trigger.isdelete && trigger.isafter){
  Mercholdmap.insertMerchandisebkup(Trigger.oldmap);
  }
  }