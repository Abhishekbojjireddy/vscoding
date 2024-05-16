trigger checkup on Account (before insert) {
if(trigger.isbefore && trigger.isafter){
accountupdate.change(trigger.new);
}

}