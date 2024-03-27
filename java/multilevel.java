class Shape {
int width;
int height;
Shape(int w, int h) {
width = w;
height = h;
}
}

class Rectangle extends Shape {
Rectangle(int w, int h) {
super(w, h);
}
void display() {
System.out.println("Width: " + width + ", Height: " + height);
}
void area() {
int area = width * height;
System.out.println("Area: " + area);
}
}

class Main {
public static void main(String[] args) {
Rectangle rect = new Rectangle(5, 10);
rect.display();
rect.area();
}
}
