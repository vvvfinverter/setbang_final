$(function() {
  function updateCardNumber() {
    let cardNumber = '';
    $(".input-cart-number").each(function() {
      const value = $(this).val().replace(/\D/g, '');
      cardNumber += value;
    });

    let formattedCardNumber = '';
    for (let i = 0; i < cardNumber.length; i++) {
      formattedCardNumber += cardNumber[i];
      if ((i + 1) % 4 === 0 && i !== cardNumber.length - 1) {
        formattedCardNumber += '-';
      }
    }

    $(".number").text(formattedCardNumber);
  }

  function updateCardExpirationDate() {
    const month = $("#card-expiration-month").val();
    const year = $("#card-expiration-year").val();
    let cardExpirationDate = '';
    if (month) {
      cardExpirationDate += month;
    }
    if (year) {
      cardExpirationDate += '/' + year.slice(-2);
    }
    $(".card-expiration-date div").text(cardExpirationDate);
  }

  function updateCardName() {
    const cardName = $("#card-name").val();
    $(".card-name div").text(cardName);
  }

  function updateCardCvc() {
    const cvc = $("#card-cvc").val();
    $(".cvc div").text(cvc);
  }

  $(".input-cart-number").on("input", updateCardNumber);
  $("#card-expiration-month, #card-expiration-year").on("change", updateCardExpirationDate);
  $("#card-name").on("change", updateCardName);
  $("#card-cvc").on("input", updateCardCvc);

  updateCardNumber();
  updateCardExpirationDate();
  updateCardName();
  updateCardCvc();
});
