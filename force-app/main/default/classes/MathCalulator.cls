public class MathCalulator {
	private static Integer add(Integer n1, Integer n2)
    {
        Integer Sum = n1 + n2;
		return Sum;
    }
    private static Integer multiply(Integer n1, Integer n2){
        Integer Product = n1 * n2;
		return Product;
    }
 	private static void printOutput(String operation, Integer result){
     System.debug(operation + ': ' + result);
	}
    public void doMath(Integer n1, Integer n2){
		Integer sumResult = add(n1, n2);
        Integer productResult = multiply(n1, n2);
        printOutput('Sum', sumResult);
        printOutput('Product', productResult);
    }
}