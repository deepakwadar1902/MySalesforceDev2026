public with sharing class AccountTriggerHandler {
   
    public static void updateConPhoneOnAccPhoneUpdate(List<Account> accNewList, Map<Id, Account> accOldMap){

        Map<Id, Account> accMap = new Map<Id, Account>();
        if(!accNewList.isEmpty()){
            for(Account acc : accNewList){
                if(accOldMap.get(acc.Id).Phone != acc.Phone){
                    accMap.put(acc.Id, acc);
                }
            }
        }

        List<Contact> conList = [SELECT Id, AccountId, Phone FROM Contact WHERE AccountId IN : accMap.keySet() WITH USER_MODE];
        List<Contact> conListToUpdate = new List<Contact>();
        //Keyset method return all accountIds from Map
        if(!conList.isEmpty()){
            for(Contact con : conList){
                con.Phone = accMap.get(con.AccountId).Phone;
                conListToUpdate.add(con);
            }
        }
        if(!conListToUpdate.isEmpty()){
            UPDATE conListToUpdate;
        }
    }
    //Test Git

}