public class q3 {
    public static void main(String[] args) 
    {
        int num=153;
        int amg=0;
        int chk=num;
        while(num !=0)
        {
            int n = num % 10;
            num = num/10;
            n=n*n*n;
            amg=amg+n;
        }
        if(chk==amg)
        {
            System.out.println("is amgstrong");
        }
        else
        {
            System.out.println("is not amgstrong");
        }
    }
    
}
