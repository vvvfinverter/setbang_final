const userInput = document.getElementById('userInput');
const chatArea = document.getElementById('chatArea');
const infoButton = document.getElementById("infoButton");
const infoPopup = document.getElementById("infoPopup");
const closePopup = document.getElementById("closePopup");


const trigger = [
  ['SETbang이 뭐에요?', 'setbang이 뭐에요?', '어떤 곳인가요?'],
  ['안녕', '안녕하세요', '반갑다'],
  ['어떤 서비스가 있나요?', '서비스는 어떤게 있나요?', '서비스가 궁금해요'],
  ['공유공간에는 어떤 것들이 있나요?', '무슨 공간이 있어요?', '공유공간에는 어떤 것들이 있나요', '무슨 공간이 있나요', '공용공간'],
  ['탭룸은 머에요', '탭룸은 뭐에요?', '탭룸'],
  ['멀티미디어룸에는 뭐가 있어요?', '멀티미디어룸', '멀티미디어룸은 머에요?'],
  ['물품신청은 어떤건가요?', '물품신청', '어떤 물품 신청', '어떤 물품을 신청을 할 수 있나요?'],
  ['업무지원서비스랑 협력업체서비스를 이용하고 싶어요', '업무지원서비스는 어떻게 쓸 수 있어요?', '업무지원서비스 이용방법', '협력업체서비스는 어떻게 쓸 수 있어요?', '협력업체서비스 이용방법'],
  ['서비스 플랜 신청은 어떻게 할 수 있나요?', '서비스 플랜', '서비스플랜', '서비스플랜 신청은 어떻게 할 수 있나요?', '서비스 플랜 신청', '서비스플랜 신청'],
  ['서비스 플랜 가격은 얼마인가요?', '서비스 플랜 가격', '서비스플랜 가격', '서비스플랜 가격은 얼마인가요?', '가격'],
  ['업무지원 서비스는', '업무지원서비스', '업무지원 서비스는 뭐에요?', '업무지원 서비스'],
  ['협력업체 서비스는', '협력업체서비스', '협력업체 서비스는 뭐에요?', '협력업체 서비스'],    
];

const reply = [
  ['(주)SETbang은 1인기업&스타트업 기업을 위한 공유오피스입니다.'],
  ['안녕하세요! (주)SETbang입니다. 반갑습니다.'],
  ['(주)SETbang에서는   1. 공유공간을 이용할 수 있어요.   2. 세무기장, 법인신청, 특허신청 서비스를 이용할 수 있어요.   3. 다양한 협력업체를 고객님과 연결해드려요.'],
  ['회의실, 멀티미디어룸, 탭룸 등 다양한 공간을 구비하고 있어요'],
  ['탭룸에는 커피와 다과가 구비되어 있는 곳이에요. 탭룸은 판교점에서만 만나보실 수 있어요.'],
  ['멀티미디어룸은 사업 브리핑을 할 수 있는 공간이에요. 가끔은 영화도 볼 수 있답니다.'],
  ['탕비물품, 비품을 신청할 수 있어요. SETbang에 모든 분들께 탕비물품과 비품을 지원해드리고 있어요.'],
  ['해당 서비스는 서비스플랜 등급을 업그레이드하시면 이용이 가능합니다. 서비스 플랜은 "Standard"와 "Premium"등급으로 운영되고 있습니다.'],
  ['서비스 플랜은 "마이페이지"에서 신청이 가능합니다. 월/년별 합리적인 금액으로 이용해보세요!'],
  ['서비스 플랜은   월간 Standard : 150,000원/월 , 연간 Standard : 1,500,000원/년,월간 Premium : 300,000원/월, 연간 Premium : 3,000,000원/년 입니다. (VAT 포함)'],
  ['업무지원 서비스는 입주하신 고객님들이 경영에 필요한 세무기장, 법인등록, 특허신청 업무를 지원해드리는 서비스입니다.'],
  ['협력업체 서비스는 사업확장을 위해 필요한 다양한 분야의 업체를 연계해드리는 서비스입니다. SETbang과 제휴하고 있는 업체를 통해 합리적인 금액으로 사업을 확장해보세요!'],
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
  let response = '다시 한번 말씀해주시겠어요?';

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
    addMessage('(주)SETbang', response);
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

addMessage('(주)SETbang', '안녕하세요! (주)SETbang입니다. 무엇을 도와드릴까요?');


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






