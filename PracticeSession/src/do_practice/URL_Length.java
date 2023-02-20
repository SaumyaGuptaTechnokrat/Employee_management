package do_practice;
import java.net.*;

public class URL_Length {

	        public static void main(String[] args) throws Exception 
	        {
	            URL obj = new URL("https://www.sanfoundry.com/javamcq");
	            URLConnection obj1 = obj.openConnection();
	            int len = obj1.getContentLength();
	            System.out.print(len);
	        }
	    
}
