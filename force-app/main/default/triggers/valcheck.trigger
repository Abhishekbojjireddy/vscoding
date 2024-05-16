trigger valcheck on Account (before insert ) {
if(trigger.isbefore && trigger.isinsert){
Check.value(trigger.new);
}

}