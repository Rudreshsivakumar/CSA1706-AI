from collections import deque

def is_valid_state(state):

    for side in state:
        if side[0] < side[1] and side[0] > 0:
            return False
    return True

def is_goal_state(state, total_missionaries):

    return state[1][0] == total_missionaries

def generate_successor_states(current_state, total_missionaries, total_cannibals):
    successors = []

    for boat_m, boat_c in [(1, 0), (2, 0), (0, 1), (0, 2), (1, 1)]:
        new_state = (
            (current_state[0][0] - boat_m, current_state[0][1] - boat_c),
            (current_state[1][0] + boat_m, current_state[1][1] + boat_c)
        )

        if 0 <= new_state[0][0] <= total_missionaries and 0 <= new_state[0][1] <= total_cannibals and \
           0 <= new_state[1][0] <= total_missionaries and 0 <= new_state[1][1] <= total_cannibals and \
           is_valid_state(new_state):
            successors.append(new_state)

    return successors

def solve_missionaries_cannibals(total_missionaries, total_cannibals):
    initial_state = ((total_missionaries, total_cannibals), (0, 0))
    goal_state = ((0, 0), (total_missionaries, total_cannibals))

    queue = deque([initial_state])
    visited_states = set()

    while queue:
        current_state = queue.popleft()

        if current_state in visited_states:
            continue

        visited_states.add(current_state)

        if is_goal_state(current_state, total_missionaries):
            print("Solution found:")
            print_path(current_state, initial_state)
            return

        successor_states = generate_successor_states(current_state, total_missionaries, total_cannibals)

        for successor in successor_states:
            if successor not in visited_states:
                queue.append(successor)
                predecessors[successor] = current_state

    print("No solution found.")

def print_path(state, initial_state):
    path = []
    while state != initial_state:
        path.append(state)
        state = predecessors[state]

    path.append(initial_state)
    path.reverse()

    for s in path:
        print(f"Left: {s[0]}, Right: {s[1]}")

total_missionaries = 3
total_cannibals = 3

predecessors = dict()

solve_missionaries_cannibals(total_missionaries, total_cannibals)
