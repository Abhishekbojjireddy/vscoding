public class SOQLMerch {
    public void getAllDetails(){
        List<Merchandise__c> mar= [Select id,name ,Merchandise_Price__c from Merchandise__c];
        for(Merchandise__c m : mar){
            System.debug('Merchandise id = ' +m.id + 'Merchandise price = ' +m.Merchandise_Price__c);
        }
    }
}