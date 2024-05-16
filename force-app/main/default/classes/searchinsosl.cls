public class searchinsosl {
    public void all(){
        list<list<sobject>> act= [find 'arun' in all fields returning account(id,name) ,contact(id,name)];
        list<account> ant = act[0];
        list<contact> cnt = act[1];
        for(account a : ant){
            system.debug('acc id' + a.id +'acc name' + a.name);
        }
        for(contact c : cnt){
            system.debug('con id' + c.id + 'con name' + c.name);
        }
    }

}