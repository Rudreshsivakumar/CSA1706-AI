can_fly(parrot).
can_fly(eagle).
can_fly(pegion).
cannot_fly(ostrich).
cannot_fly(penguin).
bird_can_fly(Bird):- can_fly(Bird).
bird_can_fly(Bird):- \+cannot_fly(Bird).
