/*
*
* This script creates a hyperboloid CAD piece based on the inputted values. Enjoy!
* - Philip
*/

//To user: Mutate these parameters to change hyperboloid 
int angle = 30 //steeper angle makes hyperboloid wider
int width = 7 //radius of hyperboloid at its thinnest layer (the direct middle)
int height = 100 //length of each pole (actual heigh of the structure depends on this and the angle
int resolution = 8 //higher resolution creates finer poles but takes exponentially longer to load

///Code below will set up and return the hyperboloid/////

//setting up top and bottom parts
CSG stick = new Cylinder(2, 2, height, (int)resolution).toCSG()
CSG second = stick

//First half
stick = stick.roty(angle)
CSG stick2 = stick.rotz(-15).movex(width*Math.cos(Math.toRadians(15))).movey(width*Math.sin(15*2*Math.PI/360))
for(int i = 0; i < 25; i++){

stick = stick.union(stick2)
stick2 = stick2.rotz(-15).movex(width*Math.cos(Math.toRadians(15))).movey(width*Math.sin(15*2*Math.PI/360))

}

CSG stick3 = new Cylinder(2, 2, height, (int)resolution).toCSG().roty(-angle).rotx(180)
stick = stick.union(stick3)
for(int i = 0; i < 23; i++){
stick3 = stick3.rotz(-15).movex(width*Math.cos(Math.toRadians(15))).movey(width*Math.sin(Math.toRadians(15)))
stick = stick.union(stick3)
}


//Second Half
third = second
second = second.roty(-angle)

stick2 = second.rotz(-15).movex(width*Math.cos(Math.toRadians(15))).movey(width*Math.sin(15*2*Math.PI/360))
for(int i = 0; i < 25; i++){

second = second.union(stick2)
stick2 = stick2.rotz(-15).movex(width*Math.cos(Math.toRadians(15))).movey(width*Math.sin(15*2*Math.PI/360))

}

stick3 = third.rotx(180).roty(-angle)
second = second.union(stick3)
for(int i = 0; i < 23; i++){

stick3 = stick3.rotz(-15).movex(width*Math.cos(Math.toRadians(15))).movey(width*Math.sin(Math.toRadians(15)))
second = second.union(stick3)
}

second.setColor(javafx.scene.paint.Color.RED)

//uncomment below to export for print
//stick = stick.union(second)


//For computer visualizing:
return [stick, second]

//For printing:
//return stick
