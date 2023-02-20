package do_practice;


public class Filteration {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str = "HeL45lo &$(&( Wo56Rld";
        for(int i =0;i<str.length()-1;i++){
        	if(Character.isDigit(str.charAt(i))) {
        		System.out.println(str.charAt(i));
        	}
        }
	}

}

