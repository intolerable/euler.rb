Euler.rb
========

A sprinkling of neat additions to Ruby for solving [Project Euler](http://projecteuler.net) problems.


    [1,2,3,4,5].sum
      => 15
    (1..100).sum
      => 5050


    Fibonacci[7]
      => 13
     
    Fibonacci.sequence(4)
      => [1, 1, 2, 3]


    13.integer?
      => true
    13.2.integer?
      => false
    
    13.C 5
      => 1287
    
    123456789.pandigital?
      => true
    123412341.pandigital?( 1..4, false ) # range, whether to check for exact length
      => true
    123123123.pandigital?
      => false
    
    12.prime_divisors
      => [2, 3]
    
    51.divisors
      => [1, 3, 17, 51]
    51.divisors( true ) # whether to remove self
      => [1, 3, 17]
      
    6.perfect?
      => true
      
    12.abundant?
      => true
    
    4.deficient?
      => true
    
    145.curious?
      => true
    
    1358964.digits
      => [1, 3, 5, 8, 9, 6, 4]
    
    12.factorial
      => 479001600
    
    6.triangle
      => 21
      
      
    "racecar".palindrome?
      => true
    "banana".palindrome?
      => false
      
    "hello".cipher
      => "29234643"
      
    "29234643".decipher
      => "hello"
    
    "rotate".rotate
      => "otater"
    "test".rotate(2)
      => "stte"
