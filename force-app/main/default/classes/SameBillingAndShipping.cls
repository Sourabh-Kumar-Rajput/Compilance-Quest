public class SameBillingAndShipping
{
	public static void CopyAddress(List<Account> accList)
    {
        if(accList.size()>0)
        {
            for(Account eachAcc : accList)
            {
                if(eachAcc.Match_Billing_Address__c == true)
                {
                eachAcc.ShippingCity = eachAcc.BillingCity;
                eachAcc.ShippingCountry = eachAcc.BillingCountry;
                eachAcc.ShippingGeocodeAccuracy = eachAcc.BillingGeocodeAccuracy;
                eachAcc.ShippingLatitude = eachAcc.BillingLatitude;
                eachAcc.ShippingLongitude = eachAcc.BillingLongitude;
                eachAcc.ShippingPostalCode = eachAcc.BillingPostalCode;
                eachAcc.ShippingState = eachAcc.BillingState;
                eachAcc.ShippingStreet = eachAcc.BillingStreet;
                }
            }
        }
    }
}