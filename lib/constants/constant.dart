enum Actions {
  like,
  favori,
}

String getType(Actions action) {
  switch (action) {
    case Actions.like:
      return Actions.like.name;
    case Actions.favori:
      return Actions.like.name;
    default:
      return 'invalide';
  }
}
