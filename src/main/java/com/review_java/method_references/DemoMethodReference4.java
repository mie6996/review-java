package com.review_java.method_references;

@FunctionalInterface
interface SayHello {
  void display(String say);
}

class Greeting implements SayHello {

  public Greeting(String s) {
    System.out.println(s);
  }

  @Override
  public void display(String say) {
//    System.out.println(say);
  }


}

public class DemoMethodReference4 {
  public static void main(String[] args) {
    SayHello sayHello = Greeting::new;
    sayHello.display("Hello and welcome!");
  }

}
