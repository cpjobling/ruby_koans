# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # Should also check that a and b a and c are numbers ....
  raise TriangleError, "Zero-length or negative-length sides are not allowed" unless a > 0 && b > 0 && c > 0
  # Triangle inequality theorem: http://www.mathwarehouse.com/geometry/triangles/triangle-inequality-theorem-rule-explained.php
  raise TriangleError, "Triangle inequality theorem violated" unless a + b > c && b + c > a && a + c > b
  if (a == b && b == c)
    :equilateral
  elsif (a == b || b == c || a == c)
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
