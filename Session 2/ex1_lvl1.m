clc; clear;

w = input("Enter your weight in kg here: ");
h = input("Enter your height in cm here: ");

bmi = w/(h/100)^2;

fprintf("Your Body Mass Unit (BMI) is %2.1f\n", bmi)