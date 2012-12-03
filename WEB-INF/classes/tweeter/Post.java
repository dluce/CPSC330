package tweeter;

import java.sql.Timestamp;
/**
 *
 * @author David
 */
public class Post {
	
    Post(){
	isPublic = true;
	content = "Testing objects.";
    }
    
    Post(User u, Timestamp ts, String t){
        isPublic = true;
        time = ts;
        user = u.getName();
        
        if(t.equals("")){
            topic = null;
        }
	else{
	    topic = t;
	}              
    }
    
    public void makePrivate(){
        isPublic = false;
    }
   
    public void print(){
	System.out.println(content);
    } 
    
    public String content;
    public String user;
    public boolean isPublic;
    public Timestamp time;
    public String topic;
}
