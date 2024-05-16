public class Escalate {
    public static void updateNextStep(list<Opportunity> l_old, list<Opportunity> l_new)
    {  integer i=0;
        for(Opportunity op : l_old)
        {
            Opportunity ne_w =l_new.get(i); 	
            String stage_old = op.StageName;
            String stage_new = ne_w.StageName;
            if(stage_old.equals('Closed Won') && stage_new.equals('Closed Lost'))
            {
                ne_w.NextStep = 'Escalate to Manager';
            }
            i++;
        }
    }			

}