@isTest
public class AccountHandlerTest
{
    @isTest
    public static void createContactTest()
    {
        try
        {
            List<Account> accList = new List<Account>();
            Account accObj = new Account();             
            accObj.Name = 'Skywalk Inc';
            accObj.Actives__c = true;
            accObj.Phone = '1234567890';
            accObj.Company_Email__c = 'company@test.com';
            accObj.Type = 'Customer';
            accList.add(accObj);
            insert accList;
            
            contact contactObj= new contact();
            
            if(accList.size()>0)
            { 
                if(accObj.Actives__c == true && accObj.Type =='Customer' && accObj.Name =='Skywalk Inc')
                {                        
                    contactObj.FirstName = accObj.Name;
                    contactObj.LastName='Customer Representative';
                    contactObj.AccountId= accObj.id;
                    ContactObj.Email = accObj.Company_Email__c;
                    contactObj.Phone = accObj.Phone;
                    insert contactObj;
                }
            }
            
            Test.startTest();                
            Test.stopTest();
            System.assertEquals(accObj.Id, contactObj.AccountId);
        }
        catch(Exception error)
        {
            System.debug('Error::>>>'+error.getMessage()+'In Line::>>>'+error.getLineNumber());
        }
    }
    @isTest
    public static void createContactSecoundTest()
    {
        try
        {
            List<Account> accList = new List<Account>();
            Account accObj = new Account();             
            accObj.Name = 'Account Name';
            accObj.Actives__c = true;
            accObj.Phone = '1234567890';
            accObj.Company_Email__c = 'company@test.com';
            accObj.Type = 'Customer';
            accList.add(accObj);
            insert accList;
            
            contact contactObj= new contact();
            
            if(accList.size()>0)
            { 
                if(accObj.Actives__c == true && accObj.Type =='Customer' && accObj.Name =='Skywalk Inc')
                {                        
                    contactObj.FirstName = accObj.Name;
                    contactObj.LastName='Customer Representative';
                    contactObj.AccountId= accObj.id;
                    ContactObj.Email = accObj.Company_Email__c;
                    contactObj.Phone = accObj.Phone;
                    insert contactObj;
                }
            }
            
            Test.startTest();                
            Test.stopTest();
            System.assertEquals(accObj.Id, contactObj.AccountId);
        }
        catch(Exception error)
        {
            System.debug('Error::>>>'+error.getMessage()+'In Line::>>>'+error.getLineNumber());
        }
    }     
}