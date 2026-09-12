public class Demo2 {
	String helloWorldString; //instance member Vairables
	private Static final String DEFAULT_STRING; // static member variables

    static{
        DEFAULT_STRING = 'Hello WORLD';
    } // only runs once the class i loaded

    public Demo2(){
        this(DEFAULT_STRING);// constructor 1 as these both constructors are public so anyone can access these from outside the class
    }
    public Demo2(String stringToDisplay){ //overloaded constructor	
		this.helloWorldString = stringToDisplay; // this keyword to refer to current in stance of the class
    }

    public void printOutput(){
        System.debug('Display Text'+ helloWorldString);
    }

	public static void printOutput1(){
        System.debug('Display from Static Method');
    }

	
}