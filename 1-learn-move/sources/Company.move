module 0x42::SocialNetwork {
	use std::debug;

	struct Person has drop {
		age: u8 
	}

	public fun set_age(new_age: u8): u8 {
		let person = Person { age: new_age };
		debug::print(&person.age);
		person.age
	}

    #[test]
    fun test_print() {
		assert!(set_age(43) == 43, 0);
    }
}
