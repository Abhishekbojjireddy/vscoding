public class Child extends Parent {
    
    public child(){
        super();
        System.debug('Constructor from child');
    }
    
    public override void dr(){
        System.debug('mat is a child.');
    }
}