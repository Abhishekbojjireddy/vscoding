trigger excep on Contact (before delete) {
if(trigger.isdelete && trigger.isbefore ){
Delcon.cal(Trigger.old);
}
}