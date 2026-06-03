class Parent {
    void show() {
        System.out.println("Parent's show");
    }
}
class Child extends Parent {
    @Override 
    void show() {
        System.out.println("Child's rewritten show");
    }
}
public class OverrideDemo {
    public static void main(String[] args) {
        Child obj = new Child();
        obj.show(); 
    }
}