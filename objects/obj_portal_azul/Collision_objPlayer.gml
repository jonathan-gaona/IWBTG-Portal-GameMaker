if (instance_exists(obj_portal_naranja)) {
    if (!other.is_teleporting) {
        // Mover posición
        other.x = obj_portal_naranja.x;
        other.y = obj_portal_naranja.y;
        
        // Mantener la velocidad vertical y horizontal
        // (Si el motor usa vspeed / hspeed)
        if (variable_instance_exists(other.id, "vspeed")) {
            // Invertir o mantener la velocidad vertical si es una caída fuerte
            other.vspeed = other.vspeed; 
        }
        
        // Si el motor usa las variables personalizadas v_speed / h_speed:
        if (variable_instance_exists(other.id, "v_speed")) {
            other.v_speed = other.v_speed;
        }
		
		// Ejemplo: Convertir caída libre en impulso hacia arriba
		if (other.vspeed > 0) { // Si el jugador está cayendo
			other.vspeed = -other.vspeed; // Invierte la velocidad para salir disparado hacia arriba
		}

        other.is_teleporting = true;
    }
}