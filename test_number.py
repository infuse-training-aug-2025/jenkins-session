def test_number_threshold():
    with open("number.txt") as f:
        number = int(f.read().strip())
    assert number >= 30, f"Number {number} is less than 30"
