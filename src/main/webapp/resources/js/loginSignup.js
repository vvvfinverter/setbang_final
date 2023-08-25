//모든 공백 체크 정규식
var empJ = /\s/g;
//아이디 정규식
var idJ = /^[a-z0-9][a-z0-9]{3,12}$/;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;
// 이름 정규식
var nameJ = /^[가-힣]{2,6}|[a-zA-Z]{4,12}\s[a-zA-Z]{4,12}$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 연락처 정규식
var phoneJ = /^01([0|1|6|7|8|9]?)-([0-9]{3,4})-([0-9]{4})$/;

$(document).ready(function() {
    $("#mem_id").blur(function() {
        var idValue = $('#mem_id').val();
        var idCheckDiv = $('#id_check');

        if (idValue === '') {
            idCheckDiv.text('아이디를 입력해주세요.').css('color', 'crimson');
        } else if (!idJ.test(idValue)) {
            idCheckDiv.text('4 ~ 12자의 영문 소문자, 숫자만 사용 가능합니다.').css('color', 'crimson');
        } else {
            $.ajax({
                async: true,
                type: 'POST',
                data: { id: idValue },
                url: 'idCheck.do',
                dataType: 'text', // 데이터 타입을 'text'로 설정
                success: function(data) {
                    if (data === 'false') {
                        idCheckDiv.text('이미 사용중인 아이디입니다.').css('color', 'crimson');
                        $("#usercheck").attr("disabled", true);
                    } 
                    else if (data === 'true') {
                        idCheckDiv.text('').css('color', 'olive');
                        $("#usercheck").attr("disabled", false);
                        }
                        else {
                            idCheckDiv.text("4 ~ 12자의 영문 소문자, 숫자만 사용 가능합니다.").css('color', 'crimson');
                            $("#usercheck").attr("disabled", true);
                        }
                    }
            });
        }
    });

	    	$('#usercheck').on('submit', function() {
	        	var inval_Arr = new Array(8).fill(false);
	        	// 아이디 정규식
	        	if (idJ.test($('#mem_id').val())) {
	            	inval_Arr[0] = true;
	      	  	} else {
	   	         inval_Arr[0] = false;
	   	         alert('아이디를 다시 확인해주세요.');
	       	     return false;
	        	}
		         
		         // 비밀번호가 같은 경우 && 비밀번호 정규식
		         if (($('#mem_pw').val() == ($('#checkPw').val()))
		               && pwJ.test($('#mem_pw').val())) {
		            inval_Arr[1] = true;
		         } else {
		            inval_Arr[1] = false;
		            alert('비밀번호를 다시 확인해주세요.');
		            return false;
		         }
		         // 이름 정규식
		         if (nameJ.test($('#mem_name').val())) {
		            inval_Arr[2] = true;   
		         } else {
		            inval_Arr[2] = false;
		            alert('이름을 다시 확인해주세요.');
		            return false;
		         }
		         // 이메일 정규식
		         if (mailJ.test($('#mem_email').val())){
		            console.log(phoneJ.test($('#mem_email').val()));
		            inval_Arr[4] = true;
		         } else {
		            inval_Arr[4] = false;
		            alert('이메일을 다시 확인해주세요.');
		            return false;
		         }
		         
		         // 연락처 정규식
		         if (phoneJ.test($('#mem_tel').val())) {
		            console.log(phoneJ.test($('#mem_tel').val()));
		            inval_Arr[5] = true;
		         } else {
		            inval_Arr[5] = false;
		            alert('연락처를 다시 확인해주세요.');
		            return false;
		         }
		       });
	    	
	    	   $('#mem_id').blur(function() {
	    		      if (idJ.test($('#mem_id').val())) {
	    		         console.log('true');
	    		         $('#id_check').text('');
	    		      } else {
	    		         console.log('false');
	    		         $('#id_check').text('4 ~ 12자의 영문 소문자, 숫자만 사용 가능합니다.');
	    		         $('#id_check').css('color', 'crimson');
	    		      }
	    		   });
	    		   $('#mem_pw').blur(function() {
	    		      if (pwJ.test($('#mem_pw').val())) {
	    		         console.log('true');
	    		         $('#pw_check').text('');
	    		      } else {
	    		         console.log('false');
	    		         $('#pw_check').text('4 ~ 12자의 영문 대/소문자, 숫자만 사용 가능합니다.');
	    		         $('#pw_check').css('color', 'crimson');
	    		      }
	    		   });
		 
		   //1~2 패스워드 일치 확인
		   $('#checkPw').blur(function() {
		      if ($('#mem_pw').val() != $(this).val()) {
		         $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
		         $('#pw2_check').css('color', 'crimson');
		      } else {
		         $('#pw2_check').text('');
		      }
		   });
		 
		   //이름에 특수문자 들어가지 않도록 설정
		   $("#mem_name").blur(function() {
		      if (nameJ.test($(this).val())) {
		         console.log(nameJ.test($(this).val()));
		         $("#name_check").text('');
		      } else {
		         $('#name_check').text('한글 2 ~ 6자 이내로 입력해주세요. (특수기호, 공백 사용 불가)');
		         $('#name_check').css('color', 'crimson');
		      }
		   });
		   
		   $("#mem_email").blur(function() {
		      if (mailJ.test($(this).val())) {
		         $("#email_check").text('');
		      } else {
		         $('#email_check').text('이메일 양식을 확인해주세요.');
		         $('#email_check').css('color', 'crimson');
		      }
		   });
		   
		   // 연락처
		   $('#mem_tel').blur(function(){
		      if(phoneJ.test($(this).val())){
		        console.log(nameJ.test($(this).val()));
		        $("#tel_check").text('');
		      } else {
		        $('#tel_check').text('연락처를 확인해주세요.');
		        $('#tel_check').css('color', 'crimson');
		      }
		   });
		});