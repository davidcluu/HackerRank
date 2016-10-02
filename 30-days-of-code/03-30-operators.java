import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;
public class Arithmetic {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        double mealCost = scan.nextDouble(); // original meal price
        int tipPercent = scan.nextInt(); // tip percentage
        int taxPercent = scan.nextInt(); // tax percentage
        scan.close();
      
        double totalCost = mealCost + (1.0 * tipPercent * mealCost / 100.0) + (1.0 * taxPercent * mealCost / 100.0);
      
        // cast the result of the rounding operation to an int and save it as totalCost 
        int roundedTotalCost = (int) Math.round(totalCost);
      
        // Print your result
        System.out.println("The total meal cost is " + roundedTotalCost + " dollars.");
    }
}
