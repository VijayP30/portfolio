'use strict';

var nprArray=new Array();
var npArray=new Array();
var jb;
var obArray=new Array();
var obtArray=new Array();

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
    background(0);
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
    triangle(55,45,60,60,45,55);

}
class Particle {

    move()
    {}
    show()
    {}

}

class OddballParticle extends Particle //uses an interface
{
    constructor() {
        super();
        this.x = 500;
        this.y = 500;
        this.speed = Math.random() * 20;
        this.angle = (Math.PI * 5) * Math.random() * 6;
    }
    move() {
        this.x += -(Math.tan(this.angle) * this.speed * 3);
        this.y += Math.cos(this.angle) * this.speed;
        this.angle += 0.15;

        if (this.x > 999) {
            this.x = 999;
        } else if (this.x < 10) {
            this.x = 10;
        }

        if (this.y > 999) {
            this.y = 999;
        } else if (this.y < 10) {
            this.y = 10;
        }
    }
    show() {
        fill('255');
        ellipse(Math.floor(this.x), Math.floor(this.y), 5, 5);
    }
}




class JumboParticle extends OddballParticle //uses inheritance
{

    constructor() {
        super();
        this.x = 500;
        this.y = 500;
        this.speed = Math.random() * 20;
        this.angle = (Math.PI * 5) * Math.random() * 6;
        //angle=(Math.PI/2)*Math.random();
    }
    move() {
        this.x += Math.cos(this.angle) * this.speed;
        this.y += (Math.sin(this.angle) * this.speed);
        this.angle += .01;

        if (this.x > 510) {
            this.x = 500;
        } else if (this.x < 490) {
            this.x = 500;
        }

        if (this.y > 510) {
            this.y = 500;
        } else if (this.y < 490) {
            this.y = 500
        }
    }

    show() {
        fill('255');
        ellipse(Math.floor(this.x), Math.floor(this.y), 50, 50);
    }

}


class NormalParticleRed {

    constructor() {
        this.x = 500;
        this.y = 500;
        this.speed = Math.random() * 5;
        this.angle = (Math.PI * 2) * Math.random();
        //angle=(Math.PI/2)*Math.random();
    }

    move() {
        this.x += Math.tan(this.angle) * this.speed;
        this.y += Math.tan(this.angle) * this.speed;
        this.angle += 0.05;
        if (this.x > 999) {
            this.x = 750;
        } else if (this.x < 0) {
            this.x = 750;
        }

        if (this.y > 999) {
            this.y = 750;

        } else if (this.y < 0) {
            this.y = 750;
        }
    }

    show() {
        fill('#FF0000');
        if (this.x <= 250)
            ellipse(Math.floor(this.x), Math.floor(this.y), 6, 6);
        if (this.x > 250 && this.x < 500)
            ellipse(Math.floor(this.x), Math.floor(this.y), 5, 5);
        if (this.x >= 500 && this.x < 750)
            ellipse(Math.floor(this.x), Math.floor(this.y), 4, 4);
        if (this.x >= 750)
            ellipse(Math.floor(this.x), Math.floor(this.y), 3, 3);
    }
}



class NormalParticle {
    //your code here

    constructor() {
        this.x = 500;
        this.y = 500;
        this.speed = Math.random() * 20;
        this.angle = (Math.PI * 5) * Math.random() * 6;
        this.r = 0;
        this.g = 0;
        this.b = 0;
        this.t = 0;
        //angle=(Math.PI/2)*Math.random();
    }
    move() {
        this.x += -(Math.cos(this.angle) * this.speed * 3);
        this.y += (Math.sin(this.angle) * this.speed);
        this.angle += .025;

        if (this.x > 999) {
            this.x = 999;
        } else if (this.x < 10) {
            this.x = 10;
        }

        if (this.y > 999) {
            this.y = 999;
        } else if (this.y < 10) {
            this.y = 10;
        }
    }

    show() {
        noStroke();
        if (this.t == 0) {
            this.randomColor();
            this.t = 300;
        }
        this.t = this.t + 1;
        //println(t);
        colorMode(HSB);
        //blendMode(LIGHTEST);
        fill(this.r, this.g, this.b);
        ellipse(Math.floor(this.x), Math.floor(this.y), 3, 3);
    }

    randomColor() {
        this.r = Math.floor((Math.random() * 155 + 100));
        this.g = Math.floor((Math.random() * 155 + 100));
        this.b = Math.floor((Math.random() * 155 + 100));

    }


}



class OddballParticleTwo extends Particle //uses an interface
{
    constructor() {
        super();
        this.x = 500;
        this.y = 500;
        this.speed = Math.random() * 20;
        this.angle = (Math.PI * 5) * Math.random() * 6;
    }
    move() {
        this.x += Math.tan(this.angle) * this.speed * 3;
        this.y += Math.cos(this.angle) * this.speed;
        this.angle += 0.15;

        if (this.x > 999) {
            this.x = 999;
        } else if (this.x < 10) {
            this.x = 10;
        }

        if (this.y > 999) {
            this.y = 999;
        } else if (this.y < 10) {
            this.y = 10;
        }
    }
    show() {
        fill('255');
        ellipse(Math.floor(this.x), Math.floor(this.y), 5, 5);
    }
}
