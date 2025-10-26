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
	EATING
}

enum Facestate {
	RIGHT,
	LEFT,
	UP,
	DOWN
}

enum CardType {
	VALUE,
	ACTION
}	