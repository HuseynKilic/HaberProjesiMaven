package com.sirketadi.calisma;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Properties.Haber;
import Utils.DB;



@Controller
public class HaberEkleController {
	@RequestMapping(value = "haberekle", method = RequestMethod.GET)
	public String haberEkle(Model model) {
		String gelenid="-1";
		try {
			String q="Select MAX(urun_id) as id from urun_resimleri";
			PreparedStatement pr = new DB().preBaglan(q);
			 ResultSet rss = pr.executeQuery();
	            while(rss.next()) {
	            	gelenid=rss.getString("id");
	            	if(gelenid==null) {
	            		gelenid="1";
	            	}
	            	
	                System.out.println("iddeger:" + gelenid);
	            }
			
		}
		catch (Exception e) {
            System.err.println("Hata : " + e);
        }
		int id=Integer.valueOf(gelenid);
		id++;
		model.addAttribute("id", ""+id);
		return "/admin/haberEkle";
	}
	
	@RequestMapping(value = "kayit", method = RequestMethod.POST)
	public String haberForm(Model model,Haber haber) {
		  try {
	            String q = "CALL HaberKayit(?,?,?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1,haber.getHaberBaslik() );
	            pr.setString(2,haber.getHaberDetay() );
	            pr.setString(3,haber.getHaberGrup() );
	            pr.executeQuery();
	           
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		
		return "redirect:/haberekle";
	}

}
