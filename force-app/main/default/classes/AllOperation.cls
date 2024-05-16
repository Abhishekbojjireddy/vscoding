public class AllOperation {
    
    Addition a=new Addition();
    Subtraction s=new Subtraction();
    Multiplication m=new Multiplication();
    Division d=new Division();
    
    public void All(){
        a.doSum();
		s.doSub();
		m.doMul();
		d.doDiv();
    }

}