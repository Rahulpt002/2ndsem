import java.util.Scanner;
class Product {
int pcode;
String pname;
int price;
Product(int code, String name, int cost) {
pcode = code;
pname = name;
price = cost;
}
}
class Main {
public static void main(String[] args) {
Scanner input = new Scanner(System.in);
System.out.println("Enter the total number of products:");
int n = input.nextInt();
Product[] products = new Product[n];
for(int i=0; i<n; i++) {
System.out.println("Enter product code:");
int code = input.nextInt();
input.nextLine(); // consume newline left-over
System.out.println("Enter product name:");
String name = input.nextLine();
System.out.println("Enter product price:");
int cost = input.nextInt();
products[i] = new Product(code, name, cost);
}
int minPrice = products[0].price;
Product minProduct = products[0];
for(int i=1; i<n; i++) {
if(products[i].price < minPrice) {
minPrice = products[i].price;
minProduct = products[i];
}
}
System.out.println("The product with the lowest price is: " + minProduct.pname + " with a price of: " + minProduct.price);
}
}
