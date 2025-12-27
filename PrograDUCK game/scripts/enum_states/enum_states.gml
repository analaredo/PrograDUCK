enum CardState {
    STATIC,
    DRAGGING,
    RETURNING,
	MOVING_TO_SLOT
}

enum SlotState {
	EMPTY,
	FULL
}

enum CursorState {
    IDLE,
    LOADING,
    CLICKING
}

enum DuckState {
	IDLE,
	WALK,
	CONFUSED,
	HAPPY,
	EATING,
	FINISHED
}

enum FaceState {
	RIGHT,
	LEFT,
	UP,
	DOWN
}

enum ActionState {
    WALK,
    FILL_BOWL,
    EAT
}

enum DuckTopics {
	ERROR_BOWLFULL,
	SUCESS_EATING,
	INTRO_FASE1,
	ERROR_NOFOOD
}

