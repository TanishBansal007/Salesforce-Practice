public class MathCalulator {
	public Integer add(Integer n1, Integer n2)
    {
        Integer Sum = n1 + n2;
		return Sum;
    }
    public Integer multiply(Integer n1, Integer n2){
        Integer Product = n1 * n2;
		return Product;
    }
 	public void printOutput(){
     System.debug('Sum of Integers'+ add(4,6));
	 System.debug('Product of Integers'+ multiply (9,5));
	}
}