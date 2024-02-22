public class q2 {
    public static void main(string[] args)
    {
       int num=123;
       int rev=0;
        while(num != 0) 
        {
            int n = num % 10;
            rev = rev * 10 + n;
            num /= 10;
        }
        System.out.println("the reverse is :"+rev);
    }
    
}
