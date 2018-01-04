package com.sirketadi.calisma;

import java.io.File;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Properties.Yazar;
import Properties.YazarBilgiEnum;
import Utils.DB;

@Controller
public class YaziEkleController {
	
	@RequestMapping(value = "yazilar", method = RequestMethod.GET)
	public String yaziSayfaKarsilama(Model model) {
		model.addAttribute("yls", yazarDataGetir()); 
		 
		return "/admin/yaziEkle";
	}
	
	@RequestMapping(value = "yaziekleson", method = RequestMethod.GET)
	public String yaziekleson(Model model,@RequestParam String id,@RequestParam String url,@RequestParam String klasor) {
String dosyaadi="";
List<String> lines=null;
		try {
			String q = "SELECT urun_resimleri.adi as dosyaad from urun_resimleri WHERE urun_id="+id+" HAVING MAX(id)"; 
			  PreparedStatement pr = new DB().preBaglan(q);
	            
	            
				ResultSet rs=pr.executeQuery();
				while(rs.next()) {
					dosyaadi=rs.getString("dosyaad");
				}
		}
		catch (Exception e) {
			System.out.println(e+"hata okumada");
		}
		try {
			System.out.println(".."+dosyaadi+"..");
			System.out.println(".."+id);
			lines = Files.readAllLines(Paths.get("C:\\xampp\\htdocs\\resim\\server\\php\\files\\0000"+id+"\\"+dosyaadi),Charset.defaultCharset());
	        
			for (String line : lines) {
	            System.out.println(line);
	       }
			
		}
		catch (Exception e) {
			System.out.println("dosya okumaaa"+e);
		}
		
		
		
		model.addAttribute("lines",lines);
		model.addAttribute("yazarurl",url);
		model.addAttribute("klasor",klasor);
		model.addAttribute("id",id);
		 
		return "/admin/YaziEkleSon";
	}
	
	
	@RequestMapping(value = "yaziekle", method = RequestMethod.GET)
	public String yaziSayfaKarsilama(Model model,@RequestParam String ide,@RequestParam String url,@RequestParam String klasor) {
		
		
		
		model.addAttribute("yazar",ide);
		model.addAttribute("yazarurl",url);
		model.addAttribute("klasor",klasor);
		return "/admin/yaziEkleDevam";
	}
	
	
	public List<Yazar> yazarDataGetir() {
		List<Yazar> yls = new ArrayList<Yazar>();
		try {
            String q = "CALL YazarBilgi";
            PreparedStatement pr = new DB().preBaglan(q);
            ResultSet rs=pr.executeQuery();
            while(rs.next()) {
				Yazar yazar=new Yazar();
				yazar.setYazarId(rs.getString(""+YazarBilgiEnum.id_yazar));
				yazar.setYazarAdi(rs.getString(""+YazarBilgiEnum.yazar_ad));
				yazar.setYazarGrup(rs.getString(""+YazarBilgiEnum.yazar_grup));
				yazar.setYazarResimUrl(rs.getString(""+YazarBilgiEnum.resimurl));
				yazar.setYazarResimKlasor(rs.getString(""+YazarBilgiEnum.klasor));
				yls.add(yazar);
			}
            
           
        } catch (Exception e) {
            System.err.println("HataYazarBilgi : " + e);
        }
	 
		
		return yls;
	}
	@RequestMapping(value = "/edit-/{id}-/{url}-/{klasor}", method = RequestMethod.GET)
	public String git(Model model,@PathVariable String id,@PathVariable String url,@PathVariable String klasor) {
		model.addAttribute("url",url);
		model.addAttribute("klasor",klasor);
		model.addAttribute("id",id);
		return "redirect:/yaziekleson";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/sil/{id}-/{rkla}", method = RequestMethod.GET)
	public String sil(@PathVariable String id,@PathVariable String rkla) {
		try {
			System.out.println("sil içinde id"+id);
			String q = "CALL YazarSil(?)";
			FileUtils.deleteDirectory(new File("C:\\xampp\\htdocs\\resim\\server\\php\\files\\"+rkla));
		    
		
		    
            PreparedStatement pr = new DB().preBaglan(q);
            pr.setString(1,id);
            
			int sil = pr.executeUpdate();
			if (sil > 0 ) {
				return "redirect:/yazilar";
			}
		} catch (Exception e) {
			System.err.println("Silme hatasý : " + e);
		}
		return "redirect:/yazilar";
	}
	
	@RequestMapping(value = "yaziekle/{id}-/{resimurl}-/{kla}", method = RequestMethod.GET)
	public String eklemeDevam(Model model,@PathVariable String id,@PathVariable String resimurl,@PathVariable String kla) {
		try {
			
		} catch (Exception e) {
			System.err.println("okuma : " + e);
		}
        model.addAttribute("ide",id);
        model.addAttribute("url",resimurl);
        model.addAttribute("klasor",kla);
		return "redirect:/yaziekle";
	}
	
	@RequestMapping(value = "ipsumkayit", method = RequestMethod.POST)
	public String haberForm(@RequestParam String editor1,@RequestParam String id) {
		  try {
	            String q="CALL yaziDetay(?,?)";
	            
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1, id);
	            pr.setString(2, editor1);

	            pr.executeUpdate();
	           
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		
		return "redirect:/yazilar";
	}
	

}
