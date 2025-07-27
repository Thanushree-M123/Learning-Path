public class SearchTest {
    public static void main(String[] args) {
        Product[] products = {
                new Product(1, "Laptop", "Electronics"),
                new Product(2, "Shirt", "Clothing"),
                new Product(3, "Watch", "Accessories"),
                new Product(4, "Phone", "Electronics"),
                new Product(5, "Shoes", "Footwear")
        };

        Product result1 = SearchEngine.linearSearch(products, "Phone");
        System.out.println("Linear Search: " + (result1 != null ? result1 : "Not Found"));

        Product result2 = SearchEngine.binarySearch(products, "Phone");
        System.out.println("Binary Search: " + (result2 != null ? result2 : "Not Found"));
    }
}
