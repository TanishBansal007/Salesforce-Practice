@IsTest
public class TestVerifyDate {
	
	@IsTest
    static void executeTestDate1(){
		Date d1 = Date.newInstance(2026,07,07);
        Date d2 = Date.newInstance(2026,07,17);
        Date d3 = Date.newInstance(2026,08,29);
		Date pastDate = Date.newInstance(2026, 7, 1);
		Test.startTest();
        Date resultWithinRange = VerifyDate.CheckDates(d1, d2);
        Date resultOutsideRange = VerifyDate.CheckDates(d1, d3);
        Date resultPastDate = VerifyDate.CheckDates(d1, pastDate);
		Test.stopTest();
		System.assertEquals(
            d2,
            resultWithinRange,
            'It should return date2 when it is within 30 days'
        );

        System.assertEquals(
            Date.newInstance(2026, 7, 31),
            resultOutsideRange,
            'It should return the last day of the month'
        );

        System.assertEquals(
            Date.newInstance(2026, 7, 31),
            resultPastDate,
            'It should return the last day of the month when date2 is in the past'
        );
    }
}