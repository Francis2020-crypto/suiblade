import 0x1::Debug;
import suiblade::game;

fun main() {
    // Crear dos espadas
    let mut sword1 = game::create_sword(10);
    let mut sword2 = game::create_sword(15);

    // Mejorar la primera espada
    game::upgrade_sword(&mut sword1, 5);

    // Consultar poderes
    Debug::print(&game::get_power(&sword1)); // debería mostrar 15
    Debug::print(&game::get_power(&sword2)); // debería mostrar 15

    // Batalla
    let winner = game::battle(&sword1, &sword2);
    Debug::print(&game::get_power(winner)); // mostrar poder del ganador
}
