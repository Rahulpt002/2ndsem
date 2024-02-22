public class q2 {
    public static void main(String[] args)
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
        if (rev % 3 ==0 )  
        {
            System.out.println("is divisible by 3");
        }
        else
        {
            System.out.println("is not divisible by 3");
        }
        if (rev % 2 ==0 )  
        {
            System.out.println("is divisible by 2");
        }
        else
        {
            System.out.println("is not divisible by 2");
        }
    }
    
}
