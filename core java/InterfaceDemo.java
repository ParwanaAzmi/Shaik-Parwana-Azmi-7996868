interface Animal {
    void makeSound(); 
}
class Cat implements Animal {
    public void makeSound() { 
        System.out.println("Meow!");
    }
}
public class InterfaceDemo {
    public static void main(String[] args) {
        Cat myCat = new Cat();
        myCat.makeSound();
    }
}