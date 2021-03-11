global with sharing class PaukUtils {
    public PaukUtils() {
        System.debug('PaukUtils');
    }

    @AuraEnabled
    public static Datetime getCurrentTime(){
      try {
        return Datetime.now();
      } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
      }
    }
}
