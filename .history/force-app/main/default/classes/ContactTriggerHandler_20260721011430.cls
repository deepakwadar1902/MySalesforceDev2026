public with sharing class ContactTriggerHandler {
    
    public static void PreventDeleteLastContact(List<Contact> conOldList){

        //Step 1 : Gather all unique accountId from the contacts being deleted 
        Set<Id> accountIds = new Set<Id>();
        for(Contact con : conOldList){
            if(con.AccountId != null){
                accountIds.add(con.AccountId);
            }
        }
        //If no Contacts have accounts, there nothing to check
        if(accountIds.isEmpty()){
            return;
        }

        // Step 2: Query the Accounts and aggregate their total Contact count
        Map<Id, Account> accountsWithContactCount = new Map<Id, Account>();

        for(AggregateResult ar : [
            
        ])
    }
}