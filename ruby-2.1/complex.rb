
Complex Numbers

➜  ruby-2.1  irb
RUBY_VERSION
2.1.0 > RUBY_VERSION
 => "2.1.0" 
2.1.0 > Complex(2,3)
 => (2+3i) 
2.1.0 > (2+3i)
 => (2+3i) 
2.1.0 > (2+3i) + Complex(5, 4i)
 => (3+3i) 
2.1.0 > (2+3i) + (4+1i)
 => (6+4i) 
 
 
 Rational Number
   
 2.1.0 >   2/3.0 + 5/4.0
  => 1.9166666666666665 
 2.1.0 > 2/3r + 5/4r
  => (23/12) 
 2.1.0 >
 
 Def's return value
 
 2.1.0 > def hi
 2.1.0 > end
  => :hi 
  
 2.1.0 > class String
 2.1.0 >   def count
 2.1.0 >     Float::INFINITY
 2.1.0 >   end
 2.1.0 > end
   => :count 
 2.1.0 > 'Hi'.count
   => Infinity 





  