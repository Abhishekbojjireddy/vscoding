public class Schedule implements Schedulable {
    public void execute (SchedulableContext sc){
        Batchable Bc = new Batchable();
        Database.executeBatch(Bc);
    }
}