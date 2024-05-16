public class unity {
    public static void upopp(list<Opportunity> nrec ,list<Opportunity> oldrec){
        for(Opportunity op : oldrec){
        integer i=0;
        Opportunity newRecord = nrec.get(i);
        Opportunity oldrecord = op;
        if(oldRecord.StageName =='Closed Won' && newRecord.StageName =='Closed Lost'){
            newRecord.NextStep ='Escalated To Manager';
            i++;
        }
        
    }

}
}