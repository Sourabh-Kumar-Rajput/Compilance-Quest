trigger CreateDefaultContactOnAccount on Account (after insert,after update) {
    if(trigger.IsInsert && trigger.IsAfter || trigger.Isupdate && trigger.IsAfter){
        AccountHandler.CreateContact(trigger.new);
    }
}