from EFA_v2 import *
def r2test():
    efa = EFA([])
    efa.code_level = "machine"
    state = State()
    efa.add_initId(state.state_id)
    efa.add_state(state)
    event_map = {
        "launch_events": 0,
    }
    tran0 = state.writeTransition("eventCarry", state, state, event_map['launch_events'])
    tran0.writeAction("movir X26 0")
    tran0.writeAction("movlr 0(X26) X27 1 8")
    tran0.writeAction("movlr 0(X26) X28 1 8")
    tran0.writeAction("yieldt")
    return efa
