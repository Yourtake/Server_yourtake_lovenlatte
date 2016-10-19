/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.zapang.backend;
import java.io.BufferedReader; 
import java.io.InputStreamReader;
import java.io.OutputStreamWriter; 
import java.net.URL; 
import java.net.URLConnection;
 import java.net.URLEncoder; 
/**
 *
 * @author MumbaiZone
 */

public class SMSSending extends Thread{
   String body;
   String number;

    public SMSSending(String number,String body) {
        this.body = body;
        this.number = number;
    }

  
    
public void run()
 {

 String APIKey="Ys08m8emokqn4YsRqmUufw";
 String senderid="WEBSMS";
 String flashsms="0";
 String route="1";
 String channel ="2";
 String dcs="0";
 
 String fl="";
 String retval="";
  String rsp="";
 try {
 // Construct The Post Data
 String data = URLEncoder.encode("APIKey","UTF-8") + "=" + URLEncoder.encode(APIKey, "UTF-8");
 data += "&" + URLEncoder.encode("number", "UTF-8") + "=" + URLEncoder.encode("91"+number, "UTF-8");
 data += "&" + URLEncoder.encode("text","UTF-8") + "=" + URLEncoder.encode(body, "UTF-8");
 data += "&" + URLEncoder.encode("senderid","UTF-8") + "=" + URLEncoder.encode(senderid, "UTF-8");
 data += "&" + URLEncoder.encode("flashsms", "UTF-8") + "=" + URLEncoder.encode(flashsms, "UTF-8");
data += "&" + URLEncoder.encode("route", "UTF-8") + "=" + URLEncoder.encode(route, "UTF-8");
data += "&" + URLEncoder.encode("DCS", "UTF-8") + "=" + URLEncoder.encode(dcs, "UTF-8");
data += "&" + URLEncoder.encode("channel", "UTF-8") + "=" + URLEncoder.encode(channel, "UTF-8");
 //Push the HTTP Request
 URL url = new URL("http://login.smsgatewayhub.com/api/mt/SendSMS?");
 URLConnection conn = url.openConnection();
 conn.setDoOutput(true);
 OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
 wr.write(data);
 wr.flush();
 //Read The Response
 BufferedReader rd = new BufferedReader(
new InputStreamReader(conn.getInputStream()));
 String line;
 while ((line = rd.readLine()) != null)
{
 // Process line...
 retval += line;
 }
 wr.close();
 rd.close();
 System.out.println(retval);
 rsp = retval;
 } catch (Exception e) {
 e.printStackTrace();
 }
     System.out.println(rsp);
 }
               
}

  