'use strict';

var dice = new Array();
var total = 0;
var count1 = 0;
var count2 = 0;
var count3 = 0;
var count4 = 0;
var count5 = 0;
var count6 = 0;

function setup() {
    createCanvas(600, 600);
    //noLoop();
    for (var i = 0; i < 3; i++) {
        for (var j = 0; j < 3; j++) {
            dice[i * 3 + j] = new Die(110 * i + 10, 110 * j + 10);
        }
    }
}

function draw() {
    background('#030303');

    for (var i = 0; i < dice.length; i++) {
        dice[i].show();
    }

    if (frameCount % 30 == 0) {
        total = 0;
        count1 = 0;
        count2 = 0;
        count3 = 0;
        count4 = 0;
        count5 = 0;
        count6 = 0;
        for (var i = 0; i < dice.length; i++) {
            dice[i].roll();
            total += dice[i].rand;
        }
    }
    fill('#FFFFFF');
    textSize(20);
    text("Total: ", 25, 375);
    text("" + total, 85, 375);

    text("Ones: ", 25, 400);
    text("" + count1, 85, 400);

    text("Twos: ", 25, 425);
    text("" + count2, 85, 425);

    text("Threes: ", 25, 450);
    text("" + count3, 100, 450);

    text("Fours: ", 25, 475);
    text("" + count4, 95, 475);

    text("Fives: ", 25, 500);
    text("" + count5, 85, 500);

    text("Sixes: ", 25, 525);
    text("" + count6, 85, 525);

    fill('#FFFFFF');
    ellipse(473, 200, 5 * total, 5 * total);
    fill('#030303')
    ellipse(473, 200, 5 * (total / 9), 5 * (total / 9));
    fill('#FFFFFF');
    text("Total Compared To Avg:", 360, 50);
    rect(170, 525, 50, -10 * count1);
    rect(230, 525, 50, -10 * count2);
    rect(290, 525, 50, -10 * count3);
    rect(350, 525, 50, -10 * count4);
    rect(410, 525, 50, -10 * count5);
    rect(470, 525, 50, -10 * count6);
    rect(160, 530, 370, 3)


}

function mousePressed() {
    redraw();
}



class Die {
    //  private int x;
    //  private int y;
    //  private int rand;

    constructor(x, y) {
        this.x = x;
        this.y = y;
        this.rand = Math.floor((Math.random() * 6) + 1);

    }

    roll() {
        this.rand = Math.floor((Math.random() * 6) + 1);
        switch (this.rand) {
            case 1:
                count1++;
                break;
            case 2:
                count2++;
                break;
            case 3:
                count3++;
                break;
            case 4:
                count4++;
            case 5:
                count5++;
                break;
            case 6:
                count6++;
                break;
        }
    }

    show() {
        //System.out.println(rand);

        if (this.rand == 1) {
            console.log(this.rand);
            fill('#FF0303');
            rect(this.x, this.y, 100, 100, 10, 10, 10, 10);
            fill(0, 0, 0);
            ellipse(this.x + 50, this.y + 50, 20, 20);
            //total+=1;
            //count1++;
        }

        if (this.rand == 2) {
            console.log(this.rand);
            fill('#3F00FF');
            rect(this.x, this.y, 100, 100, 10, 10, 10, 10);
            fill(0, 0, 0);
            ellipse(this.x + 25, this.y + 25, 20, 20);
            ellipse(this.x + 75, this.y + 75, 20, 20);
            //total+=2;
            //count2++;
        }

        if (this.rand == 3) {
            console.log(this.rand);
            fill('#00FF28');
            rect(this.x, this.y, 100, 100, 10, 10, 10, 10);
            fill(0, 0, 0);
            ellipse(this.x + 25, this.y + 25, 20, 20);
            ellipse(this.x + 50, this.y + 50, 20, 20);
            ellipse(this.x + 75, this.y + 75, 20, 20);
            //total+=3;
            //count3++;
        }

        if (this.rand == 4) {
            console.log(this.rand);
            fill('#FFEA00');
            rect(this.x, this.y, 100, 100, 10, 10, 10, 10);
            fill(0, 0, 0);
            ellipse(this.x + 25, this.y + 25, 20, 20);
            ellipse(this.x + 25, this.y + 75, 20, 20);
            ellipse(this.x + 75, this.y + 25, 20, 20);
            ellipse(this.x + 75, this.y + 75, 20, 20);
            //total+=4;
            //count4++;
        }

        if (this.rand == 5) {
            console.log(this.rand);
            fill('#FF8000');
            rect(this.x, this.y, 100, 100, 10, 10, 10, 10);
            fill(0, 0, 0);
            ellipse(this.x + 25, this.y + 25, 20, 20);
            ellipse(this.x + 25, this.y + 75, 20, 20);
            ellipse(this.x + 50, this.y + 50, 20, 20);
            ellipse(this.x + 75, this.y + 25, 20, 20);
            ellipse(this.x + 75, this.y + 75, 20, 20);
            //total+=5;
            //count5++;
        }

        if (this.rand == 6) {
            console.log(this.rand);
            fill('#FF00F3');
            rect(this.x, this.y, 100, 100, 10, 10, 10, 10);
            fill(0, 0, 0);
            ellipse(this.x + 25, this.y + 20, 20, 20);
            ellipse(this.x + 25, this.y + 50, 20, 20);
            ellipse(this.x + 25, this.y + 80, 20, 20);
            ellipse(this.x + 75, this.y + 20, 20, 20);
            ellipse(this.x + 75, this.y + 50, 20, 20);
            ellipse(this.x + 75, this.y + 80, 20, 20);
            //total+=6;
            //count6++;
        }
    }
}
