'use strict';

var s;
var wList;
var w = new Array();
var words = new Array();

function setup() {
    createCanvas(1000, 1000);
    background('#D6D6D6');
    w = loadStrings("C:\\Users\\curio\\Desktop\\Portfolio\\javaProjects\\wordCloudVijay\\peterpan.txt");
    s = join(w, " ");
    words = splitTokens(s, ",.!?-\" ");
    wList = new WordList(words);
}

function draw() {
    background('#D6D6D6');
    wList.displayS();
    wList.displayB();
}

class Word {
    constructor(var w) {
        this.count = 1;
        this.word = w;
    }
    getWord() {
        return this.word;
    }
    setWord(var w) {
        this.word = w;

    }
    toString() {
        return this.word + " " + this.count;
    }
}









//import java.util.*;
class WordList {
    constructor(var tokens) {
        this.myList = new ArrayList();
        for (this.w: tokens) {
            this.found = false;
            for (Word x: this.myList) {
                if (x.word.equals(w)) {
                    x.count++;
                    found = true;
                }
            }
            if (!this.found) {
                this.myList.add(new Word(this.w));
            }
        }
    }
    countHighest() {
        this.countHighest = 0;
        for (var s: this.myList) {
            if (s.count > this.countHighest)
                this.countHighest = s.count;
        }
        return this.countHighest;
    }
    displayS() {
        for (var w: this.myList) {
            textSize(map(w.count, 1, this.countHighest(), 15, 100));
            fill('random(255)');
            if (w.count <= 75) {
                text(w.word, (Math.random() * 500) + 170, (Math.random() * 500) + 200);
            }
        }
    }
    displayB() {
        this.theta = 0;
        for (var w: this.myList) {
            textSize(map(w.count, 1, this.countHighest(), 15, 100));
            if (w.count >= 75) {
                rotate(this.theta);
                fill('#FF0000');
                text(w.word, random(900), random(900));
                this.theta -= 0.01;
            }
        }
    }
}
