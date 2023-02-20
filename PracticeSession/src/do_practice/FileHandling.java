package do_practice;

import java.io.File;
import java.io.FileWriter;
import java.util.Scanner;

public class FileHandling {

	public static void main(String[] args){
		Scanner s = new Scanner(System.in);
		System.out.println("Enter the file name:(like myfile.txt)");
		String n = s.nextLine();
		
		try{
		File myFile =new File(n);
		if(myFile.createNewFile()){
			System.out.println("Files created successfully!!");
			FileWriter fw = new FileWriter(n);
			System.out.println("Enter text or paragraph that you want to write");
			String data = s.nextLine();
			s.close();
			fw.write(data);
			
			fw.close();
			Scanner input = new Scanner(myFile);
			while(input.hasNextLine()){
				System.out.println(input.nextLine());
			}
			input.close();
		}

		else{
			System.out.println("File already exists");
		}

		/*if(myfile.delete()){
			System.out.println("DELETED SUCCESSFULLY");
		}
		else{
			System.out.println("Something Went Wrong!!");
		}*/
      }
		catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
}
