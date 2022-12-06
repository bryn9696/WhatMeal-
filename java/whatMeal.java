import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.ArrayList;
import java.util.Scanner;

public class whatMeal {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    System.out.print("Enter word to ingredients: ");
    String input = scanner.nextLine();
    scanner.close();

    String word = input.toLowerCase();
    String[] words = word.split(" ");
    List<String> yourRecipes = new ArrayList<>();

    String[] cheeseToastieIngredients = {"ham", "cheese", "bread"};
    Arrays.sort(cheeseToastieIngredients);

    for (int j = 0; j < words.length; j++) {
      for (int i = 0; i < cheeseToastieIngredients.length; i++) {
        if (words[j].equals(cheeseToastieIngredients[i])) {
              // if (Arrays.binarySearch(cheeseToastieIngredients, words[j]) < 0) {
                yourRecipes.add(0, "Cheese Toastie");
              // }
              break;
        }
      }
    }
    
    Collections.reverse(yourRecipes);
    
    System.out.println("Your recipes are: " + yourRecipes);
  }
}