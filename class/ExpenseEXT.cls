public with sharing class ExpenseEXT {
    /**  
 * (Controller for Expense Member)
 * @parameter 
 * @return
 */
    public Expense__c obj1{get;set;}
    public ExpenseEXT(ApexPages.StandardController controller) {
    /**  
 * (Constructor for class)
 * @parameter Standard Controller
 * @return Object
 */
        obj1 = (Expense__c)controller.getRecord();
    }
    
    public List<Expense_Member__c> getExpMembers(){
    /**  
 * (List Creation of the object type of Expense Member)
 * @param
 * @return SOQL Query
 */
        return [Select Id,Name,Contributed_Amount__c,Member__r.First_Name__c,Member__r.Last_Name__c from Expense_Member__c where Expense__c =: Obj1.Id];
    }
}