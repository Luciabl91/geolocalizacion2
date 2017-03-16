package com.mercadolibre.geolocalizacion

class GeoController {

    def index() {
	
	}
	
	def buscarAgencias () {
		
		println params.latitud
		println params.longitud
		
		String lat = "-31.336173"
		String lng = "-64.207536"
		String rango = params.rango
		String limite = params.limite
		
		ArrayList arrayAgencias
		if (lat != null && !lat.equals("") && !lat.equals("null") && lng != null && !lng.equals("") && !lng.equals("null") ) {
			arrayAgencias = buscarAgenciasEnApi(lat,lng, rango, limite)
		} else {
			arrayAgencias = new ArrayList()
		}
		[agencias:arrayAgencias]
	}
	
	private buscarAgenciasEnApi (String lat, String lng, String rang, String lim) {	
		
		String url = "https://api.mercadolibre.com/sites/MLA/payment_methods/agencies/search?near_to="+lat+",%20"+lng
		if (lim != null && !lim.equals("") && !lim.equals("null")) {
			url = url +"&limit="+lim
		}
		
		ArrayList array = Utils.getArrayFromJson(url)		
		return array
	}
}
