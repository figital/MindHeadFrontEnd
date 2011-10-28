/* @pjs crisp="true"; */
function stage(){
	strokeWeight(1);
	var blue = '255,0,51';
	background(50);
	stroke(90);
	for (i = 1; i < width/50; i++) {
	
		line(i*50,0,i*50,height);
	
	}
		for (i = 1; i < height/10; i++) {
	
		line(0,i*10,width,i*10);
	
	}

}

void setup() {
	y = 0.0;

	size(500, 100);

	noiseSeed(0);
	v = 0.05;
	inc = 0.05;
	oldval = 0;
	//var color = 
	stage();
	ts = 0;
	
}
void draw() {
	frameRate(60);
	ts++;
	

	stroke(150);
	line(0,50,width,50);
	//stroke(0);
	stroke(255,0,51); // red

	float n = noise(v) * 150;
	n = n - 75;
	topx = 50 - n;
	bottom = 50;
	strokeWeight(1.5);
	line(y-1,oldval,y,topx+1); // blip
	strokeWeight(1);
	stroke( 0, 121, 184 );
	//line(y,topx,y,height);
	//stroke(255,255,133);
	//line(y,0,y,100);
	if (n > 0) {
		foo++;
	} else {
		foo = 0;
	}
	if (y > width) {
		y = 0;
		stage();
	}
	if (foo >=trend) {
		//stage();
		counter1++;
		foo = 0;
		stroke(255,255,0); // red
		strokeWeight(10);
		line(y,topx,y,topx); // blip
		strokeWeight(1.5);
	}
	strokeWeight(1);
	oldval = topx;
	y = y + .5;
	v = v + inc;
	console.log(ts + ': ' + n);

	
}
