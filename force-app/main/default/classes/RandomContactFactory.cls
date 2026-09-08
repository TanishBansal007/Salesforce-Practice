public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer numOfContacts, String lastName) {

        List<Contact> contactList = new List<Contact>();

        for (Integer i = 0; i < numOfContacts; i++) {

            Contact c = new Contact(
                FirstName = 'Test ' + i,
                LastName = lastName
            );

            contactList.add(c);
        }

        return contactList;
    }
}