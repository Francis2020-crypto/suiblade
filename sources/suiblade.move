module suiblade::game {

    use walrus::Debug;

    struct Sword has key {
        power: u64,
    }

    public fun create_sword(power: u64): Sword {
        Sword { power }
    }

    public fun battle(s1: &Sword, s2: &Sword): &Sword {
        if (s1.power >= s2.power) { s1 } else { s2 }
    }

    public fun test_battle() {
        let s1 = create_sword(10);
        let s2 = create_sword(15);
        let winner = battle(&s1, &s2);
        Debug::print(&winner.power);
    }
}
