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
        Map<Id, Integer> accountsWithContactCount = new Map<Id, Integer>();

        for(AggregateResult ar : [
            SELECT AccountId accId, COUNT(Id) total FROM Contact WHERE AccountId IN : accountIds GROUP BY AccountId
        ]){
            accountsWithContactCount.put(
                (Id) ar.get('accId'),
                (Integer) ar.get('total')
            );
        }

        for(Contact con : conOldList){
            if(accountsWithContactCount.get(con.AccountId))
        }
    }
}