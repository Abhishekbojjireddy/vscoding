public class A {
    @future 
    public static void geta(){
        system.debug('Iam from class a');
        system.enqueueJob(new B());
    }

}