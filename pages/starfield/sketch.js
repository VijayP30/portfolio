'use strict';

var nprArray;
var npArray;
var jb;
var obArray;
var obtArray;
function setup() {
    createCanvas(1000, 1000);
    for (var i = 0; i < 101; i++) {
        nprArray[i] = new NormalParticleRed();
    }
    for (var i = 0; i < 501; i++) {
        npArray[i] = new NormalParticle();
    }
    for (var i = 0; i < 51; i++) {
        obArray[i] = new OddballParticle();
    }
    for (var i = 0; i < 51; i++) {
        obtArray[i] = new OddballParticleTwo();
    }
    jb = new JumboParticle();
}

function draw() {
    background('0');
    for (var i = 0; i < 101; i++) {
        nprArray[i].show();
        nprArray[i].move();
    }
    jb.show();
    jb.move();
    for (var i = 0; i < 501; i++) {
        npArray[i].show();
        npArray[i].move();
    }
    for (var i = 0; i < 51; i++) {
        obArray[i].show();
        obArray[i].move();
    }
    for (var i = 0; i < 51; i++) {
        obtArray[i].show();
        obtArray[i].move();
    }
    fill('#8E8B8B');
    ellipse(25, 25, 75, 75);
    fill(0);
    ellipse(50, 50, 25, 25);
    fill('#FF0000');
    beginShape();
    vertex(55, 45);
    vertex(60, 60);
    vertex(45, 55);
    endShape();

}
interface Particle {

    void move();
    void show();

}



class JumboParticle extends OddballParticle //uses inheritance
{
    double x, y, angle, speed;

    JumboParticle() {
        x = width / 2;
        y = height / 2;
        speed = Math.random() * 20;
        angle = (Math.PI * 5) * Math.random() * 6;
        //angle=(Math.PI/2)*Math.random();
    }
    void move() {
        x += Math.cos(angle) * speed;
        y += (Math.sin(angle) * speed);
        angle += .01;

        if (x > 510) {
            x = width / 2;
        } else if (x < 490) {
            x = width / 2;
        }

        if (y > 510) {
            y = width / 2;
        } else if (y < 490) {
            y = width / 2;
        }
    }

    void show() {
        fill(255);
        ellipse((int) x, (int) y, 50, 50);
    }

}


class NormalParticleRed {

    double x, y, speed, angle;
    NormalParticleRed() {
        x = 500;
        y = height / 2;
        speed = Math.random() * 5;
        angle = (Math.PI * 2) * Math.random();
        //angle=(Math.PI/2)*Math.random();
    }

    void move() {
        x += Math.tan(angle) * speed;
        y += Math.tan(angle) * speed;
        angle += 0.05;
        if (x > 999) {
            x = 750;
        } else if (x < 0) {
            x = 750;
        }

        if (y > 999) {
            y = 750;

        } else if (y < 0) {
            y = 750;
        }
    }

    void show() {
        fill(#FF0000);
        if (x <= 250)
            ellipse((int) x, (int) y, 6, 6);
        if (x > 250 && x < 500)
            ellipse((int) x, (int) y, 5, 5);
        if (x >= 500 && x < 750)
            ellipse((int) x, (int) y, 4, 4);
        if (x >= 750)
            ellipse((int) x, (int) y, 3, 3);
    }
}



class NormalParticle {
    //your code here
    double x, y, angle, speed;
    int r, g, b;
    int t = 0;

    NormalParticle() {
        x = width / 2;
        y = height / 2;
        speed = Math.random() * 20;
        angle = (Math.PI * 5) * Math.random() * 6;
        //angle=(Math.PI/2)*Math.random();
    }
    void move() {
        x += -(Math.cos(angle) * speed * 3);
        y += (Math.sin(angle) * speed);
        angle += .025;

        if (x > 999) {
            x = 999;
        } else if (x < 10) {
            x = 10;
        }

        if (y > 999) {
            y = 999;
        } else if (y < 10) {
            y = 10;
        }
    }

    void show() {
        noStroke();
        if (t == 0) {
            randomColor();
            t = 300;
        }
        t++;
        //println(t);
        colorMode(HSB);
        //blendMode(LIGHTEST);
        fill(r, g, b);
        ellipse((int) x, (int) y, 3, 3);
    }

    void randomColor() {
        r = ((int)(Math.random() * 155 + 100));
        g = ((int)(Math.random() * 155 + 100));
        b = ((int)(Math.random() * 155 + 100));

    }


}



class OddballParticle implements Particle //uses an interface
{
    double x, y, angle, speed;

    OddballParticle() {
        x = width / 2;
        y = height / 2;
        speed = Math.random() * 20;
        angle = (Math.PI * 5) * Math.random() * 6;
    }
    void move() {
        x += -(Math.tan(angle) * speed * 3);
        y += Math.cos(angle) * speed;
        angle += 0.15;

        if (x > 999) {
            x = 999;
        } else if (x < 10) {
            x = 10;
        }

        if (y > 999) {
            y = 999;
        } else if (y < 10) {
            y = 10;
        }
    }
    void show() {
        fill(255);
        ellipse((int) x, (int) y, 5, 5);
    }
}



class OddballParticleTwo implements Particle //uses an interface
{
    double x, y, angle, speed;

    OddballParticleTwo() {
        x = width / 2;
        y = height / 2;
        speed = Math.random() * 20;
        angle = (Math.PI * 5) * Math.random() * 6;
    }
    void move() {
        x += Math.tan(angle) * speed * 3;
        y += Math.cos(angle) * speed;
        angle += 0.15;

        if (x > 999) {
            x = 999;
        } else if (x < 10) {
            x = 10;
        }

        if (y > 999) {
            y = 999;
        } else if (y < 10) {
            y = 10;
        }
    }
    void show() {
        fill(255);
        ellipse((int) x, (int) y, 5, 5);
    }
}
