class MyThread extends Thread {
    public void run() {
        System.out.println("Background thread is running safely!");
    }
}
public class ThreadDemo {
    public static void main(String[] args) {
        MyThread thread = new MyThread();
        thread.start(); 
    }
}