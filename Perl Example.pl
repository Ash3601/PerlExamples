# Creating a class the name package is a class
package A;

# this sub routine is something separate can be called with a class
sub fun {
    $className = shift;
    $self = {name => shift};
    bless $self, $className;
    return $self;
}


# this is how we call <sub routine> <classname> <variables>
$obj = A->fun("Ashin");
print "Value of the class variable: $obj->{name}"

# Creating arrays
@names = ("John Paul", "Lisa", "Kumar");

# Iterating over the array
for(@names){
	print("$_","\n");
}

''' Sorting in PERL'''
# https://www.geeksforgeeks.org/perl-sort-function/
# Compare sort in Perl

# Calling subroutine to sort numerical array
my @numerical = sort compare_sort (2, 11, 54, 6, 35, 87);
print "@numerical\n";

# sorting arrays in perl
$arr2 = sort(@names);
print "$arr2";

   
# function to compare two numbers
sub compare_sort
{
   if($a < $b)
   {
      return -1;
   }
   elsif($a == $b)
   {
      return 0;
   }
   else
   {
      return 1;                       
   }
}

'''-----------------------------------------------'''

# C-Type loop
my @c = (1..6);
print "Length of the array: $#c";
for(my $i = 0; $i <= $#c; $i++){
	print("$c[$i] \n");
}

# Hashmaps in Perl
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
print "\$data{'John Paul'} = $data{'John Paul'}\n";

# Another declaration style, no quotation is used by we need to be careful to not use space in the string
%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);


'''READIND DATA FROM A FILE IN PERL'''
# https://www.geeksforgeeks.org/perl-opening-and-reading-a-file/


# Opening the file
open(FH, "GFG.txt")or die "Sorry!! couldn't open";
print "Reading file \n";
  
# Reading the file till FH reaches EOF
while(<FH>)
{
    # Printing one line at a time
    print $_;
}
close;
''''''


''' STRING MANIPULATION '''
# Initialising a string
$string = "GfG is a computer science portal\n";
  
# Calling the chomp() function
$A  = chomp($string);
  
# Printing the chopped string and 
# removed trailing newline character
print "Chopped String is : $string\n";
print "Number of Characters removed : $A";
''''''


'''REFERENCING AND DEREFERENCING IN PERL '''
# Perl Reference is a way to access the same data but with a different variable. 
# A reference in Perl is a scalar data type which holds the location of another variable.
# Array Reference

# defining array 
@array = ('1', '2', '3');

# making reference of array variable  
$reference_array = \@array;  



# Dereferencing is the way of accessing the value in the memory pointed by the reference. 
# In order to dereference, we use the prefix $, @, % or & depending on the type of the variable
# Perl program to illustrate the 
# Dereferencing of an Array
  
# defining an array
@array = ('1', '2', '3');  
  
# making an reference to an array variable
$reference_array = \@array;  
  
# Dereferencing
# printing the value stored 
# at $reference_array by prefixing 
# @ as it is a array reference
print @$reference_array;  

# How to check which type of reference it is?
# ref() function will return the type of the reference it got as a parameter

# find all the examples above: http://www.perlmeme.org/howtos/using_perl/dereferencing.html


''''''