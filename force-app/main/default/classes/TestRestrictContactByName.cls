@IsTest
public class TestRestrictContactByName {

    @IsTest
    static void testContactTrigger() {

        // Valid contact: this insert should succeed
        Contact validContact = new Contact(
            FirstName = 'Tanish',
            LastName = 'Bansal'
        );

        insert validContact;

        System.assertNotEquals(
            null,
            validContact.Id,
            'A valid contact should be inserted successfully.'
        );

        // Invalid contact: this insert should be blocked by the trigger
        Contact invalidContact = new Contact(
            FirstName = 'Tanish',
            LastName = 'INVALIDNAME'
        );

        Test.startTest();

        try {
            insert invalidContact;

            // This line runs only if the trigger fails to block the contact
            System.assert(
                false,
                'The trigger should have prevented the invalid contact from being inserted.'
            );

        } catch (DmlException e) {

            System.assert(
                e.getMessage().contains('INVALIDNAME'),
                'The error message should mention INVALIDNAME.'
            );
        }

        Test.stopTest();
    }
}