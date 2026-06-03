class Account {
    private double balance = 5000.0;
    public double getBalance() {
        return balance;
    }
    public void setBalance(double newBalance) {
        if (newBalance >= 0) { // Safety check
            balance = newBalance;
        }
    }
}
public class Encapsulation {
    public static void main(String[] args) {
        Account myAcc = new Account();
        myAcc.setBalance(6000.0); 
        System.out.println("Current Balance: " + myAcc.getBalance()); 
    }
}