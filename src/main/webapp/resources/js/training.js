const userInput = document.getElementById('userInput');
const chatArea = document.getElementById('chatArea');
const infoButton = document.getElementById("infoButton");
const infoPopup = document.getElementById("infoPopup");
const closePopup = document.getElementById("closePopup");


const trigger = [
  ['웅', '그래', '오키'],
  ['안녕', '안녕하세요', '반갑다'],
  ['뭐 해', '뭐하고 있어'],
  ['잘 지내니', '어떻게 지내니'],
  ['오늘 날씨 어때', '날씨가 어때', '날씨'],
  ['무엇을 좋아해', '좋아하는 것'],
  ['문제풀고싶어', '명령어알려줘']
];

const reply = [
  ['그래 인사해야지?', 'ㅋㅋㅋ인사부터해야지', '단답별로야 인사부터하자ㅋㅋㅋ'],
  ['안녕!', '안녕하세요!', '반가워요!'],
  ['지금은 채팅 중이에요.', '당신과 대화 중이에요.'],
  ['잘 지내고 있어요.', '너무 바쁜 건 아니에요.', '그럭저럭 괜찮아요.'],
  ['오늘은 맑은 날씨네요.', '비가 조금 오네요.', '날씨는 따뜻해요.'],
  ['나는 음악을 좋아해요.', '독서를 좋아해요.', '요리를 좋아해요.'],
  ['"업무대화 문제풀고싶어"라고 입력하시면 업무 대화 문제를 풀어볼 수 있어요.', '"일상대화 문제풀고싶어"라고 입력하시면 일상 대화 문제를 풀어볼 수 있어요.']
];

function handleKeyPress(event) {
  if (event.key === 'Enter') {
    sendMessage();
  }
}


function sendMessage() {
  const message = userInput.value.trim().toLowerCase();
  userInput.value = '';

  if (message !== '') {
    addMessage('나', message);
    processMessage(message);
  }
}

function processMessage(message) {
  let response = '뭐라는거야.';

  if (message.includes('업무대화 문제풀고싶어')) {
    window.open('company_talk.do', '_blank', 'width=600,height=500');
    response = '잘풀어봐 ㅋㅋ';
  } else if (message.includes('업무 문제풀고싶어!') || message.includes('업무문제풀고싶어') || message.includes('업무문제풀래')) {
     window.open('company_talk.do', '_blank', 'width=600,height=500');
    response = '그래! 잘풀어봐';
  } else if (message.includes('일상대화 문제풀고싶어') || message.includes('일상문제풀고싶어') || message.includes('일상대화') || message.includes('일상문제풀래')) {
     window.open('daily_talk.do', '_blank', 'width=1200,height=500');
     response = '그래! 잘풀어봐';
  } else {
    for (let i = 0; i < trigger.length; i++) {
      for (let j = 0; j < trigger[i].length; j++) {
        if (message.includes(trigger[i][j])) {
          response = getRandomResponse(reply[i]);
          break;
        }
      }
    }
  }

  setTimeout(() => {
    addMessage('인싸', response);
  }, 1000);
}

function getRandomResponse(responses) {
  const randomIndex = Math.floor(Math.random() * responses.length);
  return responses[randomIndex];
}

function addMessage(sender, message) {
  chatArea.innerHTML += `<p><strong>${sender}:</strong> ${message}</p>`;
  chatArea.scrollTop = chatArea.scrollHeight;
}

addMessage('인싸 ' , '야 나랑 대화하자!!');


infoButton.addEventListener("click", () => {
    infoPopup.style.display = "block";
});

closePopup.addEventListener("click", () => {
    infoPopup.style.display = "none";
});

window.addEventListener("click", (event) => {
    if (event.target === infoPopup) {
        infoPopup.style.display = "none";
    }
});






