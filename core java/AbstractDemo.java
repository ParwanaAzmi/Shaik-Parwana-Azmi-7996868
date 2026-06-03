abstract class Vehicle {
    abstract void start(); 
}
class Bike extends Vehicle {
    void start() { 
        System.out.println("Bike starts with a kick!");
    }
}
public class AbstractDemo {
    public static void main(String[] args) {
        Bike myBike = new Bike();
        myBike.start();
    }
}