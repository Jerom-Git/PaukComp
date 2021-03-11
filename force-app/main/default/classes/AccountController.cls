global with sharing class AccountController {

    @AuraEnabled(cacheable=true)
    global static List<Account> getAllActiveAccounts(){
      try {
        return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
      } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
      }
    }

    
  }