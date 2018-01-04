package com.sirketadi.calisma;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Properties.Yazar;
import Utils.DB;

@Controller
public class YazarController {
	
	
	@RequestMapping(value = "yazaris", method = RequestMethod.POST)
	public String YazarForm(Model model,Yazar yazar) {
		int a=5;
		String se=null;
		  try { 
			    String qS="Select yazar_yazi from yazarlar";
	            String q = "CALL YazarKayit(?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1,yazar.getYazarYazi());
	            pr.executeQuery();
	            System.out.println("ASAMA 1");
	            PreparedStatement pr2 = new DB().preBaglan(qS);
	            ResultSet rss = pr2.executeQuery();
	            System.out.println("ASAMA 2");
	            while(rss.next()) {
	            	 System.out.println("ASAMA 3");
	            	  se=rss.getString("yazar_yazi");
	            	 System.out.println(se);
	            	 model.addAttribute("editor",se);
	            	 System.out.println("ASAMA 4");
	            }
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		  System.out.println("ne olur"+se);
		  model.addAttribute("a", a);
		  model.addAttribute("editor",se);
		return "anasayfa";
	}
	
	@RequestMapping(value = "yazarkayit", method = RequestMethod.POST)
	public String yazaralma(Yazar yazar) {
		
		try {
            String q = "CALL YazarKayit(?,?)";
            PreparedStatement pr = new DB().preBaglan(q);
            pr.setString(1,yazar.getYazarAdi());
            pr.setString(2,yazar.getYazarGrup());
          
            pr.executeQuery();
           
        } catch (Exception e) {
            System.err.println("Hata : " + e);
        }
		
		
		return "redirect:/yazar";
	}
	
	
	@RequestMapping(value = "yazar", method = RequestMethod.GET)
	public String yazarEkle(Model model) {
		String gelenid="-1";
		try {
			String q="Select MAX(id) as id from urun_resimleri";
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
		model.addAttribute("id", "00"+id);
		return "/admin/yazarEkle";
	}

}
