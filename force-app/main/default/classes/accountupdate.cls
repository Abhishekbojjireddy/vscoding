public class accountupdate {
    public static void change(list<account> act){
        for(account a :act){
            if(a.Type == 'Prospect'){
                (a.Industry = 'Education');
                    
            }
        }
    }

}