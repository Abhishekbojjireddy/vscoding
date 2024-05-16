public class CustomHireDemo {
    public void getvalhire(){
        MyHiresetting__c var = MyHiresetting__c.getInstance('005IS000000uwng');
        system.debug(var.For_the_user__c);
        if(var.For_the_user__c == true) {
            system.debug('call the trigger');
        }
        else {
            system.debug('dont call trigger');
        }
        
    }
}