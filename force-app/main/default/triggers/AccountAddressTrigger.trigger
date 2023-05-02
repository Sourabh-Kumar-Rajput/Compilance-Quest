trigger AccountAddressTrigger on Account (before insert, before update) 
{
    if((Trigger.isBefore && Trigger.isInsert) || (Trigger.isBefore && Trigger.isUpdate))
    {
    	SameBillingAndShipping.CopyAddress(Trigger.New);    
    }	
}