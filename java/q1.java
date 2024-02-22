public class q1 {
    public static void main(String[] args) {
        int num = 453;
        int sum = 0;
        while (num != 0) {
            sum += num % 10;
            num /= 10;
        }
        System.out.println("The sum of the digits is: " + sum);
        if (sum % 2 == 0) {
            System.out.println("The sum is even.");
        } else {
            System.out.println("The sum is odd.");
        }
    }
    
}
