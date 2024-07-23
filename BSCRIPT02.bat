@echo off
echo Select a shape:
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
choice /c 123 /n /m "Enter your choice: "
set shape=%errorlevel%
if %shape%==1 (
    set /p radius=Enter the radius: 
    set /a area=3.14159 * %radius% * %radius%
    echo Area of the circle: %area%
    echo Shape: Circle
)
if %shape%==2 (
    set /p side1=Enter the length of side 1: 
    set /p side2=Enter the length of side 2: 
    set /p side3=Enter the length of side 3: 
    set /a s=(%side1% + %side2% + %side3%) / 2
    set /a area=sqrt(%s% * (%s% - %side1%) * (%s% - %side2%) * (%s% - %side3%))
    echo Area of the triangle: %area%
    if %side1%==%side2% if %side2%==%side3% (
        echo Shape: Equilateral Triangle
    ) else if %side1%==%side2% (
        echo Shape: Isosceles Triangle
    ) else (
        echo Shape: Scalene Triangle
    )
)
if %shape%==3 (
    set /p length=Enter the length: 
    set /p width=Enter the width: 
    set /a area=%length% * %width%
    echo Area of the quadrilateral: %area%
    if %length%==%width% (
        echo Shape: Square
    ) else (
        echo Shape: Rectangle
    )
)
Pause