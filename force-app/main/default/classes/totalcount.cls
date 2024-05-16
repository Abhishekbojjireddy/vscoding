public class totalcount {
    public static void chcount(List <Child__c> ch )
    { 
        list<Parent__c> pa = new list<Parent__C>();
        for(Child__c c: ch){
            id i = c.Parent__C;
            if(i!=null){
                Parent__C p = [select id,(select id from childs__r) from Parent__c where id=:i];
                list<Child__c> li=p.childs__r;
                p.Count_of_child__c=li.size();
                pa.add(p);
            }
            update pa;
                }
    }
}