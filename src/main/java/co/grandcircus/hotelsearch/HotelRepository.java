package co.grandcircus.hotelsearch;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

public interface HotelRepository extends MongoRepository<Hotel, String>{
	
		List<Hotel> findByCity (String city);
		
		@Query("{'city': ?0, 'pricePerNight': {$lt: ?1}}")
		List<Hotel>findByCityWithMaxPrice(String city, int pricePerNight);
		

}

