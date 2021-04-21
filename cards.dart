main(List<String> args) {
  var myDeck = new Deck();
  myDeck.shuffle();
  print(myDeck);
//  print(myDeck.deal(5));

  myDeck.removeCard('Diamonds', 'Ace');
  print(myDeck);
}

class Card {
  String suit;
  String rank;

  Card({required this.rank, required this.suit});

  @override
  String toString() {
    return '$rank of $suit';
  }
}

class Deck {
  late List<Card> cards = [];

  Deck() {
    var ranks = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine'
    ];

    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(suit: suit, rank: rank);
        cards.add(card);
      }
    }
  }

  @override
  String toString() {
    /*    String deckString = '';
    for (var card in cards) {
      deckString += '${card.suit} ${card.rank}\n';
    }
    return deckString;
    */

    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);

    return hand;
  }

  removeCard(String suit, String rank) {
    cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}
