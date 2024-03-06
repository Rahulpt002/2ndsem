class larg
{
public static void main(String args[])
{
int[]arr={1,31,65,5,24,4,70,8,20,11};
int i;
int a=arr[0];
for(i=0;i< arr.length;i++)
{
if(arr[i]>=a)
{
a=arr[i];
}
}
System.out.println(a);
}}
