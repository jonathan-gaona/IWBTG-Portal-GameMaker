if (instance_exists(obj_portal_azul)) {
    if (!other.is_teleporting) {
        // Mover posición
        other.x = obj_portal_azul.x;
        other.y = obj_portal_azul.y;
        
        // Mantener la velocidad
        if (variable_instance_exists(other.id, "vspeed")) {
            other.vspeed = other.vspeed;
        }
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