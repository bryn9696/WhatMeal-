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

    String ingredients = input.toLowerCase();
    String[] ingredientsList = ingredients.split(" ");

    return ingredientsList;
  }

  public static List<String> recipes(String[] args) {
    String[] ingredientsList =  userInput();
    List<String> yourRecipes = new ArrayList<>();

    String[] cheeseToastie = {"ham", "cheese", "bread"};
    Arrays.sort(cheeseToastie);
    String[] hamSandwhich = {"ham", "bread"};
    Arrays.sort(hamSandwhich);
    String[] tomatoPasta = {"tomato", "pasta"};
    Arrays.sort(tomatoPasta);

    for (int j = 0; j < ingredientsList.length; j++) {
      for (int i = 0; i < cheeseToastie.length; i++) {
        if (ingredientsList[j].equals(cheeseToastie[i])) {
            if (Arrays.binarySearch(cheeseToastie, ingredientsList[j]) >= 0) {
              yourRecipes.add(0, "Cheese Toastie: (" + String.join(", ", cheeseToastie) + ")");
            }
            break;
        }
      }
    }

    for (int j = 0; j < ingredientsList.length; j++) {
      for (int i = 0; i < hamSandwhich.length; i++) {
        if (ingredientsList[j].equals(hamSandwhich[i])) {
            if (Arrays.binarySearch(hamSandwhich, ingredientsList[j]) >= 0) {
              yourRecipes.add(0, "Ham Sandwhich: (" + String.join(", ", hamSandwhich) + ")");
            }
            break;
        }
      }
    }

    for (int j = 0; j < ingredientsList.length; j++) {
      for (int i = 0; i < tomatoPasta.length; i++) {
        if (ingredientsList[j].equals(tomatoPasta[i])) {
            if (Arrays.binarySearch(tomatoPasta, ingredientsList[j]) >= 0) {
              yourRecipes.add(0, "Tomato Pasta: (" + String.join(", ", tomatoPasta) + ")");
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