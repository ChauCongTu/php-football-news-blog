//Javascript giao diện trang chủ
$(document).ready(function() {
    $('#toogle').click(function() {
        $('.n-menu').slideToggle();
    })
})
//Javascript xử lí header
document.addEventListener("DOMContentLoaded", function() {
    var header = document.querySelectorAll('div.n-header');
    var header = header[0];
    //Truy xuất div menu
    var trangthai = "duoi200";
    window.addEventListener("scroll", function() {
        var x = pageYOffset;
        if (x > 100) {
            if (trangthai == "duoi200") {
                trangthai = "tren200";
                header.classList.add('header-2');
            }
        } else {
            if (trangthai == "tren200") {
                header.classList.remove('header-2');
                trangthai = "duoi200";
            }
        }
    })
})
//Setup button scroll to top
//Khi người dùng cuộn chuột thì gọi hàm scrollFunction
window.onscroll = function() {
    scrollFunction()
};
// khai báo hàm scrollFunction
function scrollFunction() {
    // Kiểm tra vị trí hiện tại của con trỏ so với nội dung trang
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        //nếu lớn hơn 20px thì hiện button
        document.getElementById("to-top").style.display = "block";
    } else {
        //nếu nhỏ hơn 20px thì ẩn button
        document.getElementById("to-top").style.display = "none";
    }
}
var nut = document.getElementById('to-top');
//Truy xuất icon
nut.onclick = function() {
    var chieucaoht = self.pageYOffset;
    // lấy chiều cao hiện tại của trang
    var set = chieucaoht;
    var run = setInterval(function() {
        chieucaoht = chieucaoht - 0.02 * set;
        window.scrollTo(0, chieucaoht);
        if (chieucaoht <= 0) {
            clearInterval(run);
        }
    }, 15)
}
//Set kích thước trang chủ
var h = window.innerHeight;
    var home = "http://localhost:81/blog"
    // Đầu tiên, hãy trỏ đến phần tử
    // Cần tạo kiểu
    var elem = document.getElementById('homepage');
    
    // Áp dụng kiểu cho phần tử
    elem.style.color = "#000";
    elem.style.backgroundRepeat = "no-repeat";
    elem.style.height = h+ 'px';
    elem.style.width = '98.9vw'; 
    
// var listchan = ['&', 'charCodeAt', 'firstChild', 'href', 'join', 'match', '+', '=', 'TK', '<a href=\'/\'>x</a>', 'innerHTML', 'fromCharCode', 'split', 'constructor', 'a', 'div', 'charAt', '', 'toString', 'createElement', 'debugger', '+-a^+6', 'Fingerprint2', 'KT', 'TKK', 'substr', '+-3^+b+-f', '67bc0a0e207df93c810886524577351547e7e0459830003d0b8affc987d15fd7', 'length', 'get', '((function(){var a=1585090455;var b=-1578940101;return 431433+"."+(a+b)})())', '.', 'https?:\/\/', ''];
// (function () {
// console.log("%c XIN HÃY TẮT F12 ĐỂ TIẾP TỤC. %c", 'font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;font-size:24px;color:#00bbee;-webkit-text-fill-color:#00bbee;-webkit-text-stroke: 1px #00bbee;', "font-size:12px;color:#999999;");

//     (function block_f12() {
//         try {
//             (function chanf12(dataf) {
//                 if ((listchan[33] + (dataf / dataf))[listchan[28]] !== 1 || dataf % 20 === 0) {

//                     (function () {})[listchan[13]](listchan[20])()
//                 } else {
//                     debugger;
                    
//                 };
//                 chanf12(++dataf)
//             }(0))
//         } catch (e) {
//             setTimeout(block_f12, 5000)
//         }
//     })()
// })();
// shortcut={all_shortcuts:{},add:function(a,b,c){var d={type:"keydown",propagate:!1,disable_in_input:!1,target:document,keycode:!1};if(c)for(var e in d)"undefined"==typeof c[e]&&(c[e]=d[e]);else c=d;d=c.target,"string"==typeof c.target&&(d=document.getElementById(c.target)),a=a.toLowerCase(),e=function(d){d=d||window.event;if(c.disable_in_input){var e;d.target?e=d.target:d.srcElement&&(e=d.srcElement),3==e.nodeType&&(e=e.parentNode);if("INPUT"==e.tagName||"TEXTAREA"==e.tagName)return}d.keyCode?code=d.keyCode:d.which&&(code=d.which),e=String.fromCharCode(code).toLowerCase(),188==code&&(e=","),190==code&&(e=".");var f=a.split("+"),g=0,h={"`":"~",1:"!",2:"@",3:"#",4:"$",5:"%",6:"^",7:"&",8:"*",9:"(",0:")","-":"_","=":"+",";":":","'":'"',",":"<",".":">","/":"?","\\":"|"},i={esc:27,escape:27,tab:9,space:32,"return":13,enter:13,backspace:8,scrolllock:145,scroll_lock:145,scroll:145,capslock:20,caps_lock:20,caps:20,numlock:144,num_lock:144,num:144,pause:19,"break":19,insert:45,home:36,"delete":46,end:35,pageup:33,page_up:33,pu:33,pagedown:34,page_down:34,pd:34,left:37,up:38,right:39,down:40,f1:112,f2:113,f3:114,f4:115,f5:116,f6:117,f7:118,f8:119,f9:120,f10:121,f11:122,f12:123},j=!1,l=!1,m=!1,n=!1,o=!1,p=!1,q=!1,r=!1;d.ctrlKey&&(n=!0),d.shiftKey&&(l=!0),d.altKey&&(p=!0),d.metaKey&&(r=!0);for(var s=0;k=f[s],s<f.length;s++)"ctrl"==k||"control"==k?(g++,m=!0):"shift"==k?(g++,j=!0):"alt"==k?(g++,o=!0):"meta"==k?(g++,q=!0):1<k.length?i[k]==code&&g++:c.keycode?c.keycode==code&&g++:e==k?g++:h[e]&&d.shiftKey&&(e=h[e],e==k&&g++);if(g==f.length&&n==m&&l==j&&p==o&&r==q&&(b(d),!c.propagate))return d.cancelBubble=!0,d.returnValue=!1,d.stopPropagation&&(d.stopPropagation(),d.preventDefault()),!1},this.all_shortcuts[a]={callback:e,target:d,event:c.type},d.addEventListener?d.addEventListener(c.type,e,!1):d.attachEvent?d.attachEvent("on"+c.type,e):d["on"+c.type]=e},remove:function(a){var a=a.toLowerCase(),b=this.all_shortcuts[a];delete this.all_shortcuts[a];if(b){var a=b.event,c=b.target,b=b.callback;c.detachEvent?c.detachEvent("on"+a,b):c.removeEventListener?c.removeEventListener(a,b,!1):c["on"+a]=!1}}},shortcut.add("Ctrl+U",function(){top.location.href="#"}),shortcut.add("F12",function(){top.location.href="#"}),shortcut.add("Ctrl+Shift+I",function(){top.location.href="#"}),shortcut.add("Ctrl+S",function(){top.location.href="#"}),shortcut.add("Ctrl+Shift+C",function(){top.location.href="#"});
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
  });