
var amc = {};

amc.rpcData = flybird.rpcData;
amc.isIOS = (document.platform === 'iOS');
amc.isAndroid = (document.platform === 'android');

amc.isPlus = false;
if(amc.isIOS){
     amc.isPlus = document.isIphonePlus();
}
amc.path =  amc.isAndroid ? 'com.alipay.android.app/' :'AlipaySDK.bundle/';

amc.VISIBLE = 'flex';

amc.fn = {};
amc.fn.getById = function(id) {
    return document.getElementById(id);
};

amc.fn.create = function(tagName){
    return document.createElement(tagName);
};

amc.res = {};


amc.res.arrowLeft = amc.path + 'alipay_msp_arrow_left';
amc.res.close = amc.path + 'alipay_msp_close';
amc.res.arrowRight = amc.path + 'alipay_msp_arrow_right';

amc.res.loading = amc.path + 'alipay_msp_loading.gif';
amc.res.success = amc.path + 'alipay_msp_success.gif';

amc.res.help = amc.path + 'alipay_msp_help';

amc.specs = {};
amc.specs.navHeight =  amc.isAndroid ? 48 : 64;

amc.specs.marqueeHeight = 36;

amc.specs.bodyHeight = window.innerHeight - amc.specs.navHeight;
amc.specs.iBodyMinH = amc.isPlus ? 518 : 400;
amc.specs.iBodyHeight = (0.66 * window.innerHeight > amc.specs.iBodyMinH) ? Math.round(0.66 * window.innerHeight) : amc.specs.iBodyMinH;
amc.specs.iNavHeight = amc.isPlus ? 60 : 46;

amc.fn.exit = function() {
    document.submit({'action':{'name':'loc:exit'}});
};
amc.fn.back = function () {
    document.submit({'action':{'name':'loc:back'}});
};

amc.fn.getMarquee = function(txt) {
    var marquee = create('marquee');
    marquee.className = 'amc-marquee';
    marquee.style.paddingLeft = '3px';
    marquee.innerText = txt || '';
    return marquee;
};

amc.fn.showProtocolList = function(pList) {
    if (pList.length == 1){
        document.submit({"action":{"name":"loc:openweb('"+pList[0]["url"]+"','"+pList[0]["text"]+"')"}});
        return;
    }

    var protocolArray = new Array();
    for (var i = 0; i < pList.length; i++) {
        protocolArray.push(pList[i]["text"]);
    }
    document.actionSheet({
            'text' : '{{protocol}}',
            'btns': protocolArray,
            'cancelBtn': '{{cancel}}'
            }, function(data) {
            document.submit({"action":{"name":"loc:openweb('"+pList[data.index]["url"]+"','"+pList[data.index]["text"]+"')"}});
        }
    );
};

amc.fn.isString = function(str){
    return ((str instanceof String) || typeof str == 'string');
};

amc.fn.show = function(tag)
{
    if(tag){
        tag = amc.fn.isString(tag) ? document.getElementById(tag) : tag;
        
        if(tag){
            tag.style.display = amc.VISIBLE;
        }
    }
};

amc.fn.hide = function(tag)
{
    if(tag){
        tag = amc.fn.isString(tag) ? document.getElementById(tag) : tag;
        
        if(tag){
            tag.style.display = 'none';
        }
    }
};
amc.fn.iNav = function(lImg, mTxt, rTxt, rImg, onLeft, onRight, mImg) {
    var create = amc.fn.create;
    var _iNav = create('div');
    _iNav.className = 'amc-i-nav-box';
    
    var _lBox = create('div');
    _lBox.className = 'amc-i-nav-l-box';
    _lBox.onclick = onLeft;
    _lBox.id = 'iNavBoxL';
    
    if(lImg){
        var _lImg = create('img');
        _lImg.className = 'amc-i-nav-l-img';
        _lImg.src = lImg;
        _lImg.id = 'iNavImgL';
        _lBox.appendChild(_lImg);
        amc.pressableElement(_lBox,_lImg);
        
        if(lImg === amc.res.arrowLeft){
            _lImg.alt = '{{return}}';
        }else if(lImg === amc.res.close){
            _lImg.alt = '{{exit}}';
        }
    }
    
    var _mBox = create('div');
    _mBox.className = 'amc-i-nav-m-box';
    if(mImg){
        var _mImg = create('img');
        _mImg.id = 'iNavImgM';
        _mImg.src = mImg;
        _mImg.className = 'amc-i-nav-m-img';
        _mBox.appendChild(_mImg);
    }
    if(mTxt){
        var _mTxt = create('label');
        _mTxt.className = 'amc-i-nav-m-text';
        _mTxt.innerText = mTxt;
        _mTxt.id = 'iNavTxtM';
        _mBox.appendChild(_mTxt);
    }
    var _rBox = create('div');
    _rBox.className = 'amc-i-nav-r-box';
    _rBox.id = 'iNavBoxR';
    _rBox.onclick = onRight;
    
    if(rImg) {
        var _rImg = create('img');
        _rImg.className = 'amc-i-nav-r-img';
        _rImg.id = 'iNavImgR';
        _rImg.src = rImg;
        _rBox.appendChild(_rImg);
        amc.pressableElement(_rBox,_rImg);
    }else if(rTxt) {
        var _rTxt = create('label');
        _rTxt.className = 'amc-i-nav-r-text';
        _rTxt.id = 'iNavTxtR';
        _rTxt.innerText = rTxt;
        _rBox.appendChild(_rTxt);
        amc.pressableElement(_rBox,_rTxt);
    }
    
    _iNav.appendChild(_lBox);
    _iNav.appendChild(_mBox);
    _iNav.appendChild(_rBox);
    
    return _iNav;
};

amc.pressableElement = function(elDiv,el) {
    if(elDiv && el){
        elDiv.onmousedown = function(){
            el.style.opacity = '0.5';
        };
        elDiv.onmouseup = function() {
            el.style.opacity = '1';
        };
    }
};