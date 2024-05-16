public class WithoutEmailTemplate {
    public void mailservice(){
        list<messaging.singleemailmessage> details = new list<messaging.singleemailmessage>();
        list<string> mailid = new list<string>();
        mailid.add('abhishekbojjireddy166@gmail.com');
        messaging.singleemailmessage mail =new messaging.singleemailmessage();
        mail.setToAddresses(mailid);
        mail.setsubject('Trial message');
        mail.setplaintextbody(' This email is from Apex class');
        details.add(mail);
        messaging.sendemail(details);
    }
 
}