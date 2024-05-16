public class SOSLDemo {
    public void searchText(){
        List<List<sObject>>sText= [find 'gene' in name fields returning Account(id,name),Contact(id,name)];
        List<Account>act =sText[0];
        List<Contact>con =stext[1];
        if(act.size() > 0){
            for(Account a : act){
                System.debug('Account id=' + a.id +'Account Name='+a.name);
            }
        }
        else{
            System.debug('No Account Found');
        }
        if(con.size()>0){
            for(Contact c : con) {
                System.debug('Contact id =' + c.id+'Contact Name=' +c.name);
            }
        }
        else{
            System.debug('No Contact Found');
        }
    }
}