public class q4 
{
    public static void main(String[] args) 
    {
        int lim=10;
        int n1=0;
        int n2=1;
        int i;
        for(i=1;i<=lim;++i)
        {
            System.out.println(n1);
            int sum = n1 + n2;
            n1 = n2;
            n2 = sum;
        }
        
    }
    
}
