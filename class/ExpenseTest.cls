@isTest
public class ExpenseTest {
	public testMethod static void myTest(){
      
        Expense__c expense = new Expense__c();
        expense.Amount__c=1000;
        expense.Event_Name__c='party';
        insert expense;
        
        Member__c member = new Member__c();
        member.First_Name__c='abc';
        member.Last_Name__c='xyz';
        member.Email_Id__c='abc@abc.com';
        member.Contact_No__c='+91-8100471138';
        insert member;
        
        Expense_Member__c expmem = new Expense_Member__c();
        expmem.Member__c=member.Id;
        expmem.Expense__c=expense.Id;
        expmem.Contributed_Amount__c=100;
        insert expmem;
        ExpenseEXT expExt = new ExpenseEXT(new ApexPages.StandardController(expense));
        
        List<Expense_Member__c> ge = new List<Expense_Member__c>();
        ge = expExt.getExpMembers();
        //Expense__c expense1 = new Expense__c();
        //expense1 
        //List<ExpenseMember__c> ge1 = new List<ExpenseMember__c>();
        //ge1.add(expense);
        //System.assertEquals(ge1,ge);
}	
}