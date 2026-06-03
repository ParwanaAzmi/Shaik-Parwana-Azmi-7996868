class Car {
    String brand = "Tesla";
    void drive() {
        System.out.println("The car is driving!");
    }
}
public class BasicsOOP { 
    public static void main(String[] args) {
        Car myCar = new Car(); 
        System.out.println(myCar.brand);
        myCar.drive(); 
    }
}