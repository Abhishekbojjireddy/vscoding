trigger campbackup on Campaign (before insert,after insert , before update , after update ,before delete , after delete , after undelete) {
if(trigger.isdelete && trigger.isafter){
camparchieve.cambackup(trigger.old);
}
}