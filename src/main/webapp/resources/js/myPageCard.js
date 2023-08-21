// 카드 등록
// 카드번호
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

// 유효기간
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

// 카드사명
  function updateCardName() {
    const cardName = $("#card-name").val();
    $(".card-name div").text(cardName);
  }

// cvc
  function updateCardCvc() {
    const cvc = $("#card-cvc").val();
    const hiddenCvc = cvc.replace(/\d/g, '●');
    $(".cvc1 div").text(hiddenCvc);
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

