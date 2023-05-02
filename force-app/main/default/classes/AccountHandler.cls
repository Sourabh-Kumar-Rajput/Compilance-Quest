public with sharing class AccountHandler {
    public static void createContact(List<Account> accList){
        try{
            List<contact> conList=new List<contact>();   
            if(accList.size()>0)
            {               
                for(Account acc:accList)
                {          
                    if(acc.Actives__c == true && acc.Type =='Customer')
                    {                      
                        if(acc.contacts.size()==0 && acc.Name !='Skywalk Inc')
                        {                            
                            contact contactObj= new contact();
                            contactObj.FirstName = acc.Name;
                            contactObj.LastName='Customer Representative';
                            contactObj.AccountId= acc.id;
                            ContactObj.Email = acc.Company_Email__c;
                            contactObj.Phone = acc.Phone;
                            conList.add(contactObj);
                        }
                        if(acc.contacts.size()==0 && acc.Name == 'Skywalk Inc'){
                           
                            contact contactObj= new contact();
                            contactObj.FirstName = 'Skywalk';
                            contactObj.LastName='Customer Representative';
                            contactObj.AccountId= acc.id;
                            ContactObj.Email = acc.Company_Email__c;
                            contactObj.Phone = acc.Phone;
                            conList.add(contactObj);
                        }
                    }
                    if(acc.Actives__c == true && acc.Account_Activation_Summary__c ==NULL)
                    {
                        acc.addError('Please Fill Account activation summery');                    
                    }
                }
            }
            if(conList.size()>0){
                insert conList;
            }
        }
        catch(Exception e){
            System.debug('Error is: '+e.getMessage()+' In line number:'+e.getLineNumber());
        }
    }
    
}