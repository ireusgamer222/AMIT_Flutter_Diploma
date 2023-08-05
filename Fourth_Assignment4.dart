import 'dart:io';

// Assignment 4
// Write A program in which you define classes that repersent shapes
// The Shape class is the base, and it is inherited by two abstract classes named 2DShapes and 3DShapes with abstract methods for calculating Area, volume
// A Circle class which extends the 2DShapes
// A Sphere class which extends the 3DShapes
// Write a program to override the abstract methods and print the area and volume of circle and sphere.

void main() {
  Sphere sphere1 = Sphere(5,"Red");
  print(sphere1.CalculateSurfaceArea());
  print(sphere1.CalculateVolume());

  print("---------------------------------------------------------------------");

  Circle circle1 = Circle(5, "Blue");
  print(circle1.CalculatePerimeter());
  print(circle1.CalculateArea());

  print("---------------------------------------------------------------------");

  print(Shape.shapes);
  print(Circle.circles);
  print(Sphere.spheres);
}


// The Base Class
class Shape{
  double? length;
  int? dimensions;
  String? color;

  // Total number of shapes objects/instances
  static int shapes = 0;
}

// 2DShapes Abstract class
abstract class TwoDimensionalShape extends Shape{

  double CalculateArea();
  double CalculatePerimeter();

}

// 3DShapes abstract class
abstract class ThreeDimensionalShape extends Shape{

  double CalculateSurfaceArea();
  double CalculateVolume();

}


// Circle class
class Circle extends TwoDimensionalShape{

  // Number of circle objects/instances
  static int circles = 0;

  Circle(double radius, String color1){
    super.length = radius;
    super.dimensions = 1;
    super.color = color1;
    circles++;
    Shape.shapes++;
  }

  @override
  double CalculateArea() {
    // TODO: implement CalculateArea
    return super.length! * super.length! * 3.14;
  }

  @override
  double CalculatePerimeter() {
    // TODO: implement CalculatePerimeter
    return super.length! * 2 * 3.14;
  }

}

// Sphere class
class Sphere extends ThreeDimensionalShape{
  // Number of spheres objects/instances
  static int spheres = 0;

  Sphere(double radius, String color1){
    super.length = radius;
    super.dimensions = 3;
    super.color = color1;
    spheres++;
    Shape.shapes++;
  }

  @override
  double CalculateSurfaceArea() {
    // TODO: implement CalculateArea
    return super.length! * super.length! * 4;
  }

  @override
  double CalculateVolume() {
    // TODO: implement CalculateVolume
    return (4/3) * length! * length! * length! * 3.14 ;
  }

}
