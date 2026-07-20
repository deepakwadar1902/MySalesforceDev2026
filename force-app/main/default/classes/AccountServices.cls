public with sharing class AccountServices {
    @AuraEnabled(Cacheable = true)
    public static List<Account> getHotAccounts(){
        try {
            return [SELECT Id, Name FROM Account WHERE Rating = 'Hot'];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

}