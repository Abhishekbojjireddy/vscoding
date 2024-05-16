global class SOAPExample {
    webService static Account getAccount(string actId) {
        Account act = [Select id,name from account where id =: actId];
        return act;
    }

}