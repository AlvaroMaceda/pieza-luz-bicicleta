


module enganche_pequenyo(radio, alto, anchoPared) {

    margen = 1;

    difference() {
        cylinder(r=radio, h=alto);
        translate([0,0,-margen])
            cylinder(r=radio-anchoPared, h=(alto+2*margen));
        translate([0,0,-margen])        
            cunya(angulo=90,largo=2*radio+margen,alto=alto+2*margen);  
    }
    
}

module cunya(angulo, largo, alto) {
    
point0 = [0,0];
point1 = [0,largo];
point2 = [largo*sin(angulo), largo*cos(angulo)];
    
points = [point0,point1,point2];
    linear_extrude(height=alto) {
        polygon(points = points);    
    }
}



enganche_pequenyo(10,10,1);
