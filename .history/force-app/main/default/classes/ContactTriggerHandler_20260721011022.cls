public with sharing class ContactTriggerHandler {
    
    public static void PreventDeleteLastContact(List<Contact> conOldList){

        //Step 1 : Gather all unique accountId 
        Set<Id> accountIds = new Set<Id>();
        for(Contact con : conOldList){
            if(con.AccountId != null){
                accountIds.add(con.AccountId);
            }
        }


    }
}