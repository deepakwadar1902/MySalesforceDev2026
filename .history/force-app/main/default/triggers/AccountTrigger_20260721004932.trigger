trigger AccountTrigger on Account (after update) {

    if(Trigger.isAfter && Trigger.isUpdate){
        // Add logic here for after update trigger
        AccountTriggerHandler.updateConPhoneOnAccPhoneUpdation(Trigger.new, Trigger.oldMap);
    }
}