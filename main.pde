import com.tinkerforge.IPConnection;
import com.tinkerforge.BrickServo;

public static final String host = "localhost";
public static final int port = 4223;

public static final String UIDservo = "";
public static final String UIDtaster = "";

public static int position;
public static String status = "Aus";

void setup(){
  
  background(0,0,0);
  fullScreen(1);
  
  IPConnection conn = new IPConnection();
  BrickServo serv = new BrickServo(UIDservo, conn);
  
  conn.connect(host, port);
  

}

void draw(){
  
  clear();
  
  if(mouseX < width/2 ){
    status = "An";
  }
  else {
    status = "Aus";  
  }
  
  fill(255,255,255);
  textSize(20);
  text("Status: " + status, width/2, 20);
  text("Servo Position: " + position, 0, 20);

}
