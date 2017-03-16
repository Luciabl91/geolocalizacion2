package com.mercadolibre.geolocalizacion
import groovy.json.JsonSlurper


class Utils {
	
	/**
	 * Obtain Json from link and return the elements of Json into an ArrayList
	 * @param link
	 * @return
	 */
	public static getArrayFromJson (String link) throws FileNotFoundException{
		def url = new URL(link)
		
		def connection = (HttpURLConnection)url.openConnection()
		
		connection.setRequestMethod("GET")
		connection.setRequestProperty("Accept", "application/json")
		connection.setRequestProperty("User-Agent", "Mozzilla/5.0")
		
		JsonSlurper json = new JsonSlurper()
		Map mapAux = (Map) json.parse(connection.getInputStream())
		ArrayList results = mapAux.results
			
		return results
	}
}