class MyRunnable implements Runnable {
    public void run() {
        System.out.println("Runnable background thread is running smoothly!");
    }
}
public class RunnableDemo {
    public static void main(String[] args) {
        MyRunnable job = new MyRunnable();
        Thread thread = new Thread(job);
        thread.start();
    }
}