public class Custommetademo {
     public void getvalhire(){
        My_custom_Metadata__mdt var = My_custom_Metadata__mdt.getInstance('for_the_user');
        system.debug(var.IsActive__c);
        if(var.IsActive__c == true) {
            system.debug('call the trigger');
        }
        else {
            system.debug('dont call trigger');
        }
        
    }

}