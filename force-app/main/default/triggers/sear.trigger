trigger sear on Contact (before insert) {
if(trigger.isinsert && trigger.isbefore){
search.get(trigger.new);
}

}