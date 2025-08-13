module suiblade::game {

    // Objeto principal del juego: Sword
    struct Sword has key {
        power: u64,
    }
// Crear una espada nueva
public fun create_sword(power: u64): Sword {
    Sword { power }
}

// Mejorar la espada aumentando su poder
public fun upgrade_sword(s: &mut Sword, increase: u64) {
    s.power = s.power + increase;
}

// Consultar poder de la espada
public fun get_power(s: &Sword): u64 {
    s.power
}

// Batalla simple entre dos espadas
public fun battle(s1: &Sword, s2: &Sword): &Sword {
    if (s1.power >= s2.power) { s1 } else { s2 }
}

}
