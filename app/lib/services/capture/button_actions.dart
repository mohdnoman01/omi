enum ButtonAction {
  endConversation(0),
  muteUnmute(1),
  starConversation(2),
  askQuestion(3);

  const ButtonAction(this.id);

  final int id;

  static ButtonAction fromId(int id) {
    return ButtonAction.values.firstWhere(
      (action) => action.id == id,
      orElse: () => ButtonAction.askQuestion,
    );
  }
}
