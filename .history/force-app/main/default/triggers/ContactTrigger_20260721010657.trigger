trigger ContactTrigger on Contact (before delete) {

    if(Trigger.isBefore && Trigger.isDelete){
        // Add logic here for before delete trigger
    }
}