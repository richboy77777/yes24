// jquery 형 함수 
checkNull = function (obj, value, message) {
	if(value == "" || value == null){
		alert(message);
		obj.focus();
		return false;
	} else {
		return true;
	}
}


checkOnlyNumber = function(obj, value, message) {
    var regExp = /^[0-9]+$/;
    if(regExp.test(value)) {
		return true;
	} else {
		alert(message);
        obj.focus();
		return false;
	}
}


checkId = function(obj, value, message) {
    var regExp = /^[A-Za-z0-9,_-]{2,20}$/;
    if(regExp.test(value)) {
		return true;
	} else {
		alert(message);
        obj.focus();
		return false;
	}
}


checkPassword = function(obj, value, message) {
	var regExp = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*]).{8,20}$/;
    /*var regExp = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,20}$/;*/
    if(regExp.test(value)) {
		return true;
	} else {
		alert(message);
        obj.focus();
		return false;
	}
}


checkOnlyEnglish = function(value) {
    var regExp = /^[A-Za-z]+$/ 
    if(regExp.test(value)) return true;
    else return false;
}


checkEmail = function(obj, value, message) {
    var regExp = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if(regExp.test(value)) {
    	return true;
    } else {
		alert(message);
		obj.focus();
		return false;
	}
}


checkMobile = function(obj, value, message) {
    var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
    if(regExp.test(value)) {
    	return true;
    } else {
		alert(message);
		obj.focus();
		return false;
	}
}

/*checkUploadedTotalFileNumber = function(fileCount, seq) {
	if(fileCount > MAX_TOTAL_FILE_NUMBER) {
		alert("전체 파일 갯수는 5개 까지 허용됩니다.");
		$("#file"+seq).val("");
		return false;
	}
}

checkUploadedImageExt = function(obj, seq) {
	var ext = obj.split('.').pop().toLowerCase();
	if(extArrayImage.indexOf(ext) == -1) {
		alert("허용된 확장자가 아닙니다.");
		$("#file"+seq).val("");
		return false;
		
	}
}

checkUploadedAllExt = function(obj, seq) {
	var ext = obj.split('.').pop().toLowerCase();
	if(extArrayAll.indexOf(ext) == -1) {
		alert("허용된 확장자가 아닙니다.");
		$("#file"+seq).val("");
		return false;
	}
}

checkUploadedEachFileSize = function(obj, seq) {
	if(obj.size > MAX_EACH_FILE_SIZE) {
		alert("각 첨부 파일 사이즈를 1MB 이내로 등록 가능합니다.");
		$("#file"+seq).val("");
		return false;
	}
}

checkUploadedTotalFileSize = function(totalSize, seq) {
	if(totalSize > MAX_TOTAL_FILE_SIZE) {
		alert("전체 용량은 10MB를 넘을 수 없습니다.");
		$("#file"+seq).val("");
		return false;
	}
}*/

checkUploadedTotalFileNumber = function(fileCount, seq) {
	if(fileCount > 5) {
		alert("전체 파일 갯수는 5개 까지 허용됩니다.");
		$("#file"+seq).val("");
		return false;
	}
}

checkUploadedImageExt = function(obj, seq) {
	var ext = obj.split('.').pop().toLowerCase();
	if(extArrayImage.indexOf(ext) == -1){
		alert("허용된 확장자가 아닙니다.");
		$("#file" + seq).val("");
		return false;
	}
}

checkUploadedAllExt = function(obj, seq) {
	var ext = obj.split('.').pop().toLowerCase();
	if(extArrayAll.indexOf(ext) == -1) {
		alert("허용된 확장자가 아닙니다.");
		$("#file" + seq).val("");
		return false;
	}
}

checkUploadedEachFileSize = function(obj, seq) {
	if(obj.size > 1 * 1024 * 1024) {
		alert("각 첨부 파일 사이즈는 1MB 이하로 등록 가능합니다.");
		$("#file" + seq).val("");
		return false;
	}
}

checkUploadedTotalFileSize = function(totalSize, seq) {
	if(totalSize > 10 * 1024 * 1024) {
		alert("전체 용량은 10MB를 넘을 수 없습니다.");
		$("#file" + seq).val("");
		return false;
	}
}

var extArrayImage = new Array();
extArrayImage = ["jpg", "gif", "png", "jpeg", "bmp", "tif",];

var extArrayAll = new Array();
extArrayAll = ["txt", "pdf", "hwp", "doc", "docx", "xls", "xlsx", "ppt", "pptx"];

/*
//javascript
function checkNull (obj, value, message) {
	if (value == "" || value == null) {
		alert("validation.js: " + message);
		obj.focus();
		return false;
		//return false는 중지하는 구문이다
	}

}
*/