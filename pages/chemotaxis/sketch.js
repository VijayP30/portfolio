'use strict';

var b = new Array();
var i = 0;
var score = 0;

function setup() {
    createCanvas(1000, 1000);
    for (var i = 0; i < 501; i++) {
        b[i] = new Bacteria(width / 2, height / 2, 20);
    }
}

function draw() {
    background('#AEB4B7');

    fill('255');
    ellipse(500, 500, 900, 1000);
    fill('#4D03FF');
    ellipse(500, 500, 750, 900);
    for (var i = 0; i < b.length; i++) {
        b[i].bounce();
        b[i].show();
//             if(mousePressed)
//             {
//               fill('#00ACFF');
//               rect(mouseX+30,mouseY-30,10,4);
//               if(mouseX>b[i].x-20 && mouseX<b[i].x+20 && mouseY>b[i].y-20 && mouseY<b[i].y+20)
//               {
//                 b[i]=new Bacteria(0,0,0);
//                 score++;
//                 console.log(score);
//               }
//             }
    }
    b[0].killB();
    if (score >= 500) {
        fill('#0D98FF');
        ellipse(500, 500, 750, 900);
        fill('0');
        textSize(50);
        text("All Clean!", 400, 500);
    }

    function mousePressed() {
        fill('#00ACFF');
        rect(mouseX + 30, mouseY - 30, 10, 4);
        if (mouseX > b[i].x - 20 && mouseX < b[i].x + 20 && mouseY > b[i].y - 20 && mouseY < b[i].y + 20) {
            b[i] = new Bacteria(0, 0, 0);
            score++;
            console.log(score);
        }
    }
}

class Bacteria {
    //   private int x;
    //   private int y;
    //   private int radius;
    //   private int xvel;
    //   private int yvel;
    constructor(x,y,radius) {
        this.x = x;
        this.y = y;
        this.radius = radius;
        this.xvel = Math.floor((Math.random() * 10) - 5);
        this.yvel = Math.floor((Math.random() * 10) - 5);
    }
    bounce() {

        if (this.x > 700 || this.x < 300)
            this.xvel = -1 * this.xvel;
        if (this.y > 850 || this.y < 200)
            this.yvel = -1 * this.yvel;
        this.x = this.x + this.xvel;
        this.y = this.y + this.yvel;
    }
    show() {
        fill('#039B27');
        ellipse(this.x, this.y, this.radius, this.radius);
    }
    killB() {
        fill('#FFFFFF');
        triangle(mouseX, mouseY, mouseX + 25, mouseY, mouseX + 10, mouseY - 25);
        rect(mouseX + 10, mouseY - 30, 20, 5);
    }
}
