public class WithEmailTemplate {
    public void mail(){
        list<Messaging.SingleemailMessage> mail = new list<Messaging.SingleemailMessage>();
        EmailTemplate temp=[select id from EmailTemplate where Developername='My_Template'];
        contact c = [select id from contact where name='Hello Testing'];
        Messaging.SingleEmailMessage m= new Messaging.SingleEmailMessage();
        m.setTemplateId(temp.id);
        m.setTargetobjectId(c.id);
        mail.add(m);
        Messaging.sendEmail(mail);        
    }

}