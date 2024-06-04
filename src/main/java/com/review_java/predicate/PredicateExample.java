package com.review_java.predicate;

import java.util.Arrays;
import java.util.List;
import java.util.function.Predicate;

public class PredicateExample1 {

  public static void main(String[] args) {
    List<Integer> list = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

    // Non using predicate
    List<Integer> evenNumbers = list.stream().filter(x -> x % 2 == 0).toList();
    System.out.println(evenNumbers);

    // Using predicate
    Predicate<Integer> predicate = x -> x % 2 != 0;
    List<Integer> oddNumbers = list.stream().filter(predicate).toList();
    System.out.println(oddNumbers);

  }

}
