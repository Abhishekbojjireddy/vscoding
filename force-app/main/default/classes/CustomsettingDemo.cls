public class CustomsettingDemo {
    public void getvalcus(){
        Mysetting__c mcs = Mysetting__c.getInstance('ProductTriggerON/Off');
        system.debug(mcs.IsActive__c);
        if(mcs.IsActive__c == true) {
            system.debug('call the trigger');
        }
        else {
            system.debug('dont call trigger');
        }
    }
    

}