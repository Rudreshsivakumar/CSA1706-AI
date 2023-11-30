class VacuumCleaner:
    def __init__(self, location="A"):
        self.location = location  # Initial location of the vacuum cleaner
        self.cleaned_locations = set()  # Set to track cleaned locations

    def clean(self):
        print(f"Cleaning location {self.location}")
        self.cleaned_locations.add(self.location)

    def move(self, new_location):
        print(f"Moving from {self.location} to {new_location}")
        self.location = new_location

def vacuum_cleaner_simulation():
    vacuum = VacuumCleaner()

    while len(vacuum.cleaned_locations) < 2:
        vacuum.clean()

        # Move to the other location
        if vacuum.location == "A":
            vacuum.move("B")
        else:
            vacuum.move("A")

    print("Cleaning complete. All locations have been cleaned.")

# Example usage:
vacuum_cleaner_simulation()
