class Animal {
    void eat() {
        System.out.println("Eating...");
    }
}
class Dog extends Animal {
    void bark() {
        System.out.println("Barking...");
    }
}
public class Inherit {
    public static void main(String[] args) {
        Dog myDog = new Dog();
        myDog.eat();  
        myDog.bark(); 
    }
}