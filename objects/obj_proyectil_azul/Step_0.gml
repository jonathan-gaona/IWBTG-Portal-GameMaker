// --- LÓGICA DE IMPACTO CON DETECCIÓN DE SUPERFICIE ---
var _objeto_solido = objBlock; 

if (place_meeting(x + hspeed, y + vspeed, _objeto_solido)) {
    
    // Acercamiento pixel-perfect a la pared
    while (!place_meeting(x + sign(hspeed), y + sign(vspeed), _objeto_solido)) {
        x += sign(hspeed);
        y += sign(vspeed);
    }
    
    // Variable para guardar la superficie detectada
    var _dir_impacto = "piso";
    
    // Detectar dónde está el bloque sólido respecto al proyectil:
    if (position_meeting(x, y + 1, _objeto_solido)) {
        _dir_impacto = "piso";        // Hay un bloque abajo
    } else if (position_meeting(x, y - 1, _objeto_solido)) {
        _dir_impacto = "techo";       // Hay un bloque arriba
    } else if (position_meeting(x + 1, y, _objeto_solido)) {
        _dir_impacto = "pared_der";   // Hay un bloque a la derecha
    } else if (position_meeting(x - 1, y, _objeto_solido)) {
        _dir_impacto = "pared_izq";   // Hay un bloque a la izquierda
    }

    // --- REPOSICIONAR Y ROTAR EL PORTAL AZUL ---
    if (instance_exists(obj_portal_azul)) {
        obj_portal_azul.x = x;
        obj_portal_azul.y = y;
        obj_portal_azul.orientacion = _dir_impacto;
        
        // Rotar el sprite según la superficie alcanzada
        switch (_dir_impacto) {
            case "piso":      obj_portal_azul.image_angle = 0;   break;
            case "techo":     obj_portal_azul.image_angle = 180; break;
            case "pared_der": obj_portal_azul.image_angle = 90;  break;
            case "pared_izq": obj_portal_azul.image_angle = 270; break;
        }
    }
    
    instance_destroy();
}