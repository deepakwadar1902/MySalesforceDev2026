public with sharing class ContactTriggerHandler {
    
    public static void PreventDeleteLastContact(List<Contact> conOldList){

        
        Set<Id> accountIds = new Set<Id>();
        for(Contact con : conOldList){
            if(con.AccountId != null){
                accountIds.add(con.AccountId);
            }
        }


    }
}