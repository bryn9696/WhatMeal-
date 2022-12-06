import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Set;

public class whatMeal {
  static String[] userInput() {
    Scanner scanner = new Scanner(System.in);
    System.out.print("Enter word to ingredients: ");
    String input = scanner.nextLine();
    scanner.close();

    String word = input.toLowerCase();
    String[] words = word.split(" ");

    return words;
  }

  public static List<String> recipes(String[] args) {
    String[] words =  userInput();
    List<String> yourRecipes = new ArrayList<>();

    String[] cheeseToastieIngredients = {"ham", "cheese", "bread"};
    Arrays.sort(cheeseToastieIngredients);

    for (int j = 0; j < words.length; j++) {
      for (int i = 0; i < cheeseToastieIngredients.length; i++) {
        if (words[j].equals(cheeseToastieIngredients[i])) {
            if (Arrays.binarySearch(cheeseToastieIngredients, words[j]) >= 0) {
              yourRecipes.add(0, "Cheese Toastie");
            }
            break;
        }
      }
    }

    return yourRecipes;
  }
  
  public static void main(String[] args) {
    List<String> yourRecipes = recipes(args);
    Set<String> set = new HashSet<>(yourRecipes);
    yourRecipes.clear();
    yourRecipes.addAll(set);
      
    Collections.reverse(yourRecipes);
    if (yourRecipes.size() > 0) {
      System.out.println("Your recipes are: " + yourRecipes);
    }
    else {
      System.out.println("We couldn't find you any recipes.");
    }
  }
}