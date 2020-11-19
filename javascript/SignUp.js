function checkName(){
    var ho = document.getElementById('ho');
    var ten = document.getElementById('ten');
    if(ho.value.length === 0 || ten.value.length === 0 ){
        alert("Không được để trống họ và tên");
        tk.focus();
        return false;
    }
    for(var i=0; i<ho.value.length;i++){
        if(!isNaN(ho.value.charAt(i))){
            alert("Tên không thể có số");
            ho.focus();
            return false;
        }
    }
    for(var i=0; i<ten.value.length;i++){
        if(!isNaN(ten.value.charAt(i))){
            alert("Tên không thể có số");
            ten.focus();
            return false;
        }
    }
    return true;
}

function isNull(){
    var tk = document.getElementById('tk');
    var pass = document.getElementById('pass');
    if(tk.value.length === 0 ){
        alert("Không được để trống tài khoản đăng nhập");
        tk.focus();
        return false;
    }
    if(pass.value.length === 0 ){
        alert("Xin hãy nhập mật khẩu")
        pass.focus();
        return false;
    }
    return true;
}

document.getElementById('submit').addEventListener('click',function(event){
    if(checkName()===false) event.preventDefault();
    if(isNull()===false)    event.preventDefault();
})