@IsTest
private with sharing class TestAccountDeletion {
  @IsTest
  static void TestDeleteAccountWithOneOpportunity() {
    // Test data setup
    // Create an account with an opportunity, and then try to delete it
    Account acct = new Account(Name='Test Account');
    insert as user acct;
    Opportunity opp = new Opportunity(
      Name=acct.Name + ' Opportunity',
      StageName='Prospecting',
      CloseDate=System.today().addMonths(1),
      AccountId=acct.Id);
    insert as user opp;
    // Perform test
    Test.startTest();
      Database.DeleteResult result = Database.delete(acct, false, AccessLevel.USER_MODE);
    Test.stopTest();
    // Verify
    // In this case the deletion should have been stopped by the trigger,
    // so verify that we got back an error.
    Assert.isFalse(result.isSuccess());
    Assert.isTrue(result.getErrors().size() > 0);
    Assert.areEqual('Cannot delete account with related opportunities.',
      result.getErrors()[0].getMessage());
  }
}