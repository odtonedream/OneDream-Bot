CNWTEPRGsb�
s ��Ϫ��ͻ��s s s s s          � <                                                            �                                  sN��s �ú���λ��s s s s s         ����                                          
   ˸Jsonģ��_   ˸Jsonģ�����ڽ�������Զ�Json�Ĳ��Ѻ�֧��
@��ע:
���ߵ�΢�Ź��ںţ�
codervip ���� ����ԱVIP   �����ϵ�ħ�֣��׺�                        8   ��ͼ������ҵ�����У�������ϵ����
��ϵ��ʽQQ��2052404477                                               s42C4s �����Э��s s s s s          k�Co�$                                                 �$       {$     r$  if(typeof JSON!=="object"){JSON={}}(function(){"use strict";var rx_one=/^[\],:{}\s]*$/;var rx_two=/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g;var rx_three=/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g;var rx_four=/(?:^|:|,)(?:\s*\[)+/g;var rx_escapable=/[\\"\u0000-\u001f\u007f-\u009f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g;var rx_dangerous=/[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g;function f(n){return n<10?"0"+n:n}function this_value(){return this.valueOf()}if(typeof Date.prototype.toJSON!=="function"){Date.prototype.toJSON=function(){return isFinite(this.valueOf())?this.getUTCFullYear()+"-"+f(this.getUTCMonth()+1)+"-"+f(this.getUTCDate())+"T"+f(this.getUTCHours())+":"+f(this.getUTCMinutes())+":"+f(this.getUTCSeconds())+"Z":null};Boolean.prototype.toJSON=this_value;Number.prototype.toJSON=this_value;String.prototype.toJSON=this_value}var gap;var indent;var meta;var rep;function quote(string){rx_escapable.lastIndex=0;return rx_escapable.test(string)?"\""+string.replace(rx_escapable,function(a){var c=meta[a];return typeof c==="string"?c:"\\u"+("0000"+a.charCodeAt(0).toString(16)).slice(-4)})+"\"":"\""+string+"\""}function str(key,holder){var i;var k;var v;var length;var mind=gap;var partial;var value=holder[key];if(value&&typeof value==="object"&&typeof value.toJSON==="function"){value=value.toJSON(key)}if(typeof rep==="function"){value=rep.call(holder,key,value)}switch(typeof value){case"string":return quote(value);case"number":return isFinite(value)?String(value):"null";case"boolean":case"null":return String(value);case"object":if(!value){return"null"}gap+=indent;partial=[];if(Object.prototype.toString.apply(value)==="[object Array]"){length=value.length;for(i=0;i<length;i+=1){partial[i]=str(i,value)||"null"}v=partial.length===0?"[]":gap?"[\n"+gap+partial.join(",\n"+gap)+"\n"+mind+"]":"["+partial.join(",")+"]";gap=mind;return v}if(rep&&typeof rep==="object"){length=rep.length;for(i=0;i<length;i+=1){if(typeof rep[i]==="string"){k=rep[i];v=str(k,value);if(v){partial.push(quote(k)+(gap?": ":":")+v)}}}}else{for(k in value){if(Object.prototype.hasOwnProperty.call(value,k)){v=str(k,value);if(v){partial.push(quote(k)+(gap?": ":":")+v)}}}}v=partial.length===0?"{}":gap?"{\n"+gap+partial.join(",\n"+gap)+"\n"+mind+"}":"{"+partial.join(",")+"}";gap=mind;return v}}if(typeof JSON.stringify!=="function"){meta={"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r","\"":"\\\"","\\":"\\\\"};JSON.stringify=function(value,replacer,space){var i;gap="";indent="";if(typeof space==="number"){for(i=0;i<space;i+=1){indent+=" "}}else if(typeof space==="string"){indent=space}rep=replacer;if(replacer&&typeof replacer!=="function"&&(typeof replacer!=="object"||typeof replacer.length!=="number")){throw new Error("JSON.stringify");}return str("",{"":value})}}if(typeof JSON.parse!=="function"){JSON.parse=function(text,reviver){var j;function walk(holder,key){var k;var v;var value=holder[key];if(value&&typeof value==="object"){for(k in value){if(Object.prototype.hasOwnProperty.call(value,k)){v=walk(value,k);if(v!==undefined){value[k]=v}else{delete value[k]}}}}return reviver.call(holder,key,value)}text=String(text);rx_dangerous.lastIndex=0;if(rx_dangerous.test(text)){text=text.replace(rx_dangerous,function(a){return"\\u"+("0000"+a.charCodeAt(0).toString(16)).slice(-4)})}if(rx_one.test(text.replace(rx_two,"@").replace(rx_three,"]").replace(rx_four,""))){j=eval("("+text+")");return(typeof reviver==="function")?walk({"":j},""):j}throw new SyntaxError("JSON.parse");}}}());
//**********************���ĺ�����ʼ**********************
var AllStr="";
var JtempJson = new Object();
var jsonObj = new Object();
function checkRate(input)
{
    var re = /^[0-9]+.?[0-9]*$/;
    if (!re.test(input))
    {
        return false;
    }else{
		return true;
	}
};
function setF(str){
	if(typeof str =="undefined" || str=="")return "error";
	try{
		AllStr=eval("("+str+")");//ת��Ϊjson����
		return "success";
	}catch(e){
		return "error:false";
	}
};
function jsonLen(param,yourself){
	var Strx = "";
	if(yourself=="1"){
		Strx=jsonObj;
	}else{
		Strx=AllStr;
	}
	if(typeof Strx =="undefined" || Strx=="")return "0";
	if(typeof param =="undefined" || param==""){
		var count=0; 
		for(var key in Strx){ 
			count++; 
		}
		return String(count);
	};
	var keys = param.split('.');
	var len = keys.length;
	var xObj = Strx;
	for(var i=0; i<len; i++) {
		xObj = xObj[keys[i]];
	}
	if(typeof xObj=="object"){
        var count=0; 
		for(var key in xObj){ 
			count++; 
		}
		return String(count);
    }
	return "0";
}

function pjson(param,yourself){
	var Strx = "";
	if(yourself=="1"){
		Strx=jsonObj;
	}else{
		Strx=AllStr;
	}
	if(typeof Strx =="undefined" || Strx=="")return "error:false";
	if(typeof param =="undefined" || param=="")return "error:false";
	var temp = "Strx";
	var keys = param.split('.');
	var len = keys.length;
	for(var i=0; i<len; i++) {
		temp+="['"+keys[i]+"']";
	}
	try{
		temp = eval(temp);
		if(typeof temp=="object")
			return "[object object]";
		return temp;
	}catch(e){
		return e;
		return "error:false";
	}
}
function getAllkey(param,yourself){
	var Strx = "";
	if(yourself=="1"){
		Strx=jsonObj;
	}else{
		Strx=AllStr;
	}
	if(typeof Strx =="undefined" || Strx=="")return "error:false";
	if(typeof param =="undefined" || param==""){
		var returnstr = "";
		for(var key in Strx){
			returnstr+=key+";";
		}
		return returnstr;
    }
	var temp = "Strx";
	var keys = param.split('.');
	var len = keys.length;
	for(var i=0; i<len; i++) {
		temp+="['"+keys[i]+"']";
	}
	try{
		temp = eval(temp);
		if(typeof temp=="object"){
			var returnstr = "";
			for(var key in temp){
				returnstr+=key+";";
			}
			return returnstr;
		}else{
			return "error:false";
		}
	}catch(e){
		return "error:false";
	}
}
function setJson(param,val){
	if(typeof param =="undefined" || param=="")return "error:false";
	var strs= new Array(); //����һ���� 
	strs=param.split("."); //�ַ��ָ�
	var len=strs.length;
	if(len<1)return "error:false";
	var Jstr=jsonObj;
	for(var i =0;i<len;i++){
		var key = strs[i];
		Jstr[key] = i===len-1 ? val : (Jstr[key] || {});
		Jstr = Jstr[key];
	}
    return JSON.stringify(jsonObj);
	//return "success";
}

function setJsonInArray(param,val,isObject){
	if(typeof param =="undefined" || param=="")return "error:false";
	var strs= new Array(); //����һ���� 
	strs=param.split("."); //�ַ��ָ�
	var len=strs.length;
	if(len<1)return "error:false";
	var Jstr=jsonObj;
	var index=0;
	for(var i =0;i<len;i++){
		var key = strs[i];
		if(i===len-1){
			if(!(Jstr[key] instanceof Array)){
				Jstr[key]=new Array();
			}
			if(isObject=="1"){
				try{
					index=Jstr[key].push(eval("("+val+")"));
				}catch(e){
					return "error:false";
				}
			}else{
				index=Jstr[key].push(val);
			}
		}else{
			Jstr[key] =(Jstr[key] || {});
		}
		Jstr = Jstr[key];
	}
	var rstrs = JSON.stringify(jsonObj);
	return rstrs+"[�ָ�]"+index;
}

function delJsonInArray(param,ids){
	if(typeof param =="undefined" || param=="")return "error:false";
	var strs= new Array(); //����һ���� 
	strs=param.split("."); //�ַ��ָ�
	var len=strs.length;
	if(len<1)return "error:false";
	var Jstr=jsonObj;
	for(var i =0;i<len;i++){
		var key = strs[i];
		if(i===len-1){
			if(!(Jstr[key] instanceof Array)){
				return "error:false";
			}
			Jstr[key].splice(ids,1);
		}else{
			Jstr[key] =(Jstr[key] || {});
		}
		Jstr = Jstr[key];
	}
	var rstrs = JSON.stringify(jsonObj);
	return rstrs;
}

function updJsonInArray(param,ids,val,isObject){
	if(typeof param =="undefined" || param=="")return "error:false";
	var strs= new Array(); //����һ���� 
	strs=param.split("."); //�ַ��ָ�
	var len=strs.length;
	if(len<1)return "error:false";
	var Jstr=jsonObj;
	for(var i =0;i<len;i++){
		var key = strs[i];
		if(i===len-1){
			if(!(Jstr[key] instanceof Array)){
				return "error:false";
			}
			
			if(isObject=="1"){
				try{
					Jstr[key].splice(ids,1,eval("("+val+")"));
				}catch(e){
					return "error:false";
				}
			}else{
				Jstr[key].splice(ids,1,val);
			}
			
		}else{
			Jstr[key] =(Jstr[key] || {});
		}
		Jstr = Jstr[key];
	}
	var rstrs = JSON.stringify(jsonObj);
	return rstrs;
}

function setTempJson(param,val,isClear){
	if(typeof param =="undefined" || param=="")return "error:false";
	var strs= new Array(); //����һ���� 
	strs=param.split("."); //�ַ��ָ�
	var len=strs.length;
	if(len<1)return "error:false";
	var Jstr=JtempJson;
	for(var i =0;i<len;i++){
		var key = strs[i];
		Jstr[key] = i===len-1 ? val : (Jstr[key] || {});
		Jstr = Jstr[key];
	}
	var rstrs = JSON.stringify(JtempJson);
	if(isClear=="1"){
		JtempJson=new Object();
	}
    return rstrs;
}

function getJson(){
        try{
          var rstr = JSON.stringify(jsonObj)
          return rstr;
        }catch(e){
          return e;
        }
}

function clearAll(){
	var AllStr="";
	var JtempJson = new Object();
	var jsonObj = new Object();
}
function delHtmlTag(str){
  return str.replace(/<[^>]+>/g,"");//ȥ�����е�html���
}     s�l�s ������s s s s s s          9-�d�0                                           ?�   x     '      1              9   krnlnd09f2340818511d396f6aaf844c7e32553ϵͳ����֧�ֿ�8   specA512548E76954B6E92C21055517615B031���⹦��֧�ֿ�A   commobj{A068799B-7551-46b9-8CA8-EEF8357AFEA4}20ͨ�ö���֧�ֿ�                  	 I`� �               _-@M<����1>                 ����   ˸_JSON    D   � � � � � � � � � � l"DW� �        �        0     Json_Script  �     � � � � � � � � � � � � "DWl �@�`��������� � �@�`��������� � ���؈�׈  	     �       _-@S<_�����ӳ���>                           �          �  j              6   ************************ j              6   ** ��ӭʹ��˸Jsonģ�� ** j              6   ** ���ߣ������ϵ�ħ�� ** j              6   **  ΢�źţ�codervip  ** j              6   **   ��ҵ�������QQ   ** j              6   **   QQ:2052404477    ** j              6   **   ģ��汾��2.0    ** j              6   ************************ j ��      #                                      6j                                           6          	               _-@S<_��ʱ�ӳ���>                                       j    ��          6 I0          _��ʼ��          %    	     �                            (   3   :   �   �   5  �  �  �   �   =     �    j 
��          6        j4                   68%7!G              8� 7   MSScriptControl.ScriptControl mn               68%7jR              8� 7	   Language    JavaScript Soj    ��          6j4               68%7!G              8� 7   ScriptControl l               68%7jR              8� 7	   Language    JScript Rsj    ��          6Ttj    ��          6l               68%7jS              8� 7   AddCode  Rsj    ��          6j               6 I0          _����                               *              =   jT              8� 7   run    del j 
��          6 I8     �   ����h   ����json�ı����ж���������ɹ������棬ʧ�ܷ��ؼ٣������ɹ�֮�󣬶������ֱ�ӵ������Ա�������ж���Ĳ���   *   � %� %       	     �     	   1          -   � %    !     �   ���� ���ϸ�ʽ��json�ַ���                $   ]   d   �   �   �         s  l               6!&               68� %7    j               6  Rsj4               68� %7!T              8� 7   run    setF 8� %7j4               68� %7!d              8� %7j    ��                             6mn               6!&               68� %7   error:false j               6  Soj               6��Ttj    ��          6 I8          ���.   �ͷ����еĶ��󣬰������ν����ĺ��Զ������õġ�      � %    	   1                                        I   j4               68� %7!T              8� 7   run 	   clearAll  I8     �   ȡ����ֵ"   ȡ��json�����ֵ�������������ı���   *   � %� %       	   1       	     �        v   � %    j     �   ���� json��ʽ�ķ��ʹ���{"user":"ss","list":[{"u":"666"}]},���ʹ��������user.list.0.u���͵õ�u��ֵ                G   �   �   �   �   �   1      9  j    ��                         6l               6!&               68� %7    j               6    Rsj4               68� %7!T              8� 7   run    pjson 8� %7   0 j4               68� %7!d              8� %7j    ��                             6j               68� %7 I8    �   ȡ���Գ�Ա��(   ȡ����������г�Ա����������������������   *   � %� %       	   1       	     �        �   � %    �     �  ���� json��ʽ�ķ��ʹ�����json��������{"user":"ss","list":[{"u":"666"}]},���ʹ��������user.list���͵õ�list�������������ǻ�ȡ������ĳ�Ա��                �   �   �   ]        F       �  j4               68� %7!T              8� 7   run    jsonLen 8� %7   0 j    ��                         6j4               68� %7!d              8� %7j    ��                             6mn               6!&               68� %7   0 j               6        Soj    ��          6j               6!w              68� %7Ttj    ��          6j    ��          6 I8     �   ȡ�Զ�������ֵ   ȡ���Զ���json�����ֵ   *   � %� %       	   1       	     �        v   � %    j     �   ���� json��ʽ�ķ��ʹ���{"user":"ss","list":[{"u":"666"}]},���ʹ��������user.list.0.u���͵õ�u��ֵ                G   �   �   
  �   �   �       %  j    ��                         6l               6!&               68� %7    j               6    Rsj4               68� %7!T              8� 7   run    pjson 8� %7   1 j4               68� %7!d              8� %7j               68� %7j    ��          6 I8     �   ���Զ�������ֵ&   �Զ���json���󣬵��ô˷���������ý���   *   � %� %       	   1       	     �        �   � %� %    >   :     �   ������� ֧�ֶ�άJson�ĸ�ֵ��������ʽuser.list.0.u M     �   ����ֵ ֧�����֡��߼��͡�nullֵ���Զ�ת���������������ͱ������ı��ͣ�                 $   `   g   �   �   �   �         +  l               6!&               68� %7    j               6    Rsj4               68� %7!T              8� 7   run    setJson 8� %78� %7j4               68� %7!d              8� %7j    ��                             6j               68� %7j    ��          6 I8    �   ȡ�Զ������Գ�Ա��.   ȡ���Զ����������г�Ա����������������������   *   � %� %       	   1       	     �        �   � %    �     �  ���� json��ʽ�ķ��ʹ�����json��������{"user":"ss","list":[{"u":"666"}]},���ʹ��������user.list���͵õ�list�������������ǻ�ȡ������ĳ�Ա��                �           F   h   o       1  j4               68� %7!T              8� 7   run    jsonLen 8� %7   1 j4               68� %7!d              8� %7mn               6!&               68� %7   0 j               6        Soj    ��          6j               6!w              68� %7Ttj    ��          6 I8     �   ȡ�Զ����ַ���.   ȡ���Զ���json�����json�ı��������������ı���   *   � %� %       	   1       	     �                                  �   Z   a       �   j4               68� %7!T              8� 7   run    getJson j4               68� %7!d              8� %7j               68� %7 I8          ȡ����������   ȡ�������µ����еļ�ֵ��   *   � %� %       	   1       	             �   � %� %    0   ,     �
  ���������� �������ջ�ȡ��������keyֵ m     �  ά�Ȳ��� �����룬ȡ1J����ֵ������ά�Ȳ������Ƿ��ظ�ά���µĶ�������м��������ά����û�ж��󣬷��ؿ�             $   X   o   �      o  v        H       �  j4               68� %7!T              8� 7   run 
   getAllkey 8� %7   0 j              8� %7!d              8� %7j    ��                                          6mn               6!&               6!              8� %7   error:false j7               68� %7          j               6Soj    ��          6j4               68� %7!&              8� %7   ; j    ��                               6j               6Ttj    ��          6j    ��          6 I8     �   ȥ������html��ǩ   ȥ���ı����е�html��ǩ   *   %%       	   1       	     �           � %         �   �ı�                 �         I   d   k       �   j4               68%7!T              8� 7   run    delHtmlTag 8� %7j4               68%7!d              8%7j               68%7j    ��          6 I8          ȡ�����Զ���������   ȡ�������µ����еļ�ֵ��   *   	%
%       	   1       	             �   %%    0   ,     �
  ���������� �������ջ�ȡ��������keyֵ m     �  ά�Ȳ��� �����룬ȡ1J����ֵ������ά�Ȳ������Ƿ��ظ�ά���µĶ�������м��������ά����û�ж��󣬷��ؿ�             $   X   o   �      o  v        H       �  j4               68	%7!T              8� 7   run 
   getAllkey 8%7   0 j              8
%7!d              8	%7j    ��                                          6mn               6!&               6!              8
%7   error:false j7               68%7          j               6Soj    ��          6j4               68%7!&              8
%7   ; j    ��                               6j               6Ttj    ��          6j    ��          6 I8     �   ���Զ����Ա!   ��������Ӷ���ĳ�Ա����{"aa":[]}   C   =%B%A%               �        	   1       	     �        �   &%'%2%.%    >   [   |   :     �   ������� ֧�ֶ�άJson�ĸ�ֵ��������ʽuser.list.0.u      �   ��Ա�ı� ��Ա��ֵ      �   �Ƿ��Ƕ��� �Ƿ��Ƕ���     �  ���س�Ա����              P   $   s   �   �   �   �   �   �   -  4  k  r  �  �  �    %  E  ^        �  l               6!&               68&%7    j               6    Rsj    ��          6k                682%7j4               68B%7!T              8� 7   run    setJsonInArray 8&%78'%7   1 Pj4               68B%7!T              8� 7   run    setJsonInArray 8&%78'%7   0 Qrj    ��          6j4               68A%7!d              8B%7mn               6!'               68A%7   error:false j4               68=%7!d               68A%7   [�ָ�] j4               68A%78=%:;   7j4               68.%7!w              68=%:;   7j               68A%7Soj               6    Ttj    ��          6j    ��          6 I8     �   ɾ�Զ����Ա(   ɾ���Զ������ĳ�Ա���������µ�json�ı�   *   J%K%       	   1       	     �        o   H%I%    9   5     �   key ֧�ֶ�άJson�ĸ�ֵ��������ʽuser.list.0.u "    �   index �����Ա,�±��1��ʼ             ,   $   �   �   *  1  L  S    s   �   �       �  l               6!&               68H%7    j               6    Rsj    ��          6j4               68I%7!�               6!)               68I%7        !               68I%7      �?        j4               68J%7!T              8� 7   run    delJsonInArray 8H%78I%7j4               68K%7!d              8J%7j               68K%7j    ��          6 I8     �   �滻�Զ����Ա   �滻ָ�������ĳ�Ա   *   ]%^%       	   1       	     �        �   b%c%d%h%    >   c   �   :     �   ������� ֧�ֶ�άJson�ĸ�ֵ��������ʽuser.list.0.u !    �   ���� �����Ա,�±��1��ʼ      �   ��Ա�ı� �滻��ֵ����� ,     �  �Ƿ��Ƕ��� �滻��val�Ƿ��Ǹ�json����             H   $   s   �   �   �   	    D  K  R  �  �  (  u  |  �  �  �      C  l               6!&               68b%7    j               6    Rsj    ��          6j4               68c%7!�               6!)               68c%7        !               68c%7      �?        k                68h%7j4               68]%7!T              8� 7   run    updJsonInArray 8b%78c%78d%7   1 Pj4               68]%7!T              8� 7   run    updJsonInArray 8b%78c%78d%7   0 Qrj    ��          6j4               68^%7!d              8]%7j               68^%7j    ��          6 I8     �
   ����ʱ����<   �����������ʱ����ģ��ٶȺܿ죬��Ҫ��Ϊ����ϼ����Ա�Ķ���   ?   r%s%|%          	   1       	     �     	     �        �   u%v%w%    >   �   :     �   ������� ֧�ֶ�άJson�ĸ�ֵ��������ʽuser.list.0.u M     �   ����ֵ ֧�����֡��߼��͡�nullֵ���Զ�ת���������������ͱ������ı��ͣ� '     �  �Ƿ���� ����棬��ʱ�������             ,   $   `   y   �   �   �       &  -  Y      t  l               6!&               68u%7    j               6    Rsj4               68|%7!�               68w%7   1    0 j    ��                         6j4               68r%7!T              8� 7   run    setTempJson 8u%78v%78|%7j4               68s%7!d              8r%7j               68s%7j    ��          6                
 
�׈0׈                	   ole32.dll   CoInitialize       E    	    �                     	   ole32.dll   CoUninitialize                                                s�CJs �׽��»��<s s s s s             L                                                                                                                       s��}Ds ��¥������s s s s s                                                               s��!s ˨���Ļ��9s s s s s          I                                            I   ss s                                                                                        