'use strict';

var startX, startY, endX, endY, count, rain, count;
var r1;
var numDrops = 20;
var drops = new Array();

function setup() {
    createCanvas(400, 400);
    startX = (int)(Math.random() * 400);
    startY = 0;
    endX = 350;
    endY = 350;
    count = 0;
    rain = 10;
    strokeWeight(3);
    background('#030303');
    for (var i = 0; i < numDrops; i++) {

        drops[i] = new Rain();
        //drop.push(new Rain());
        //r1 = new Rain();
    }
}

function draw() {
    stroke('#000EFF');
    for (var i = 0; i < drops.length; i++) {
        drops[i].fall();
    }
    if (frameCount % 10 == 0) {
        startX = (int)(Math.random() * 400);
        startY = 0;
        endX = 350;
        endY = 350;
        count++;
    }
    fill(0, 0, 0, 25);
    rect(-5, -5, 420, 420);
    while (endX < 400) {
        endX = startX + Math.floor((Math.random() * 21) - 10);
        endY = startY + Math.floor((Math.random() * 10));
        stroke('#FAFF00');
        line(startX, startY, endX, endY);
        startX = endX;
        startY = endY;
    }
}


class Rain {
    constructor() {
        this.r = Math.floor((Math.random() * 400));
        this.y = Math.floor((Math.random() * height) - height);
    }
    fall() {
        this.y += 7;
        fill(0, 10, 200, 180);
        ellipse(this.r, this.y, 0, 0);
        if (this.y > height) {
            this.r = (Math.random() * 400);
            this.y = (Math.random() * 200) - 200;
        }
    }
}
