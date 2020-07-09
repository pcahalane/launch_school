# PROBLEM: CLASS AND INSTANCE METHODS
#   Locate the ruby documentation for methods File::path and File#path. How are they different?


# SOLUTION:
# Begin by navigating to the class File page, then locate ::path and #path in the Methods column on the left.

# File::path is a class method which returns the string representation of the path
# Class methods are called on classes, for example:
#       puts File.path('bin')

#   File#path is an instance method which returns the pathname used to create file of the string
# Instance methods are called on objects, for example:
#       f = File.new('my-file.txt')
#       puts f.path


# GENERAL EXAMPLE OF CLASS VS INSTANT METHOD:
class Foo
  def self.bar
    puts 'class method'
  end
  
  def baz
    puts 'instance method'
  end
end

Foo.bar # => "class method"
# alternatively input Foo.baz # => NoMethodError: undefined method ‘baz’ for Foo:Class

Foo.new.baz # => "instance method"
# alternatively input Foo.new.bar # => NoMethodError: undefined method ‘bar’ for #<Foo:0x1e820>