import java.util.Scanner;
class Matrix{
public static void main(String[] args) {
Scanner scanner = new Scanner(System.in);
System.out.print("Enter the number of rows: ");
int rows = scanner.nextInt();
System.out.print("Enter the number of columns: ");
int columns = scanner.nextInt();
int[][] matrixA = new int[rows][columns];
int[][] matrixB = new int[rows][columns];
System.out.println("Enter elements for Matrix 1:");
for (int i = 0; i < rows; i++) {
for (int j = 0; j < columns; j++) {
matrixA[i][j] = scanner.nextInt(); }
}
System.out.println("Enter elements for Matrix 2:");
for (int i = 0; i < rows; i++) {
for (int j = 0; j < columns; j++) {
matrixB[i][j] = scanner.nextInt();
}}
int[][] resultMatrix = new int[rows][columns];
for (int i = 0; i < rows; i++) {
for (int j = 0; j < columns; j++) {
resultMatrix[i][j] = matrixA[i][j] - matrixB[i][j];}}
for (int i = 0; i < rows; i++) {
for (int j = 0; j < columns; j++) {
System.out.print(resultMatrix[i][j] + " ");}
System.out.println(); }}}
