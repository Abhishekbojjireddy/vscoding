trigger codel on Contact (after delete) {
if(trigger.isdelete && trigger.isafter){
ContArchieve.usearch(trigger.old);
}

}