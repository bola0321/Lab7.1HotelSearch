package co.grandcircus.hotelsearch;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HotelController {
	
	@Autowired
	private HotelRepository repo;
	
	@RequestMapping("/")
	public String hotelHome() {
		
		
		return "home";
	}
	
	@PostMapping("/results")
	public String hotelSearchResults(@RequestParam String city,
									@RequestParam int pricePerNight,
									Model model) {
		
		List <Hotel>hotelList = repo.findByCity(city);
		hotelList.sort((Hotel first, Hotel second) -> {
			if(first.getPricePerNight()<second.getPricePerNight()) {
				return -1;
			}else if(first.getPricePerNight()>second.getPricePerNight()) {
				return 1;
			}else {
				return 0;
			}
		});
		
		
//TODO: fix price per night stuff (it's not yet omitting hotels over max price)
		
		model.addAttribute("city",city);
		model.addAttribute("hotelList", hotelList);
		
		
		return "searchResults";
	}

}
