class ParentClass {
    void message() {
        System.out.println("Hello from Parent!");
    }
}
class ChildClass extends ParentClass {
    void message() {
        System.out.println("Hello from Child!");
    }
    void display() {
        message();       
        super.message(); 
    }
}
public class SuperDemo {
    public static void main(String[] args) {
        ChildClass obj = new ChildClass();
        obj.display();
    }
}