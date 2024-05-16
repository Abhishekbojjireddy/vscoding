public class SOQLDemo {
    public void getAllAccount(){
        List<Account> act= [Select id,name from account];
        for(Account a : act){
            System.debug('Account id = ' +a.id +' Account Name = '+a.name);
        }
    } 
}