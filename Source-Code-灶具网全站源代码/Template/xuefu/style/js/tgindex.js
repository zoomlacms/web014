﻿/*jquery-1.4.2.min.js*/
(function(A,w){function ma(){if(!c.isReady){try{s.documentElement.doScroll("left")}catch(a){setTimeout(ma,1);return}c.ready()}}function Qa(a,b){b.src?c.ajax({url:b.src,async:false,dataType:"script"}):c.globalEval(b.text||b.textContent||b.innerHTML||"");b.parentNode&&b.parentNode.removeChild(b)}function X(a,b,d,f,e,j){var i=a.length;if(typeof b==="object"){for(var o in b)X(a,o,b[o],f,e,d);return a}if(d!==w){f=!j&&f&&c.isFunction(d);for(o=0;o<i;o++)e(a[o],b,f?d.call(a[o],o,e(a[o],b)):d,j);return a}return i?
e(a[0],b):w}function J(){return(new Date).getTime()}function Y(){return false}function Z(){return true}function na(a,b,d){d[0].type=a;return c.event.handle.apply(b,d)}function oa(a){var b,d=[],f=[],e=arguments,j,i,o,k,n,r;i=c.data(this,"events");if(!(a.liveFired===this||!i||!i.live||a.button&&a.type==="click")){a.liveFired=this;var u=i.live.slice(0);for(k=0;k<u.length;k++){i=u[k];i.origType.replace(O,"")===a.type?f.push(i.selector):u.splice(k--,1)}j=c(a.target).closest(f,a.currentTarget);n=0;for(r=
j.length;n<r;n++)for(k=0;k<u.length;k++){i=u[k];if(j[n].selector===i.selector){o=j[n].elem;f=null;if(i.preType==="mouseenter"||i.preType==="mouseleave")f=c(a.relatedTarget).closest(i.selector)[0];if(!f||f!==o)d.push({elem:o,handleObj:i})}}n=0;for(r=d.length;n<r;n++){j=d[n];a.currentTarget=j.elem;a.data=j.handleObj.data;a.handleObj=j.handleObj;if(j.handleObj.origHandler.apply(j.elem,e)===false){b=false;break}}return b}}function pa(a,b){return"live."+(a&&a!=="*"?a+".":"")+b.replace(/\./g,"`").replace(/ /g,
"&")}function qa(a){return!a||!a.parentNode||a.parentNode.nodeType===11}function ra(a,b){var d=0;b.each(function(){if(this.nodeName===(a[d]&&a[d].nodeName)){var f=c.data(a[d++]),e=c.data(this,f);if(f=f&&f.events){delete e.handle;e.events={};for(var j in f)for(var i in f[j])c.event.add(this,j,f[j][i],f[j][i].data)}}})}function sa(a,b,d){var f,e,j;b=b&&b[0]?b[0].ownerDocument||b[0]:s;if(a.length===1&&typeof a[0]==="string"&&a[0].length<512&&b===s&&!ta.test(a[0])&&(c.support.checkClone||!ua.test(a[0]))){e=
true;if(j=c.fragments[a[0]])if(j!==1)f=j}if(!f){f=b.createDocumentFragment();c.clean(a,b,f,d)}if(e)c.fragments[a[0]]=j?f:1;return{fragment:f,cacheable:e}}function K(a,b){var d={};c.each(va.concat.apply([],va.slice(0,b)),function(){d[this]=a});return d}function wa(a){return"scrollTo"in a&&a.document?a:a.nodeType===9?a.defaultView||a.parentWindow:false}var c=function(a,b){return new c.fn.init(a,b)},Ra=A.jQuery,Sa=A.$,s=A.document,T,Ta=/^[^<]*(<[\w\W]+>)[^>]*$|^#([\w-]+)$/,Ua=/^.[^:#\[\.,]*$/,Va=/\S/,
Wa=/^(\s|\u00A0)+|(\s|\u00A0)+$/g,Xa=/^<(\w+)\s*\/?>(?:<\/\1>)?$/,P=navigator.userAgent,xa=false,Q=[],L,$=Object.prototype.toString,aa=Object.prototype.hasOwnProperty,ba=Array.prototype.push,R=Array.prototype.slice,ya=Array.prototype.indexOf;c.fn=c.prototype={init:function(a,b){var d,f;if(!a)return this;if(a.nodeType){this.context=this[0]=a;this.length=1;return this}if(a==="body"&&!b){this.context=s;this[0]=s.body;this.selector="body";this.length=1;return this}if(typeof a==="string")if((d=Ta.exec(a))&&
(d[1]||!b))if(d[1]){f=b?b.ownerDocument||b:s;if(a=Xa.exec(a))if(c.isPlainObject(b)){a=[s.createElement(a[1])];c.fn.attr.call(a,b,true)}else a=[f.createElement(a[1])];else{a=sa([d[1]],[f]);a=(a.cacheable?a.fragment.cloneNode(true):a.fragment).childNodes}return c.merge(this,a)}else{if(b=s.getElementById(d[2])){if(b.id!==d[2])return T.find(a);this.length=1;this[0]=b}this.context=s;this.selector=a;return this}else if(!b&&/^\w+$/.test(a)){this.selector=a;this.context=s;a=s.getElementsByTagName(a);return c.merge(this,
a)}else return!b||b.jquery?(b||T).find(a):c(b).find(a);else if(c.isFunction(a))return T.ready(a);if(a.selector!==w){this.selector=a.selector;this.context=a.context}return c.makeArray(a,this)},selector:"",jquery:"1.4.2",length:0,size:function(){return this.length},toArray:function(){return R.call(this,0)},get:function(a){return a==null?this.toArray():a<0?this.slice(a)[0]:this[a]},pushStack:function(a,b,d){var f=c();c.isArray(a)?ba.apply(f,a):c.merge(f,a);f.prevObject=this;f.context=this.context;if(b===
"find")f.selector=this.selector+(this.selector?" ":"")+d;else if(b)f.selector=this.selector+"."+b+"("+d+")";return f},each:function(a,b){return c.each(this,a,b)},ready:function(a){c.bindReady();if(c.isReady)a.call(s,c);else Q&&Q.push(a);return this},eq:function(a){return a===-1?this.slice(a):this.slice(a,+a+1)},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},slice:function(){return this.pushStack(R.apply(this,arguments),"slice",R.call(arguments).join(","))},map:function(a){return this.pushStack(c.map(this,
function(b,d){return a.call(b,d,b)}))},end:function(){return this.prevObject||c(null)},push:ba,sort:[].sort,splice:[].splice};c.fn.init.prototype=c.fn;c.extend=c.fn.extend=function(){var a=arguments[0]||{},b=1,d=arguments.length,f=false,e,j,i,o;if(typeof a==="boolean"){f=a;a=arguments[1]||{};b=2}if(typeof a!=="object"&&!c.isFunction(a))a={};if(d===b){a=this;--b}for(;b<d;b++)if((e=arguments[b])!=null)for(j in e){i=a[j];o=e[j];if(a!==o)if(f&&o&&(c.isPlainObject(o)||c.isArray(o))){i=i&&(c.isPlainObject(i)||
c.isArray(i))?i:c.isArray(o)?[]:{};a[j]=c.extend(f,i,o)}else if(o!==w)a[j]=o}return a};c.extend({noConflict:function(a){A.$=Sa;if(a)A.jQuery=Ra;return c},isReady:false,ready:function(){if(!c.isReady){if(!s.body)return setTimeout(c.ready,13);c.isReady=true;if(Q){for(var a,b=0;a=Q[b++];)a.call(s,c);Q=null}c.fn.triggerHandler&&c(s).triggerHandler("ready")}},bindReady:function(){if(!xa){xa=true;if(s.readyState==="complete")return c.ready();if(s.addEventListener){s.addEventListener("DOMContentLoaded",
L,false);A.addEventListener("load",c.ready,false)}else if(s.attachEvent){s.attachEvent("onreadystatechange",L);A.attachEvent("onload",c.ready);var a=false;try{a=A.frameElement==null}catch(b){}s.documentElement.doScroll&&a&&ma()}}},isFunction:function(a){return $.call(a)==="[object Function]"},isArray:function(a){return $.call(a)==="[object Array]"},isPlainObject:function(a){if(!a||$.call(a)!=="[object Object]"||a.nodeType||a.setInterval)return false;if(a.constructor&&!aa.call(a,"constructor")&&!aa.call(a.constructor.prototype,
"isPrototypeOf"))return false;var b;for(b in a);return b===w||aa.call(a,b)},isEmptyObject:function(a){for(var b in a)return false;return true},error:function(a){throw a;},parseJSON:function(a){if(typeof a!=="string"||!a)return null;a=c.trim(a);if(/^[\],:{}\s]*$/.test(a.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,"@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,"]").replace(/(?:^|:|,)(?:\s*\[)+/g,"")))return A.JSON&&A.JSON.parse?A.JSON.parse(a):(new Function("return "+
a))();else c.error("Invalid JSON: "+a)},noop:function(){},globalEval:function(a){if(a&&Va.test(a)){var b=s.getElementsByTagName("head")[0]||s.documentElement,d=s.createElement("script");d.type="text/javascript";if(c.support.scriptEval)d.appendChild(s.createTextNode(a));else d.text=a;b.insertBefore(d,b.firstChild);b.removeChild(d)}},nodeName:function(a,b){return a.nodeName&&a.nodeName.toUpperCase()===b.toUpperCase()},each:function(a,b,d){var f,e=0,j=a.length,i=j===w||c.isFunction(a);if(d)if(i)for(f in a){if(b.apply(a[f],
d)===false)break}else for(;e<j;){if(b.apply(a[e++],d)===false)break}else if(i)for(f in a){if(b.call(a[f],f,a[f])===false)break}else for(d=a[0];e<j&&b.call(d,e,d)!==false;d=a[++e]);return a},trim:function(a){return(a||"").replace(Wa,"")},makeArray:function(a,b){b=b||[];if(a!=null)a.length==null||typeof a==="string"||c.isFunction(a)||typeof a!=="function"&&a.setInterval?ba.call(b,a):c.merge(b,a);return b},inArray:function(a,b){if(b.indexOf)return b.indexOf(a);for(var d=0,f=b.length;d<f;d++)if(b[d]===
a)return d;return-1},merge:function(a,b){var d=a.length,f=0;if(typeof b.length==="number")for(var e=b.length;f<e;f++)a[d++]=b[f];else for(;b[f]!==w;)a[d++]=b[f++];a.length=d;return a},grep:function(a,b,d){for(var f=[],e=0,j=a.length;e<j;e++)!d!==!b(a[e],e)&&f.push(a[e]);return f},map:function(a,b,d){for(var f=[],e,j=0,i=a.length;j<i;j++){e=b(a[j],j,d);if(e!=null)f[f.length]=e}return f.concat.apply([],f)},guid:1,proxy:function(a,b,d){if(arguments.length===2)if(typeof b==="string"){d=a;a=d[b];b=w}else if(b&&
!c.isFunction(b)){d=b;b=w}if(!b&&a)b=function(){return a.apply(d||this,arguments)};if(a)b.guid=a.guid=a.guid||b.guid||c.guid++;return b},uaMatch:function(a){a=a.toLowerCase();a=/(webkit)[ \/]([\w.]+)/.exec(a)||/(opera)(?:.*version)?[ \/]([\w.]+)/.exec(a)||/(msie) ([\w.]+)/.exec(a)||!/compatible/.test(a)&&/(mozilla)(?:.*? rv:([\w.]+))?/.exec(a)||[];return{browser:a[1]||"",version:a[2]||"0"}},browser:{}});P=c.uaMatch(P);if(P.browser){c.browser[P.browser]=true;c.browser.version=P.version}if(c.browser.webkit)c.browser.safari=
true;if(ya)c.inArray=function(a,b){return ya.call(b,a)};T=c(s);if(s.addEventListener)L=function(){s.removeEventListener("DOMContentLoaded",L,false);c.ready()};else if(s.attachEvent)L=function(){if(s.readyState==="complete"){s.detachEvent("onreadystatechange",L);c.ready()}};(function(){c.support={};var a=s.documentElement,b=s.createElement("script"),d=s.createElement("div"),f="script"+J();d.style.display="none";d.innerHTML="   <link/><table></table><a href='/a' style='color:red;float:left;opacity:.55;'>a</a><input type='checkbox'/>";
var e=d.getElementsByTagName("*"),j=d.getElementsByTagName("a")[0];if(!(!e||!e.length||!j)){c.support={leadingWhitespace:d.firstChild.nodeType===3,tbody:!d.getElementsByTagName("tbody").length,htmlSerialize:!!d.getElementsByTagName("link").length,style:/red/.test(j.getAttribute("style")),hrefNormalized:j.getAttribute("href")==="/a",opacity:/^0.55$/.test(j.style.opacity),cssFloat:!!j.style.cssFloat,checkOn:d.getElementsByTagName("input")[0].value==="on",optSelected:s.createElement("select").appendChild(s.createElement("option")).selected,
parentNode:d.removeChild(d.appendChild(s.createElement("div"))).parentNode===null,deleteExpando:true,checkClone:false,scriptEval:false,noCloneEvent:true,boxModel:null};b.type="text/javascript";try{b.appendChild(s.createTextNode("window."+f+"=1;"))}catch(i){}a.insertBefore(b,a.firstChild);if(A[f]){c.support.scriptEval=true;delete A[f]}try{delete b.test}catch(o){c.support.deleteExpando=false}a.removeChild(b);if(d.attachEvent&&d.fireEvent){d.attachEvent("onclick",function k(){c.support.noCloneEvent=
false;d.detachEvent("onclick",k)});d.cloneNode(true).fireEvent("onclick")}d=s.createElement("div");d.innerHTML="<input type='radio' name='radiotest' checked='checked'/>";a=s.createDocumentFragment();a.appendChild(d.firstChild);c.support.checkClone=a.cloneNode(true).cloneNode(true).lastChild.checked;c(function(){var k=s.createElement("div");k.style.width=k.style.paddingLeft="1px";s.body.appendChild(k);c.boxModel=c.support.boxModel=k.offsetWidth===2;s.body.removeChild(k).style.display="none"});a=function(k){var n=
s.createElement("div");k="on"+k;var r=k in n;if(!r){n.setAttribute(k,"return;");r=typeof n[k]==="function"}return r};c.support.submitBubbles=a("submit");c.support.changeBubbles=a("change");a=b=d=e=j=null}})();c.props={"for":"htmlFor","class":"className",readonly:"readOnly",maxlength:"maxLength",cellspacing:"cellSpacing",rowspan:"rowSpan",colspan:"colSpan",tabindex:"tabIndex",usemap:"useMap",frameborder:"frameBorder"};var G="jQuery"+J(),Ya=0,za={};c.extend({cache:{},expando:G,noData:{embed:true,object:true,
applet:true},data:function(a,b,d){if(!(a.nodeName&&c.noData[a.nodeName.toLowerCase()])){a=a==A?za:a;var f=a[G],e=c.cache;if(!f&&typeof b==="string"&&d===w)return null;f||(f=++Ya);if(typeof b==="object"){a[G]=f;e[f]=c.extend(true,{},b)}else if(!e[f]){a[G]=f;e[f]={}}a=e[f];if(d!==w)a[b]=d;return typeof b==="string"?a[b]:a}},removeData:function(a,b){if(!(a.nodeName&&c.noData[a.nodeName.toLowerCase()])){a=a==A?za:a;var d=a[G],f=c.cache,e=f[d];if(b){if(e){delete e[b];c.isEmptyObject(e)&&c.removeData(a)}}else{if(c.support.deleteExpando)delete a[c.expando];
else a.removeAttribute&&a.removeAttribute(c.expando);delete f[d]}}}});c.fn.extend({data:function(a,b){if(typeof a==="undefined"&&this.length)return c.data(this[0]);else if(typeof a==="object")return this.each(function(){c.data(this,a)});var d=a.split(".");d[1]=d[1]?"."+d[1]:"";if(b===w){var f=this.triggerHandler("getData"+d[1]+"!",[d[0]]);if(f===w&&this.length)f=c.data(this[0],a);return f===w&&d[1]?this.data(d[0]):f}else return this.trigger("setData"+d[1]+"!",[d[0],b]).each(function(){c.data(this,
a,b)})},removeData:function(a){return this.each(function(){c.removeData(this,a)})}});c.extend({queue:function(a,b,d){if(a){b=(b||"fx")+"queue";var f=c.data(a,b);if(!d)return f||[];if(!f||c.isArray(d))f=c.data(a,b,c.makeArray(d));else f.push(d);return f}},dequeue:function(a,b){b=b||"fx";var d=c.queue(a,b),f=d.shift();if(f==="inprogress")f=d.shift();if(f){b==="fx"&&d.unshift("inprogress");f.call(a,function(){c.dequeue(a,b)})}}});c.fn.extend({queue:function(a,b){if(typeof a!=="string"){b=a;a="fx"}if(b===
w)return c.queue(this[0],a);return this.each(function(){var d=c.queue(this,a,b);a==="fx"&&d[0]!=="inprogress"&&c.dequeue(this,a)})},dequeue:function(a){return this.each(function(){c.dequeue(this,a)})},delay:function(a,b){a=c.fx?c.fx.speeds[a]||a:a;b=b||"fx";return this.queue(b,function(){var d=this;setTimeout(function(){c.dequeue(d,b)},a)})},clearQueue:function(a){return this.queue(a||"fx",[])}});var Aa=/[\n\t]/g,ca=/\s+/,Za=/\r/g,$a=/href|src|style/,ab=/(button|input)/i,bb=/(button|input|object|select|textarea)/i,
cb=/^(a|area)$/i,Ba=/radio|checkbox/;c.fn.extend({attr:function(a,b){return X(this,a,b,true,c.attr)},removeAttr:function(a){return this.each(function(){c.attr(this,a,"");this.nodeType===1&&this.removeAttribute(a)})},addClass:function(a){if(c.isFunction(a))return this.each(function(n){var r=c(this);r.addClass(a.call(this,n,r.attr("class")))});if(a&&typeof a==="string")for(var b=(a||"").split(ca),d=0,f=this.length;d<f;d++){var e=this[d];if(e.nodeType===1)if(e.className){for(var j=" "+e.className+" ",
i=e.className,o=0,k=b.length;o<k;o++)if(j.indexOf(" "+b[o]+" ")<0)i+=" "+b[o];e.className=c.trim(i)}else e.className=a}return this},removeClass:function(a){if(c.isFunction(a))return this.each(function(k){var n=c(this);n.removeClass(a.call(this,k,n.attr("class")))});if(a&&typeof a==="string"||a===w)for(var b=(a||"").split(ca),d=0,f=this.length;d<f;d++){var e=this[d];if(e.nodeType===1&&e.className)if(a){for(var j=(" "+e.className+" ").replace(Aa," "),i=0,o=b.length;i<o;i++)j=j.replace(" "+b[i]+" ",
" ");e.className=c.trim(j)}else e.className=""}return this},toggleClass:function(a,b){var d=typeof a,f=typeof b==="boolean";if(c.isFunction(a))return this.each(function(e){var j=c(this);j.toggleClass(a.call(this,e,j.attr("class"),b),b)});return this.each(function(){if(d==="string")for(var e,j=0,i=c(this),o=b,k=a.split(ca);e=k[j++];){o=f?o:!i.hasClass(e);i[o?"addClass":"removeClass"](e)}else if(d==="undefined"||d==="boolean"){this.className&&c.data(this,"__className__",this.className);this.className=
this.className||a===false?"":c.data(this,"__className__")||""}})},hasClass:function(a){a=" "+a+" ";for(var b=0,d=this.length;b<d;b++)if((" "+this[b].className+" ").replace(Aa," ").indexOf(a)>-1)return true;return false},val:function(a){if(a===w){var b=this[0];if(b){if(c.nodeName(b,"option"))return(b.attributes.value||{}).specified?b.value:b.text;if(c.nodeName(b,"select")){var d=b.selectedIndex,f=[],e=b.options;b=b.type==="select-one";if(d<0)return null;var j=b?d:0;for(d=b?d+1:e.length;j<d;j++){var i=
e[j];if(i.selected){a=c(i).val();if(b)return a;f.push(a)}}return f}if(Ba.test(b.type)&&!c.support.checkOn)return b.getAttribute("value")===null?"on":b.value;return(b.value||"").replace(Za,"")}return w}var o=c.isFunction(a);return this.each(function(k){var n=c(this),r=a;if(this.nodeType===1){if(o)r=a.call(this,k,n.val());if(typeof r==="number")r+="";if(c.isArray(r)&&Ba.test(this.type))this.checked=c.inArray(n.val(),r)>=0;else if(c.nodeName(this,"select")){var u=c.makeArray(r);c("option",this).each(function(){this.selected=
c.inArray(c(this).val(),u)>=0});if(!u.length)this.selectedIndex=-1}else this.value=r}})}});c.extend({attrFn:{val:true,css:true,html:true,text:true,data:true,width:true,height:true,offset:true},attr:function(a,b,d,f){if(!a||a.nodeType===3||a.nodeType===8)return w;if(f&&b in c.attrFn)return c(a)[b](d);f=a.nodeType!==1||!c.isXMLDoc(a);var e=d!==w;b=f&&c.props[b]||b;if(a.nodeType===1){var j=$a.test(b);if(b in a&&f&&!j){if(e){b==="type"&&ab.test(a.nodeName)&&a.parentNode&&c.error("type property can't be changed");
a[b]=d}if(c.nodeName(a,"form")&&a.getAttributeNode(b))return a.getAttributeNode(b).nodeValue;if(b==="tabIndex")return(b=a.getAttributeNode("tabIndex"))&&b.specified?b.value:bb.test(a.nodeName)||cb.test(a.nodeName)&&a.href?0:w;return a[b]}if(!c.support.style&&f&&b==="style"){if(e)a.style.cssText=""+d;return a.style.cssText}e&&a.setAttribute(b,""+d);a=!c.support.hrefNormalized&&f&&j?a.getAttribute(b,2):a.getAttribute(b);return a===null?w:a}return c.style(a,b,d)}});var O=/\.(.*)$/,db=function(a){return a.replace(/[^\w\s\.\|`]/g,
function(b){return"\\"+b})};c.event={add:function(a,b,d,f){if(!(a.nodeType===3||a.nodeType===8)){if(a.setInterval&&a!==A&&!a.frameElement)a=A;var e,j;if(d.handler){e=d;d=e.handler}if(!d.guid)d.guid=c.guid++;if(j=c.data(a)){var i=j.events=j.events||{},o=j.handle;if(!o)j.handle=o=function(){return typeof c!=="undefined"&&!c.event.triggered?c.event.handle.apply(o.elem,arguments):w};o.elem=a;b=b.split(" ");for(var k,n=0,r;k=b[n++];){j=e?c.extend({},e):{handler:d,data:f};if(k.indexOf(".")>-1){r=k.split(".");
k=r.shift();j.namespace=r.slice(0).sort().join(".")}else{r=[];j.namespace=""}j.type=k;j.guid=d.guid;var u=i[k],z=c.event.special[k]||{};if(!u){u=i[k]=[];if(!z.setup||z.setup.call(a,f,r,o)===false)if(a.addEventListener)a.addEventListener(k,o,false);else a.attachEvent&&a.attachEvent("on"+k,o)}if(z.add){z.add.call(a,j);if(!j.handler.guid)j.handler.guid=d.guid}u.push(j);c.event.global[k]=true}a=null}}},global:{},remove:function(a,b,d,f){if(!(a.nodeType===3||a.nodeType===8)){var e,j=0,i,o,k,n,r,u,z=c.data(a),
C=z&&z.events;if(z&&C){if(b&&b.type){d=b.handler;b=b.type}if(!b||typeof b==="string"&&b.charAt(0)==="."){b=b||"";for(e in C)c.event.remove(a,e+b)}else{for(b=b.split(" ");e=b[j++];){n=e;i=e.indexOf(".")<0;o=[];if(!i){o=e.split(".");e=o.shift();k=new RegExp("(^|\\.)"+c.map(o.slice(0).sort(),db).join("\\.(?:.*\\.)?")+"(\\.|$)")}if(r=C[e])if(d){n=c.event.special[e]||{};for(B=f||0;B<r.length;B++){u=r[B];if(d.guid===u.guid){if(i||k.test(u.namespace)){f==null&&r.splice(B--,1);n.remove&&n.remove.call(a,u)}if(f!=
null)break}}if(r.length===0||f!=null&&r.length===1){if(!n.teardown||n.teardown.call(a,o)===false)Ca(a,e,z.handle);delete C[e]}}else for(var B=0;B<r.length;B++){u=r[B];if(i||k.test(u.namespace)){c.event.remove(a,n,u.handler,B);r.splice(B--,1)}}}if(c.isEmptyObject(C)){if(b=z.handle)b.elem=null;delete z.events;delete z.handle;c.isEmptyObject(z)&&c.removeData(a)}}}}},trigger:function(a,b,d,f){var e=a.type||a;if(!f){a=typeof a==="object"?a[G]?a:c.extend(c.Event(e),a):c.Event(e);if(e.indexOf("!")>=0){a.type=
e=e.slice(0,-1);a.exclusive=true}if(!d){a.stopPropagation();c.event.global[e]&&c.each(c.cache,function(){this.events&&this.events[e]&&c.event.trigger(a,b,this.handle.elem)})}if(!d||d.nodeType===3||d.nodeType===8)return w;a.result=w;a.target=d;b=c.makeArray(b);b.unshift(a)}a.currentTarget=d;(f=c.data(d,"handle"))&&f.apply(d,b);f=d.parentNode||d.ownerDocument;try{if(!(d&&d.nodeName&&c.noData[d.nodeName.toLowerCase()]))if(d["on"+e]&&d["on"+e].apply(d,b)===false)a.result=false}catch(j){}if(!a.isPropagationStopped()&&
f)c.event.trigger(a,b,f,true);else if(!a.isDefaultPrevented()){f=a.target;var i,o=c.nodeName(f,"a")&&e==="click",k=c.event.special[e]||{};if((!k._default||k._default.call(d,a)===false)&&!o&&!(f&&f.nodeName&&c.noData[f.nodeName.toLowerCase()])){try{if(f[e]){if(i=f["on"+e])f["on"+e]=null;c.event.triggered=true;f[e]()}}catch(n){}if(i)f["on"+e]=i;c.event.triggered=false}}},handle:function(a){var b,d,f,e;a=arguments[0]=c.event.fix(a||A.event);a.currentTarget=this;b=a.type.indexOf(".")<0&&!a.exclusive;
if(!b){d=a.type.split(".");a.type=d.shift();f=new RegExp("(^|\\.)"+d.slice(0).sort().join("\\.(?:.*\\.)?")+"(\\.|$)")}e=c.data(this,"events");d=e[a.type];if(e&&d){d=d.slice(0);e=0;for(var j=d.length;e<j;e++){var i=d[e];if(b||f.test(i.namespace)){a.handler=i.handler;a.data=i.data;a.handleObj=i;i=i.handler.apply(this,arguments);if(i!==w){a.result=i;if(i===false){a.preventDefault();a.stopPropagation()}}if(a.isImmediatePropagationStopped())break}}}return a.result},props:"altKey attrChange attrName bubbles button cancelable charCode clientX clientY ctrlKey currentTarget data detail eventPhase fromElement handler keyCode layerX layerY metaKey newValue offsetX offsetY originalTarget pageX pageY prevValue relatedNode relatedTarget screenX screenY shiftKey srcElement target toElement view wheelDelta which".split(" "),
fix:function(a){if(a[G])return a;var b=a;a=c.Event(b);for(var d=this.props.length,f;d;){f=this.props[--d];a[f]=b[f]}if(!a.target)a.target=a.srcElement||s;if(a.target.nodeType===3)a.target=a.target.parentNode;if(!a.relatedTarget&&a.fromElement)a.relatedTarget=a.fromElement===a.target?a.toElement:a.fromElement;if(a.pageX==null&&a.clientX!=null){b=s.documentElement;d=s.body;a.pageX=a.clientX+(b&&b.scrollLeft||d&&d.scrollLeft||0)-(b&&b.clientLeft||d&&d.clientLeft||0);a.pageY=a.clientY+(b&&b.scrollTop||
d&&d.scrollTop||0)-(b&&b.clientTop||d&&d.clientTop||0)}if(!a.which&&(a.charCode||a.charCode===0?a.charCode:a.keyCode))a.which=a.charCode||a.keyCode;if(!a.metaKey&&a.ctrlKey)a.metaKey=a.ctrlKey;if(!a.which&&a.button!==w)a.which=a.button&1?1:a.button&2?3:a.button&4?2:0;return a},guid:1E8,proxy:c.proxy,special:{ready:{setup:c.bindReady,teardown:c.noop},live:{add:function(a){c.event.add(this,a.origType,c.extend({},a,{handler:oa}))},remove:function(a){var b=true,d=a.origType.replace(O,"");c.each(c.data(this,
"events").live||[],function(){if(d===this.origType.replace(O,""))return b=false});b&&c.event.remove(this,a.origType,oa)}},beforeunload:{setup:function(a,b,d){if(this.setInterval)this.onbeforeunload=d;return false},teardown:function(a,b){if(this.onbeforeunload===b)this.onbeforeunload=null}}}};var Ca=s.removeEventListener?function(a,b,d){a.removeEventListener(b,d,false)}:function(a,b,d){a.detachEvent("on"+b,d)};c.Event=function(a){if(!this.preventDefault)return new c.Event(a);if(a&&a.type){this.originalEvent=
a;this.type=a.type}else this.type=a;this.timeStamp=J();this[G]=true};c.Event.prototype={preventDefault:function(){this.isDefaultPrevented=Z;var a=this.originalEvent;if(a){a.preventDefault&&a.preventDefault();a.returnValue=false}},stopPropagation:function(){this.isPropagationStopped=Z;var a=this.originalEvent;if(a){a.stopPropagation&&a.stopPropagation();a.cancelBubble=true}},stopImmediatePropagation:function(){this.isImmediatePropagationStopped=Z;this.stopPropagation()},isDefaultPrevented:Y,isPropagationStopped:Y,
isImmediatePropagationStopped:Y};var Da=function(a){var b=a.relatedTarget;try{for(;b&&b!==this;)b=b.parentNode;if(b!==this){a.type=a.data;c.event.handle.apply(this,arguments)}}catch(d){}},Ea=function(a){a.type=a.data;c.event.handle.apply(this,arguments)};c.each({mouseenter:"mouseover",mouseleave:"mouseout"},function(a,b){c.event.special[a]={setup:function(d){c.event.add(this,b,d&&d.selector?Ea:Da,a)},teardown:function(d){c.event.remove(this,b,d&&d.selector?Ea:Da)}}});if(!c.support.submitBubbles)c.event.special.submit=
{setup:function(){if(this.nodeName.toLowerCase()!=="form"){c.event.add(this,"click.specialSubmit",function(a){var b=a.target,d=b.type;if((d==="submit"||d==="image")&&c(b).closest("form").length)return na("submit",this,arguments)});c.event.add(this,"keypress.specialSubmit",function(a){var b=a.target,d=b.type;if((d==="text"||d==="password")&&c(b).closest("form").length&&a.keyCode===13)return na("submit",this,arguments)})}else return false},teardown:function(){c.event.remove(this,".specialSubmit")}};
if(!c.support.changeBubbles){var da=/textarea|input|select/i,ea,Fa=function(a){var b=a.type,d=a.value;if(b==="radio"||b==="checkbox")d=a.checked;else if(b==="select-multiple")d=a.selectedIndex>-1?c.map(a.options,function(f){return f.selected}).join("-"):"";else if(a.nodeName.toLowerCase()==="select")d=a.selectedIndex;return d},fa=function(a,b){var d=a.target,f,e;if(!(!da.test(d.nodeName)||d.readOnly)){f=c.data(d,"_change_data");e=Fa(d);if(a.type!=="focusout"||d.type!=="radio")c.data(d,"_change_data",
e);if(!(f===w||e===f))if(f!=null||e){a.type="change";return c.event.trigger(a,b,d)}}};c.event.special.change={filters:{focusout:fa,click:function(a){var b=a.target,d=b.type;if(d==="radio"||d==="checkbox"||b.nodeName.toLowerCase()==="select")return fa.call(this,a)},keydown:function(a){var b=a.target,d=b.type;if(a.keyCode===13&&b.nodeName.toLowerCase()!=="textarea"||a.keyCode===32&&(d==="checkbox"||d==="radio")||d==="select-multiple")return fa.call(this,a)},beforeactivate:function(a){a=a.target;c.data(a,
"_change_data",Fa(a))}},setup:function(){if(this.type==="file")return false;for(var a in ea)c.event.add(this,a+".specialChange",ea[a]);return da.test(this.nodeName)},teardown:function(){c.event.remove(this,".specialChange");return da.test(this.nodeName)}};ea=c.event.special.change.filters}s.addEventListener&&c.each({focus:"focusin",blur:"focusout"},function(a,b){function d(f){f=c.event.fix(f);f.type=b;return c.event.handle.call(this,f)}c.event.special[b]={setup:function(){this.addEventListener(a,
d,true)},teardown:function(){this.removeEventListener(a,d,true)}}});c.each(["bind","one"],function(a,b){c.fn[b]=function(d,f,e){if(typeof d==="object"){for(var j in d)this[b](j,f,d[j],e);return this}if(c.isFunction(f)){e=f;f=w}var i=b==="one"?c.proxy(e,function(k){c(this).unbind(k,i);return e.apply(this,arguments)}):e;if(d==="unload"&&b!=="one")this.one(d,f,e);else{j=0;for(var o=this.length;j<o;j++)c.event.add(this[j],d,i,f)}return this}});c.fn.extend({unbind:function(a,b){if(typeof a==="object"&&
!a.preventDefault)for(var d in a)this.unbind(d,a[d]);else{d=0;for(var f=this.length;d<f;d++)c.event.remove(this[d],a,b)}return this},delegate:function(a,b,d,f){return this.live(b,d,f,a)},undelegate:function(a,b,d){return arguments.length===0?this.unbind("live"):this.die(b,null,d,a)},trigger:function(a,b){return this.each(function(){c.event.trigger(a,b,this)})},triggerHandler:function(a,b){if(this[0]){a=c.Event(a);a.preventDefault();a.stopPropagation();c.event.trigger(a,b,this[0]);return a.result}},
toggle:function(a){for(var b=arguments,d=1;d<b.length;)c.proxy(a,b[d++]);return this.click(c.proxy(a,function(f){var e=(c.data(this,"lastToggle"+a.guid)||0)%d;c.data(this,"lastToggle"+a.guid,e+1);f.preventDefault();return b[e].apply(this,arguments)||false}))},hover:function(a,b){return this.mouseenter(a).mouseleave(b||a)}});var Ga={focus:"focusin",blur:"focusout",mouseenter:"mouseover",mouseleave:"mouseout"};c.each(["live","die"],function(a,b){c.fn[b]=function(d,f,e,j){var i,o=0,k,n,r=j||this.selector,
u=j?this:c(this.context);if(c.isFunction(f)){e=f;f=w}for(d=(d||"").split(" ");(i=d[o++])!=null;){j=O.exec(i);k="";if(j){k=j[0];i=i.replace(O,"")}if(i==="hover")d.push("mouseenter"+k,"mouseleave"+k);else{n=i;if(i==="focus"||i==="blur"){d.push(Ga[i]+k);i+=k}else i=(Ga[i]||i)+k;b==="live"?u.each(function(){c.event.add(this,pa(i,r),{data:f,selector:r,handler:e,origType:i,origHandler:e,preType:n})}):u.unbind(pa(i,r),e)}}return this}});c.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error".split(" "),
function(a,b){c.fn[b]=function(d){return d?this.bind(b,d):this.trigger(b)};if(c.attrFn)c.attrFn[b]=true});A.attachEvent&&!A.addEventListener&&A.attachEvent("onunload",function(){for(var a in c.cache)if(c.cache[a].handle)try{c.event.remove(c.cache[a].handle.elem)}catch(b){}});(function(){function a(g){for(var h="",l,m=0;g[m];m++){l=g[m];if(l.nodeType===3||l.nodeType===4)h+=l.nodeValue;else if(l.nodeType!==8)h+=a(l.childNodes)}return h}function b(g,h,l,m,q,p){q=0;for(var v=m.length;q<v;q++){var t=m[q];
if(t){t=t[g];for(var y=false;t;){if(t.sizcache===l){y=m[t.sizset];break}if(t.nodeType===1&&!p){t.sizcache=l;t.sizset=q}if(t.nodeName.toLowerCase()===h){y=t;break}t=t[g]}m[q]=y}}}function d(g,h,l,m,q,p){q=0;for(var v=m.length;q<v;q++){var t=m[q];if(t){t=t[g];for(var y=false;t;){if(t.sizcache===l){y=m[t.sizset];break}if(t.nodeType===1){if(!p){t.sizcache=l;t.sizset=q}if(typeof h!=="string"){if(t===h){y=true;break}}else if(k.filter(h,[t]).length>0){y=t;break}}t=t[g]}m[q]=y}}}var f=/((?:\((?:\([^()]+\)|[^()]+)+\)|\[(?:\[[^[\]]*\]|['"][^'"]*['"]|[^[\]'"]+)+\]|\\.|[^ >+~,(\[\\]+)+|[>+~])(\s*,\s*)?((?:.|\r|\n)*)/g,
e=0,j=Object.prototype.toString,i=false,o=true;[0,0].sort(function(){o=false;return 0});var k=function(g,h,l,m){l=l||[];var q=h=h||s;if(h.nodeType!==1&&h.nodeType!==9)return[];if(!g||typeof g!=="string")return l;for(var p=[],v,t,y,S,H=true,M=x(h),I=g;(f.exec(""),v=f.exec(I))!==null;){I=v[3];p.push(v[1]);if(v[2]){S=v[3];break}}if(p.length>1&&r.exec(g))if(p.length===2&&n.relative[p[0]])t=ga(p[0]+p[1],h);else for(t=n.relative[p[0]]?[h]:k(p.shift(),h);p.length;){g=p.shift();if(n.relative[g])g+=p.shift();
t=ga(g,t)}else{if(!m&&p.length>1&&h.nodeType===9&&!M&&n.match.ID.test(p[0])&&!n.match.ID.test(p[p.length-1])){v=k.find(p.shift(),h,M);h=v.expr?k.filter(v.expr,v.set)[0]:v.set[0]}if(h){v=m?{expr:p.pop(),set:z(m)}:k.find(p.pop(),p.length===1&&(p[0]==="~"||p[0]==="+")&&h.parentNode?h.parentNode:h,M);t=v.expr?k.filter(v.expr,v.set):v.set;if(p.length>0)y=z(t);else H=false;for(;p.length;){var D=p.pop();v=D;if(n.relative[D])v=p.pop();else D="";if(v==null)v=h;n.relative[D](y,v,M)}}else y=[]}y||(y=t);y||k.error(D||
g);if(j.call(y)==="[object Array]")if(H)if(h&&h.nodeType===1)for(g=0;y[g]!=null;g++){if(y[g]&&(y[g]===true||y[g].nodeType===1&&E(h,y[g])))l.push(t[g])}else for(g=0;y[g]!=null;g++)y[g]&&y[g].nodeType===1&&l.push(t[g]);else l.push.apply(l,y);else z(y,l);if(S){k(S,q,l,m);k.uniqueSort(l)}return l};k.uniqueSort=function(g){if(B){i=o;g.sort(B);if(i)for(var h=1;h<g.length;h++)g[h]===g[h-1]&&g.splice(h--,1)}return g};k.matches=function(g,h){return k(g,null,null,h)};k.find=function(g,h,l){var m,q;if(!g)return[];
for(var p=0,v=n.order.length;p<v;p++){var t=n.order[p];if(q=n.leftMatch[t].exec(g)){var y=q[1];q.splice(1,1);if(y.substr(y.length-1)!=="\\"){q[1]=(q[1]||"").replace(/\\/g,"");m=n.find[t](q,h,l);if(m!=null){g=g.replace(n.match[t],"");break}}}}m||(m=h.getElementsByTagName("*"));return{set:m,expr:g}};k.filter=function(g,h,l,m){for(var q=g,p=[],v=h,t,y,S=h&&h[0]&&x(h[0]);g&&h.length;){for(var H in n.filter)if((t=n.leftMatch[H].exec(g))!=null&&t[2]){var M=n.filter[H],I,D;D=t[1];y=false;t.splice(1,1);if(D.substr(D.length-
1)!=="\\"){if(v===p)p=[];if(n.preFilter[H])if(t=n.preFilter[H](t,v,l,p,m,S)){if(t===true)continue}else y=I=true;if(t)for(var U=0;(D=v[U])!=null;U++)if(D){I=M(D,t,U,v);var Ha=m^!!I;if(l&&I!=null)if(Ha)y=true;else v[U]=false;else if(Ha){p.push(D);y=true}}if(I!==w){l||(v=p);g=g.replace(n.match[H],"");if(!y)return[];break}}}if(g===q)if(y==null)k.error(g);else break;q=g}return v};k.error=function(g){throw"Syntax error, unrecognized expression: "+g;};var n=k.selectors={order:["ID","NAME","TAG"],match:{ID:/#((?:[\w\u00c0-\uFFFF-]|\\.)+)/,
CLASS:/\.((?:[\w\u00c0-\uFFFF-]|\\.)+)/,NAME:/\[name=['"]*((?:[\w\u00c0-\uFFFF-]|\\.)+)['"]*\]/,ATTR:/\[\s*((?:[\w\u00c0-\uFFFF-]|\\.)+)\s*(?:(\S?=)\s*(['"]*)(.*?)\3|)\s*\]/,TAG:/^((?:[\w\u00c0-\uFFFF\*-]|\\.)+)/,CHILD:/:(only|nth|last|first)-child(?:\((even|odd|[\dn+-]*)\))?/,POS:/:(nth|eq|gt|lt|first|last|even|odd)(?:\((\d*)\))?(?=[^-]|$)/,PSEUDO:/:((?:[\w\u00c0-\uFFFF-]|\\.)+)(?:\((['"]?)((?:\([^\)]+\)|[^\(\)]*)+)\2\))?/},leftMatch:{},attrMap:{"class":"className","for":"htmlFor"},attrHandle:{href:function(g){return g.getAttribute("href")}},
relative:{"+":function(g,h){var l=typeof h==="string",m=l&&!/\W/.test(h);l=l&&!m;if(m)h=h.toLowerCase();m=0;for(var q=g.length,p;m<q;m++)if(p=g[m]){for(;(p=p.previousSibling)&&p.nodeType!==1;);g[m]=l||p&&p.nodeName.toLowerCase()===h?p||false:p===h}l&&k.filter(h,g,true)},">":function(g,h){var l=typeof h==="string";if(l&&!/\W/.test(h)){h=h.toLowerCase();for(var m=0,q=g.length;m<q;m++){var p=g[m];if(p){l=p.parentNode;g[m]=l.nodeName.toLowerCase()===h?l:false}}}else{m=0;for(q=g.length;m<q;m++)if(p=g[m])g[m]=
l?p.parentNode:p.parentNode===h;l&&k.filter(h,g,true)}},"":function(g,h,l){var m=e++,q=d;if(typeof h==="string"&&!/\W/.test(h)){var p=h=h.toLowerCase();q=b}q("parentNode",h,m,g,p,l)},"~":function(g,h,l){var m=e++,q=d;if(typeof h==="string"&&!/\W/.test(h)){var p=h=h.toLowerCase();q=b}q("previousSibling",h,m,g,p,l)}},find:{ID:function(g,h,l){if(typeof h.getElementById!=="undefined"&&!l)return(g=h.getElementById(g[1]))?[g]:[]},NAME:function(g,h){if(typeof h.getElementsByName!=="undefined"){var l=[];
h=h.getElementsByName(g[1]);for(var m=0,q=h.length;m<q;m++)h[m].getAttribute("name")===g[1]&&l.push(h[m]);return l.length===0?null:l}},TAG:function(g,h){return h.getElementsByTagName(g[1])}},preFilter:{CLASS:function(g,h,l,m,q,p){g=" "+g[1].replace(/\\/g,"")+" ";if(p)return g;p=0;for(var v;(v=h[p])!=null;p++)if(v)if(q^(v.className&&(" "+v.className+" ").replace(/[\t\n]/g," ").indexOf(g)>=0))l||m.push(v);else if(l)h[p]=false;return false},ID:function(g){return g[1].replace(/\\/g,"")},TAG:function(g){return g[1].toLowerCase()},
CHILD:function(g){if(g[1]==="nth"){var h=/(-?)(\d*)n((?:\+|-)?\d*)/.exec(g[2]==="even"&&"2n"||g[2]==="odd"&&"2n+1"||!/\D/.test(g[2])&&"0n+"+g[2]||g[2]);g[2]=h[1]+(h[2]||1)-0;g[3]=h[3]-0}g[0]=e++;return g},ATTR:function(g,h,l,m,q,p){h=g[1].replace(/\\/g,"");if(!p&&n.attrMap[h])g[1]=n.attrMap[h];if(g[2]==="~=")g[4]=" "+g[4]+" ";return g},PSEUDO:function(g,h,l,m,q){if(g[1]==="not")if((f.exec(g[3])||"").length>1||/^\w/.test(g[3]))g[3]=k(g[3],null,null,h);else{g=k.filter(g[3],h,l,true^q);l||m.push.apply(m,
g);return false}else if(n.match.POS.test(g[0])||n.match.CHILD.test(g[0]))return true;return g},POS:function(g){g.unshift(true);return g}},filters:{enabled:function(g){return g.disabled===false&&g.type!=="hidden"},disabled:function(g){return g.disabled===true},checked:function(g){return g.checked===true},selected:function(g){return g.selected===true},parent:function(g){return!!g.firstChild},empty:function(g){return!g.firstChild},has:function(g,h,l){return!!k(l[3],g).length},header:function(g){return/h\d/i.test(g.nodeName)},
text:function(g){return"text"===g.type},radio:function(g){return"radio"===g.type},checkbox:function(g){return"checkbox"===g.type},file:function(g){return"file"===g.type},password:function(g){return"password"===g.type},submit:function(g){return"submit"===g.type},image:function(g){return"image"===g.type},reset:function(g){return"reset"===g.type},button:function(g){return"button"===g.type||g.nodeName.toLowerCase()==="button"},input:function(g){return/input|select|textarea|button/i.test(g.nodeName)}},
setFilters:{first:function(g,h){return h===0},last:function(g,h,l,m){return h===m.length-1},even:function(g,h){return h%2===0},odd:function(g,h){return h%2===1},lt:function(g,h,l){return h<l[3]-0},gt:function(g,h,l){return h>l[3]-0},nth:function(g,h,l){return l[3]-0===h},eq:function(g,h,l){return l[3]-0===h}},filter:{PSEUDO:function(g,h,l,m){var q=h[1],p=n.filters[q];if(p)return p(g,l,h,m);else if(q==="contains")return(g.textContent||g.innerText||a([g])||"").indexOf(h[3])>=0;else if(q==="not"){h=
h[3];l=0;for(m=h.length;l<m;l++)if(h[l]===g)return false;return true}else k.error("Syntax error, unrecognized expression: "+q)},CHILD:function(g,h){var l=h[1],m=g;switch(l){case "only":case "first":for(;m=m.previousSibling;)if(m.nodeType===1)return false;if(l==="first")return true;m=g;case "last":for(;m=m.nextSibling;)if(m.nodeType===1)return false;return true;case "nth":l=h[2];var q=h[3];if(l===1&&q===0)return true;h=h[0];var p=g.parentNode;if(p&&(p.sizcache!==h||!g.nodeIndex)){var v=0;for(m=p.firstChild;m;m=
m.nextSibling)if(m.nodeType===1)m.nodeIndex=++v;p.sizcache=h}g=g.nodeIndex-q;return l===0?g===0:g%l===0&&g/l>=0}},ID:function(g,h){return g.nodeType===1&&g.getAttribute("id")===h},TAG:function(g,h){return h==="*"&&g.nodeType===1||g.nodeName.toLowerCase()===h},CLASS:function(g,h){return(" "+(g.className||g.getAttribute("class"))+" ").indexOf(h)>-1},ATTR:function(g,h){var l=h[1];g=n.attrHandle[l]?n.attrHandle[l](g):g[l]!=null?g[l]:g.getAttribute(l);l=g+"";var m=h[2];h=h[4];return g==null?m==="!=":m===
"="?l===h:m==="*="?l.indexOf(h)>=0:m==="~="?(" "+l+" ").indexOf(h)>=0:!h?l&&g!==false:m==="!="?l!==h:m==="^="?l.indexOf(h)===0:m==="$="?l.substr(l.length-h.length)===h:m==="|="?l===h||l.substr(0,h.length+1)===h+"-":false},POS:function(g,h,l,m){var q=n.setFilters[h[2]];if(q)return q(g,l,h,m)}}},r=n.match.POS;for(var u in n.match){n.match[u]=new RegExp(n.match[u].source+/(?![^\[]*\])(?![^\(]*\))/.source);n.leftMatch[u]=new RegExp(/(^(?:.|\r|\n)*?)/.source+n.match[u].source.replace(/\\(\d+)/g,function(g,
h){return"\\"+(h-0+1)}))}var z=function(g,h){g=Array.prototype.slice.call(g,0);if(h){h.push.apply(h,g);return h}return g};try{Array.prototype.slice.call(s.documentElement.childNodes,0)}catch(C){z=function(g,h){h=h||[];if(j.call(g)==="[object Array]")Array.prototype.push.apply(h,g);else if(typeof g.length==="number")for(var l=0,m=g.length;l<m;l++)h.push(g[l]);else for(l=0;g[l];l++)h.push(g[l]);return h}}var B;if(s.documentElement.compareDocumentPosition)B=function(g,h){if(!g.compareDocumentPosition||
!h.compareDocumentPosition){if(g==h)i=true;return g.compareDocumentPosition?-1:1}g=g.compareDocumentPosition(h)&4?-1:g===h?0:1;if(g===0)i=true;return g};else if("sourceIndex"in s.documentElement)B=function(g,h){if(!g.sourceIndex||!h.sourceIndex){if(g==h)i=true;return g.sourceIndex?-1:1}g=g.sourceIndex-h.sourceIndex;if(g===0)i=true;return g};else if(s.createRange)B=function(g,h){if(!g.ownerDocument||!h.ownerDocument){if(g==h)i=true;return g.ownerDocument?-1:1}var l=g.ownerDocument.createRange(),m=
h.ownerDocument.createRange();l.setStart(g,0);l.setEnd(g,0);m.setStart(h,0);m.setEnd(h,0);g=l.compareBoundaryPoints(Range.START_TO_END,m);if(g===0)i=true;return g};(function(){var g=s.createElement("div"),h="script"+(new Date).getTime();g.innerHTML="<a name='"+h+"'/>";var l=s.documentElement;l.insertBefore(g,l.firstChild);if(s.getElementById(h)){n.find.ID=function(m,q,p){if(typeof q.getElementById!=="undefined"&&!p)return(q=q.getElementById(m[1]))?q.id===m[1]||typeof q.getAttributeNode!=="undefined"&&
q.getAttributeNode("id").nodeValue===m[1]?[q]:w:[]};n.filter.ID=function(m,q){var p=typeof m.getAttributeNode!=="undefined"&&m.getAttributeNode("id");return m.nodeType===1&&p&&p.nodeValue===q}}l.removeChild(g);l=g=null})();(function(){var g=s.createElement("div");g.appendChild(s.createComment(""));if(g.getElementsByTagName("*").length>0)n.find.TAG=function(h,l){l=l.getElementsByTagName(h[1]);if(h[1]==="*"){h=[];for(var m=0;l[m];m++)l[m].nodeType===1&&h.push(l[m]);l=h}return l};g.innerHTML="<a href='#'></a>";
if(g.firstChild&&typeof g.firstChild.getAttribute!=="undefined"&&g.firstChild.getAttribute("href")!=="#")n.attrHandle.href=function(h){return h.getAttribute("href",2)};g=null})();s.querySelectorAll&&function(){var g=k,h=s.createElement("div");h.innerHTML="<p class='TEST'></p>";if(!(h.querySelectorAll&&h.querySelectorAll(".TEST").length===0)){k=function(m,q,p,v){q=q||s;if(!v&&q.nodeType===9&&!x(q))try{return z(q.querySelectorAll(m),p)}catch(t){}return g(m,q,p,v)};for(var l in g)k[l]=g[l];h=null}}();
(function(){var g=s.createElement("div");g.innerHTML="<div class='test e'></div><div class='test'></div>";if(!(!g.getElementsByClassName||g.getElementsByClassName("e").length===0)){g.lastChild.className="e";if(g.getElementsByClassName("e").length!==1){n.order.splice(1,0,"CLASS");n.find.CLASS=function(h,l,m){if(typeof l.getElementsByClassName!=="undefined"&&!m)return l.getElementsByClassName(h[1])};g=null}}})();var E=s.compareDocumentPosition?function(g,h){return!!(g.compareDocumentPosition(h)&16)}:
function(g,h){return g!==h&&(g.contains?g.contains(h):true)},x=function(g){return(g=(g?g.ownerDocument||g:0).documentElement)?g.nodeName!=="HTML":false},ga=function(g,h){var l=[],m="",q;for(h=h.nodeType?[h]:h;q=n.match.PSEUDO.exec(g);){m+=q[0];g=g.replace(n.match.PSEUDO,"")}g=n.relative[g]?g+"*":g;q=0;for(var p=h.length;q<p;q++)k(g,h[q],l);return k.filter(m,l)};c.find=k;c.expr=k.selectors;c.expr[":"]=c.expr.filters;c.unique=k.uniqueSort;c.text=a;c.isXMLDoc=x;c.contains=E})();var eb=/Until$/,fb=/^(?:parents|prevUntil|prevAll)/,
gb=/,/;R=Array.prototype.slice;var Ia=function(a,b,d){if(c.isFunction(b))return c.grep(a,function(e,j){return!!b.call(e,j,e)===d});else if(b.nodeType)return c.grep(a,function(e){return e===b===d});else if(typeof b==="string"){var f=c.grep(a,function(e){return e.nodeType===1});if(Ua.test(b))return c.filter(b,f,!d);else b=c.filter(b,f)}return c.grep(a,function(e){return c.inArray(e,b)>=0===d})};c.fn.extend({find:function(a){for(var b=this.pushStack("","find",a),d=0,f=0,e=this.length;f<e;f++){d=b.length;
c.find(a,this[f],b);if(f>0)for(var j=d;j<b.length;j++)for(var i=0;i<d;i++)if(b[i]===b[j]){b.splice(j--,1);break}}return b},has:function(a){var b=c(a);return this.filter(function(){for(var d=0,f=b.length;d<f;d++)if(c.contains(this,b[d]))return true})},not:function(a){return this.pushStack(Ia(this,a,false),"not",a)},filter:function(a){return this.pushStack(Ia(this,a,true),"filter",a)},is:function(a){return!!a&&c.filter(a,this).length>0},closest:function(a,b){if(c.isArray(a)){var d=[],f=this[0],e,j=
{},i;if(f&&a.length){e=0;for(var o=a.length;e<o;e++){i=a[e];j[i]||(j[i]=c.expr.match.POS.test(i)?c(i,b||this.context):i)}for(;f&&f.ownerDocument&&f!==b;){for(i in j){e=j[i];if(e.jquery?e.index(f)>-1:c(f).is(e)){d.push({selector:i,elem:f});delete j[i]}}f=f.parentNode}}return d}var k=c.expr.match.POS.test(a)?c(a,b||this.context):null;return this.map(function(n,r){for(;r&&r.ownerDocument&&r!==b;){if(k?k.index(r)>-1:c(r).is(a))return r;r=r.parentNode}return null})},index:function(a){if(!a||typeof a===
"string")return c.inArray(this[0],a?c(a):this.parent().children());return c.inArray(a.jquery?a[0]:a,this)},add:function(a,b){a=typeof a==="string"?c(a,b||this.context):c.makeArray(a);b=c.merge(this.get(),a);return this.pushStack(qa(a[0])||qa(b[0])?b:c.unique(b))},andSelf:function(){return this.add(this.prevObject)}});c.each({parent:function(a){return(a=a.parentNode)&&a.nodeType!==11?a:null},parents:function(a){return c.dir(a,"parentNode")},parentsUntil:function(a,b,d){return c.dir(a,"parentNode",
d)},next:function(a){return c.nth(a,2,"nextSibling")},prev:function(a){return c.nth(a,2,"previousSibling")},nextAll:function(a){return c.dir(a,"nextSibling")},prevAll:function(a){return c.dir(a,"previousSibling")},nextUntil:function(a,b,d){return c.dir(a,"nextSibling",d)},prevUntil:function(a,b,d){return c.dir(a,"previousSibling",d)},siblings:function(a){return c.sibling(a.parentNode.firstChild,a)},children:function(a){return c.sibling(a.firstChild)},contents:function(a){return c.nodeName(a,"iframe")?
a.contentDocument||a.contentWindow.document:c.makeArray(a.childNodes)}},function(a,b){c.fn[a]=function(d,f){var e=c.map(this,b,d);eb.test(a)||(f=d);if(f&&typeof f==="string")e=c.filter(f,e);e=this.length>1?c.unique(e):e;if((this.length>1||gb.test(f))&&fb.test(a))e=e.reverse();return this.pushStack(e,a,R.call(arguments).join(","))}});c.extend({filter:function(a,b,d){if(d)a=":not("+a+")";return c.find.matches(a,b)},dir:function(a,b,d){var f=[];for(a=a[b];a&&a.nodeType!==9&&(d===w||a.nodeType!==1||!c(a).is(d));){a.nodeType===
1&&f.push(a);a=a[b]}return f},nth:function(a,b,d){b=b||1;for(var f=0;a;a=a[d])if(a.nodeType===1&&++f===b)break;return a},sibling:function(a,b){for(var d=[];a;a=a.nextSibling)a.nodeType===1&&a!==b&&d.push(a);return d}});var Ja=/ jQuery\d+="(?:\d+|null)"/g,V=/^\s+/,Ka=/(<([\w:]+)[^>]*?)\/>/g,hb=/^(?:area|br|col|embed|hr|img|input|link|meta|param)$/i,La=/<([\w:]+)/,ib=/<tbody/i,jb=/<|&#?\w+;/,ta=/<script|<object|<embed|<option|<style/i,ua=/checked\s*(?:[^=]|=\s*.checked.)/i,Ma=function(a,b,d){return hb.test(d)?
a:b+"></"+d+">"},F={option:[1,"<select multiple='multiple'>","</select>"],legend:[1,"<fieldset>","</fieldset>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],col:[2,"<table><tbody></tbody><colgroup>","</colgroup></table>"],area:[1,"<map>","</map>"],_default:[0,"",""]};F.optgroup=F.option;F.tbody=F.tfoot=F.colgroup=F.caption=F.thead;F.th=F.td;if(!c.support.htmlSerialize)F._default=[1,"div<div>","</div>"];c.fn.extend({text:function(a){if(c.isFunction(a))return this.each(function(b){var d=
c(this);d.text(a.call(this,b,d.text()))});if(typeof a!=="object"&&a!==w)return this.empty().append((this[0]&&this[0].ownerDocument||s).createTextNode(a));return c.text(this)},wrapAll:function(a){if(c.isFunction(a))return this.each(function(d){c(this).wrapAll(a.call(this,d))});if(this[0]){var b=c(a,this[0].ownerDocument).eq(0).clone(true);this[0].parentNode&&b.insertBefore(this[0]);b.map(function(){for(var d=this;d.firstChild&&d.firstChild.nodeType===1;)d=d.firstChild;return d}).append(this)}return this},
wrapInner:function(a){if(c.isFunction(a))return this.each(function(b){c(this).wrapInner(a.call(this,b))});return this.each(function(){var b=c(this),d=b.contents();d.length?d.wrapAll(a):b.append(a)})},wrap:function(a){return this.each(function(){c(this).wrapAll(a)})},unwrap:function(){return this.parent().each(function(){c.nodeName(this,"body")||c(this).replaceWith(this.childNodes)}).end()},append:function(){return this.domManip(arguments,true,function(a){this.nodeType===1&&this.appendChild(a)})},
prepend:function(){return this.domManip(arguments,true,function(a){this.nodeType===1&&this.insertBefore(a,this.firstChild)})},before:function(){if(this[0]&&this[0].parentNode)return this.domManip(arguments,false,function(b){this.parentNode.insertBefore(b,this)});else if(arguments.length){var a=c(arguments[0]);a.push.apply(a,this.toArray());return this.pushStack(a,"before",arguments)}},after:function(){if(this[0]&&this[0].parentNode)return this.domManip(arguments,false,function(b){this.parentNode.insertBefore(b,
this.nextSibling)});else if(arguments.length){var a=this.pushStack(this,"after",arguments);a.push.apply(a,c(arguments[0]).toArray());return a}},remove:function(a,b){for(var d=0,f;(f=this[d])!=null;d++)if(!a||c.filter(a,[f]).length){if(!b&&f.nodeType===1){c.cleanData(f.getElementsByTagName("*"));c.cleanData([f])}f.parentNode&&f.parentNode.removeChild(f)}return this},empty:function(){for(var a=0,b;(b=this[a])!=null;a++)for(b.nodeType===1&&c.cleanData(b.getElementsByTagName("*"));b.firstChild;)b.removeChild(b.firstChild);
return this},clone:function(a){var b=this.map(function(){if(!c.support.noCloneEvent&&!c.isXMLDoc(this)){var d=this.outerHTML,f=this.ownerDocument;if(!d){d=f.createElement("div");d.appendChild(this.cloneNode(true));d=d.innerHTML}return c.clean([d.replace(Ja,"").replace(/=([^="'>\s]+\/)>/g,'="$1">').replace(V,"")],f)[0]}else return this.cloneNode(true)});if(a===true){ra(this,b);ra(this.find("*"),b.find("*"))}return b},html:function(a){if(a===w)return this[0]&&this[0].nodeType===1?this[0].innerHTML.replace(Ja,
""):null;else if(typeof a==="string"&&!ta.test(a)&&(c.support.leadingWhitespace||!V.test(a))&&!F[(La.exec(a)||["",""])[1].toLowerCase()]){a=a.replace(Ka,Ma);try{for(var b=0,d=this.length;b<d;b++)if(this[b].nodeType===1){c.cleanData(this[b].getElementsByTagName("*"));this[b].innerHTML=a}}catch(f){this.empty().append(a)}}else c.isFunction(a)?this.each(function(e){var j=c(this),i=j.html();j.empty().append(function(){return a.call(this,e,i)})}):this.empty().append(a);return this},replaceWith:function(a){if(this[0]&&
this[0].parentNode){if(c.isFunction(a))return this.each(function(b){var d=c(this),f=d.html();d.replaceWith(a.call(this,b,f))});if(typeof a!=="string")a=c(a).detach();return this.each(function(){var b=this.nextSibling,d=this.parentNode;c(this).remove();b?c(b).before(a):c(d).append(a)})}else return this.pushStack(c(c.isFunction(a)?a():a),"replaceWith",a)},detach:function(a){return this.remove(a,true)},domManip:function(a,b,d){function f(u){return c.nodeName(u,"table")?u.getElementsByTagName("tbody")[0]||
u.appendChild(u.ownerDocument.createElement("tbody")):u}var e,j,i=a[0],o=[],k;if(!c.support.checkClone&&arguments.length===3&&typeof i==="string"&&ua.test(i))return this.each(function(){c(this).domManip(a,b,d,true)});if(c.isFunction(i))return this.each(function(u){var z=c(this);a[0]=i.call(this,u,b?z.html():w);z.domManip(a,b,d)});if(this[0]){e=i&&i.parentNode;e=c.support.parentNode&&e&&e.nodeType===11&&e.childNodes.length===this.length?{fragment:e}:sa(a,this,o);k=e.fragment;if(j=k.childNodes.length===
1?(k=k.firstChild):k.firstChild){b=b&&c.nodeName(j,"tr");for(var n=0,r=this.length;n<r;n++)d.call(b?f(this[n],j):this[n],n>0||e.cacheable||this.length>1?k.cloneNode(true):k)}o.length&&c.each(o,Qa)}return this}});c.fragments={};c.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(a,b){c.fn[a]=function(d){var f=[];d=c(d);var e=this.length===1&&this[0].parentNode;if(e&&e.nodeType===11&&e.childNodes.length===1&&d.length===1){d[b](this[0]);
return this}else{e=0;for(var j=d.length;e<j;e++){var i=(e>0?this.clone(true):this).get();c.fn[b].apply(c(d[e]),i);f=f.concat(i)}return this.pushStack(f,a,d.selector)}}});c.extend({clean:function(a,b,d,f){b=b||s;if(typeof b.createElement==="undefined")b=b.ownerDocument||b[0]&&b[0].ownerDocument||s;for(var e=[],j=0,i;(i=a[j])!=null;j++){if(typeof i==="number")i+="";if(i){if(typeof i==="string"&&!jb.test(i))i=b.createTextNode(i);else if(typeof i==="string"){i=i.replace(Ka,Ma);var o=(La.exec(i)||["",
""])[1].toLowerCase(),k=F[o]||F._default,n=k[0],r=b.createElement("div");for(r.innerHTML=k[1]+i+k[2];n--;)r=r.lastChild;if(!c.support.tbody){n=ib.test(i);o=o==="table"&&!n?r.firstChild&&r.firstChild.childNodes:k[1]==="<table>"&&!n?r.childNodes:[];for(k=o.length-1;k>=0;--k)c.nodeName(o[k],"tbody")&&!o[k].childNodes.length&&o[k].parentNode.removeChild(o[k])}!c.support.leadingWhitespace&&V.test(i)&&r.insertBefore(b.createTextNode(V.exec(i)[0]),r.firstChild);i=r.childNodes}if(i.nodeType)e.push(i);else e=
c.merge(e,i)}}if(d)for(j=0;e[j];j++)if(f&&c.nodeName(e[j],"script")&&(!e[j].type||e[j].type.toLowerCase()==="text/javascript"))f.push(e[j].parentNode?e[j].parentNode.removeChild(e[j]):e[j]);else{e[j].nodeType===1&&e.splice.apply(e,[j+1,0].concat(c.makeArray(e[j].getElementsByTagName("script"))));d.appendChild(e[j])}return e},cleanData:function(a){for(var b,d,f=c.cache,e=c.event.special,j=c.support.deleteExpando,i=0,o;(o=a[i])!=null;i++)if(d=o[c.expando]){b=f[d];if(b.events)for(var k in b.events)e[k]?
c.event.remove(o,k):Ca(o,k,b.handle);if(j)delete o[c.expando];else o.removeAttribute&&o.removeAttribute(c.expando);delete f[d]}}});var kb=/z-?index|font-?weight|opacity|zoom|line-?height/i,Na=/alpha\([^)]*\)/,Oa=/opacity=([^)]*)/,ha=/float/i,ia=/-([a-z])/ig,lb=/([A-Z])/g,mb=/^-?\d+(?:px)?$/i,nb=/^-?\d/,ob={position:"absolute",visibility:"hidden",display:"block"},pb=["Left","Right"],qb=["Top","Bottom"],rb=s.defaultView&&s.defaultView.getComputedStyle,Pa=c.support.cssFloat?"cssFloat":"styleFloat",ja=
function(a,b){return b.toUpperCase()};c.fn.css=function(a,b){return X(this,a,b,true,function(d,f,e){if(e===w)return c.curCSS(d,f);if(typeof e==="number"&&!kb.test(f))e+="px";c.style(d,f,e)})};c.extend({style:function(a,b,d){if(!a||a.nodeType===3||a.nodeType===8)return w;if((b==="width"||b==="height")&&parseFloat(d)<0)d=w;var f=a.style||a,e=d!==w;if(!c.support.opacity&&b==="opacity"){if(e){f.zoom=1;b=parseInt(d,10)+""==="NaN"?"":"alpha(opacity="+d*100+")";a=f.filter||c.curCSS(a,"filter")||"";f.filter=
Na.test(a)?a.replace(Na,b):b}return f.filter&&f.filter.indexOf("opacity=")>=0?parseFloat(Oa.exec(f.filter)[1])/100+"":""}if(ha.test(b))b=Pa;b=b.replace(ia,ja);if(e)f[b]=d;return f[b]},css:function(a,b,d,f){if(b==="width"||b==="height"){var e,j=b==="width"?pb:qb;function i(){e=b==="width"?a.offsetWidth:a.offsetHeight;f!=="border"&&c.each(j,function(){f||(e-=parseFloat(c.curCSS(a,"padding"+this,true))||0);if(f==="margin")e+=parseFloat(c.curCSS(a,"margin"+this,true))||0;else e-=parseFloat(c.curCSS(a,
"border"+this+"Width",true))||0})}a.offsetWidth!==0?i():c.swap(a,ob,i);return Math.max(0,Math.round(e))}return c.curCSS(a,b,d)},curCSS:function(a,b,d){var f,e=a.style;if(!c.support.opacity&&b==="opacity"&&a.currentStyle){f=Oa.test(a.currentStyle.filter||"")?parseFloat(RegExp.$1)/100+"":"";return f===""?"1":f}if(ha.test(b))b=Pa;if(!d&&e&&e[b])f=e[b];else if(rb){if(ha.test(b))b="float";b=b.replace(lb,"-$1").toLowerCase();e=a.ownerDocument.defaultView;if(!e)return null;if(a=e.getComputedStyle(a,null))f=
a.getPropertyValue(b);if(b==="opacity"&&f==="")f="1"}else if(a.currentStyle){d=b.replace(ia,ja);f=a.currentStyle[b]||a.currentStyle[d];if(!mb.test(f)&&nb.test(f)){b=e.left;var j=a.runtimeStyle.left;a.runtimeStyle.left=a.currentStyle.left;e.left=d==="fontSize"?"1em":f||0;f=e.pixelLeft+"px";e.left=b;a.runtimeStyle.left=j}}return f},swap:function(a,b,d){var f={};for(var e in b){f[e]=a.style[e];a.style[e]=b[e]}d.call(a);for(e in b)a.style[e]=f[e]}});if(c.expr&&c.expr.filters){c.expr.filters.hidden=function(a){var b=
a.offsetWidth,d=a.offsetHeight,f=a.nodeName.toLowerCase()==="tr";return b===0&&d===0&&!f?true:b>0&&d>0&&!f?false:c.curCSS(a,"display")==="none"};c.expr.filters.visible=function(a){return!c.expr.filters.hidden(a)}}var sb=J(),tb=/<script(.|\s)*?\/script>/gi,ub=/select|textarea/i,vb=/color|date|datetime|email|hidden|month|number|password|range|search|tel|text|time|url|week/i,N=/=\?(&|$)/,ka=/\?/,wb=/(\?|&)_=.*?(&|$)/,xb=/^(\w+:)?\/\/([^\/?#]+)/,yb=/%20/g,zb=c.fn.load;c.fn.extend({load:function(a,b,d){if(typeof a!==
"string")return zb.call(this,a);else if(!this.length)return this;var f=a.indexOf(" ");if(f>=0){var e=a.slice(f,a.length);a=a.slice(0,f)}f="GET";if(b)if(c.isFunction(b)){d=b;b=null}else if(typeof b==="object"){b=c.param(b,c.ajaxSettings.traditional);f="POST"}var j=this;c.ajax({url:a,type:f,dataType:"html",data:b,complete:function(i,o){if(o==="success"||o==="notmodified")j.html(e?c("<div />").append(i.responseText.replace(tb,"")).find(e):i.responseText);d&&j.each(d,[i.responseText,o,i])}});return this},
serialize:function(){return c.param(this.serializeArray())},serializeArray:function(){return this.map(function(){return this.elements?c.makeArray(this.elements):this}).filter(function(){return this.name&&!this.disabled&&(this.checked||ub.test(this.nodeName)||vb.test(this.type))}).map(function(a,b){a=c(this).val();return a==null?null:c.isArray(a)?c.map(a,function(d){return{name:b.name,value:d}}):{name:b.name,value:a}}).get()}});c.each("ajaxStart ajaxStop ajaxComplete ajaxError ajaxSuccess ajaxSend".split(" "),
function(a,b){c.fn[b]=function(d){return this.bind(b,d)}});c.extend({get:function(a,b,d,f){if(c.isFunction(b)){f=f||d;d=b;b=null}return c.ajax({type:"GET",url:a,data:b,success:d,dataType:f})},getScript:function(a,b){return c.get(a,null,b,"script")},getJSON:function(a,b,d){return c.get(a,b,d,"json")},post:function(a,b,d,f){if(c.isFunction(b)){f=f||d;d=b;b={}}return c.ajax({type:"POST",url:a,data:b,success:d,dataType:f})},ajaxSetup:function(a){c.extend(c.ajaxSettings,a)},ajaxSettings:{url:location.href,
global:true,type:"GET",contentType:"application/x-www-form-urlencoded",processData:true,async:true,xhr:A.XMLHttpRequest&&(A.location.protocol!=="file:"||!A.ActiveXObject)?function(){return new A.XMLHttpRequest}:function(){try{return new A.ActiveXObject("Microsoft.XMLHTTP")}catch(a){}},accepts:{xml:"application/xml, text/xml",html:"text/html",script:"text/javascript, application/javascript",json:"application/json, text/javascript",text:"text/plain",_default:"*/*"}},lastModified:{},etag:{},ajax:function(a){function b(){e.success&&
e.success.call(k,o,i,x);e.global&&f("ajaxSuccess",[x,e])}function d(){e.complete&&e.complete.call(k,x,i);e.global&&f("ajaxComplete",[x,e]);e.global&&!--c.active&&c.event.trigger("ajaxStop")}function f(q,p){(e.context?c(e.context):c.event).trigger(q,p)}var e=c.extend(true,{},c.ajaxSettings,a),j,i,o,k=a&&a.context||e,n=e.type.toUpperCase();if(e.data&&e.processData&&typeof e.data!=="string")e.data=c.param(e.data,e.traditional);if(e.dataType==="jsonp"){if(n==="GET")N.test(e.url)||(e.url+=(ka.test(e.url)?
"&":"?")+(e.jsonp||"callback")+"=?");else if(!e.data||!N.test(e.data))e.data=(e.data?e.data+"&":"")+(e.jsonp||"callback")+"=?";e.dataType="json"}if(e.dataType==="json"&&(e.data&&N.test(e.data)||N.test(e.url))){j=e.jsonpCallback||"jsonp"+sb++;if(e.data)e.data=(e.data+"").replace(N,"="+j+"$1");e.url=e.url.replace(N,"="+j+"$1");e.dataType="script";A[j]=A[j]||function(q){o=q;b();d();A[j]=w;try{delete A[j]}catch(p){}z&&z.removeChild(C)}}if(e.dataType==="script"&&e.cache===null)e.cache=false;if(e.cache===
false&&n==="GET"){var r=J(),u=e.url.replace(wb,"$1_="+r+"$2");e.url=u+(u===e.url?(ka.test(e.url)?"&":"?")+"_="+r:"")}if(e.data&&n==="GET")e.url+=(ka.test(e.url)?"&":"?")+e.data;e.global&&!c.active++&&c.event.trigger("ajaxStart");r=(r=xb.exec(e.url))&&(r[1]&&r[1]!==location.protocol||r[2]!==location.host);if(e.dataType==="script"&&n==="GET"&&r){var z=s.getElementsByTagName("head")[0]||s.documentElement,C=s.createElement("script");C.src=e.url;if(e.scriptCharset)C.charset=e.scriptCharset;if(!j){var B=
false;C.onload=C.onreadystatechange=function(){if(!B&&(!this.readyState||this.readyState==="loaded"||this.readyState==="complete")){B=true;b();d();C.onload=C.onreadystatechange=null;z&&C.parentNode&&z.removeChild(C)}}}z.insertBefore(C,z.firstChild);return w}var E=false,x=e.xhr();if(x){e.username?x.open(n,e.url,e.async,e.username,e.password):x.open(n,e.url,e.async);try{if(e.data||a&&a.contentType)x.setRequestHeader("Content-Type",e.contentType);if(e.ifModified){c.lastModified[e.url]&&x.setRequestHeader("If-Modified-Since",
c.lastModified[e.url]);c.etag[e.url]&&x.setRequestHeader("If-None-Match",c.etag[e.url])}r||x.setRequestHeader("X-Requested-With","XMLHttpRequest");x.setRequestHeader("Accept",e.dataType&&e.accepts[e.dataType]?e.accepts[e.dataType]+", */*":e.accepts._default)}catch(ga){}if(e.beforeSend&&e.beforeSend.call(k,x,e)===false){e.global&&!--c.active&&c.event.trigger("ajaxStop");x.abort();return false}e.global&&f("ajaxSend",[x,e]);var g=x.onreadystatechange=function(q){if(!x||x.readyState===0||q==="abort"){E||
d();E=true;if(x)x.onreadystatechange=c.noop}else if(!E&&x&&(x.readyState===4||q==="timeout")){E=true;x.onreadystatechange=c.noop;i=q==="timeout"?"timeout":!c.httpSuccess(x)?"error":e.ifModified&&c.httpNotModified(x,e.url)?"notmodified":"success";var p;if(i==="success")try{o=c.httpData(x,e.dataType,e)}catch(v){i="parsererror";p=v}if(i==="success"||i==="notmodified")j||b();else c.handleError(e,x,i,p);d();q==="timeout"&&x.abort();if(e.async)x=null}};try{var h=x.abort;x.abort=function(){x&&h.call(x);
g("abort")}}catch(l){}e.async&&e.timeout>0&&setTimeout(function(){x&&!E&&g("timeout")},e.timeout);try{x.send(n==="POST"||n==="PUT"||n==="DELETE"?e.data:null)}catch(m){c.handleError(e,x,null,m);d()}e.async||g();return x}},handleError:function(a,b,d,f){if(a.error)a.error.call(a.context||a,b,d,f);if(a.global)(a.context?c(a.context):c.event).trigger("ajaxError",[b,a,f])},active:0,httpSuccess:function(a){try{return!a.status&&location.protocol==="file:"||a.status>=200&&a.status<300||a.status===304||a.status===
1223||a.status===0}catch(b){}return false},httpNotModified:function(a,b){var d=a.getResponseHeader("Last-Modified"),f=a.getResponseHeader("Etag");if(d)c.lastModified[b]=d;if(f)c.etag[b]=f;return a.status===304||a.status===0},httpData:function(a,b,d){var f=a.getResponseHeader("content-type")||"",e=b==="xml"||!b&&f.indexOf("xml")>=0;a=e?a.responseXML:a.responseText;e&&a.documentElement.nodeName==="parsererror"&&c.error("parsererror");if(d&&d.dataFilter)a=d.dataFilter(a,b);if(typeof a==="string")if(b===
"json"||!b&&f.indexOf("json")>=0)a=c.parseJSON(a);else if(b==="script"||!b&&f.indexOf("javascript")>=0)c.globalEval(a);return a},param:function(a,b){function d(i,o){if(c.isArray(o))c.each(o,function(k,n){b||/\[\]$/.test(i)?f(i,n):d(i+"["+(typeof n==="object"||c.isArray(n)?k:"")+"]",n)});else!b&&o!=null&&typeof o==="object"?c.each(o,function(k,n){d(i+"["+k+"]",n)}):f(i,o)}function f(i,o){o=c.isFunction(o)?o():o;e[e.length]=encodeURIComponent(i)+"="+encodeURIComponent(o)}var e=[];if(b===w)b=c.ajaxSettings.traditional;
if(c.isArray(a)||a.jquery)c.each(a,function(){f(this.name,this.value)});else for(var j in a)d(j,a[j]);return e.join("&").replace(yb,"+")}});var la={},Ab=/toggle|show|hide/,Bb=/^([+-]=)?([\d+-.]+)(.*)$/,W,va=[["height","marginTop","marginBottom","paddingTop","paddingBottom"],["width","marginLeft","marginRight","paddingLeft","paddingRight"],["opacity"]];c.fn.extend({show:function(a,b){if(a||a===0)return this.animate(K("show",3),a,b);else{a=0;for(b=this.length;a<b;a++){var d=c.data(this[a],"olddisplay");
this[a].style.display=d||"";if(c.css(this[a],"display")==="none"){d=this[a].nodeName;var f;if(la[d])f=la[d];else{var e=c("<"+d+" />").appendTo("body");f=e.css("display");if(f==="none")f="block";e.remove();la[d]=f}c.data(this[a],"olddisplay",f)}}a=0;for(b=this.length;a<b;a++)this[a].style.display=c.data(this[a],"olddisplay")||"";return this}},hide:function(a,b){if(a||a===0)return this.animate(K("hide",3),a,b);else{a=0;for(b=this.length;a<b;a++){var d=c.data(this[a],"olddisplay");!d&&d!=="none"&&c.data(this[a],
"olddisplay",c.css(this[a],"display"))}a=0;for(b=this.length;a<b;a++)this[a].style.display="none";return this}},_toggle:c.fn.toggle,toggle:function(a,b){var d=typeof a==="boolean";if(c.isFunction(a)&&c.isFunction(b))this._toggle.apply(this,arguments);else a==null||d?this.each(function(){var f=d?a:c(this).is(":hidden");c(this)[f?"show":"hide"]()}):this.animate(K("toggle",3),a,b);return this},fadeTo:function(a,b,d){return this.filter(":hidden").css("opacity",0).show().end().animate({opacity:b},a,d)},
animate:function(a,b,d,f){var e=c.speed(b,d,f);if(c.isEmptyObject(a))return this.each(e.complete);return this[e.queue===false?"each":"queue"](function(){var j=c.extend({},e),i,o=this.nodeType===1&&c(this).is(":hidden"),k=this;for(i in a){var n=i.replace(ia,ja);if(i!==n){a[n]=a[i];delete a[i];i=n}if(a[i]==="hide"&&o||a[i]==="show"&&!o)return j.complete.call(this);if((i==="height"||i==="width")&&this.style){j.display=c.css(this,"display");j.overflow=this.style.overflow}if(c.isArray(a[i])){(j.specialEasing=
j.specialEasing||{})[i]=a[i][1];a[i]=a[i][0]}}if(j.overflow!=null)this.style.overflow="hidden";j.curAnim=c.extend({},a);c.each(a,function(r,u){var z=new c.fx(k,j,r);if(Ab.test(u))z[u==="toggle"?o?"show":"hide":u](a);else{var C=Bb.exec(u),B=z.cur(true)||0;if(C){u=parseFloat(C[2]);var E=C[3]||"px";if(E!=="px"){k.style[r]=(u||1)+E;B=(u||1)/z.cur(true)*B;k.style[r]=B+E}if(C[1])u=(C[1]==="-="?-1:1)*u+B;z.custom(B,u,E)}else z.custom(B,u,"")}});return true})},stop:function(a,b){var d=c.timers;a&&this.queue([]);
this.each(function(){for(var f=d.length-1;f>=0;f--)if(d[f].elem===this){b&&d[f](true);d.splice(f,1)}});b||this.dequeue();return this}});c.each({slideDown:K("show",1),slideUp:K("hide",1),slideToggle:K("toggle",1),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"}},function(a,b){c.fn[a]=function(d,f){return this.animate(b,d,f)}});c.extend({speed:function(a,b,d){var f=a&&typeof a==="object"?a:{complete:d||!d&&b||c.isFunction(a)&&a,duration:a,easing:d&&b||b&&!c.isFunction(b)&&b};f.duration=c.fx.off?0:typeof f.duration===
"number"?f.duration:c.fx.speeds[f.duration]||c.fx.speeds._default;f.old=f.complete;f.complete=function(){f.queue!==false&&c(this).dequeue();c.isFunction(f.old)&&f.old.call(this)};return f},easing:{linear:function(a,b,d,f){return d+f*a},swing:function(a,b,d,f){return(-Math.cos(a*Math.PI)/2+0.5)*f+d}},timers:[],fx:function(a,b,d){this.options=b;this.elem=a;this.prop=d;if(!b.orig)b.orig={}}});c.fx.prototype={update:function(){this.options.step&&this.options.step.call(this.elem,this.now,this);(c.fx.step[this.prop]||
c.fx.step._default)(this);if((this.prop==="height"||this.prop==="width")&&this.elem.style)this.elem.style.display="block"},cur:function(a){if(this.elem[this.prop]!=null&&(!this.elem.style||this.elem.style[this.prop]==null))return this.elem[this.prop];return(a=parseFloat(c.css(this.elem,this.prop,a)))&&a>-10000?a:parseFloat(c.curCSS(this.elem,this.prop))||0},custom:function(a,b,d){function f(j){return e.step(j)}this.startTime=J();this.start=a;this.end=b;this.unit=d||this.unit||"px";this.now=this.start;
this.pos=this.state=0;var e=this;f.elem=this.elem;if(f()&&c.timers.push(f)&&!W)W=setInterval(c.fx.tick,13)},show:function(){this.options.orig[this.prop]=c.style(this.elem,this.prop);this.options.show=true;this.custom(this.prop==="width"||this.prop==="height"?1:0,this.cur());c(this.elem).show()},hide:function(){this.options.orig[this.prop]=c.style(this.elem,this.prop);this.options.hide=true;this.custom(this.cur(),0)},step:function(a){var b=J(),d=true;if(a||b>=this.options.duration+this.startTime){this.now=
this.end;this.pos=this.state=1;this.update();this.options.curAnim[this.prop]=true;for(var f in this.options.curAnim)if(this.options.curAnim[f]!==true)d=false;if(d){if(this.options.display!=null){this.elem.style.overflow=this.options.overflow;a=c.data(this.elem,"olddisplay");this.elem.style.display=a?a:this.options.display;if(c.css(this.elem,"display")==="none")this.elem.style.display="block"}this.options.hide&&c(this.elem).hide();if(this.options.hide||this.options.show)for(var e in this.options.curAnim)c.style(this.elem,
e,this.options.orig[e]);this.options.complete.call(this.elem)}return false}else{e=b-this.startTime;this.state=e/this.options.duration;a=this.options.easing||(c.easing.swing?"swing":"linear");this.pos=c.easing[this.options.specialEasing&&this.options.specialEasing[this.prop]||a](this.state,e,0,1,this.options.duration);this.now=this.start+(this.end-this.start)*this.pos;this.update()}return true}};c.extend(c.fx,{tick:function(){for(var a=c.timers,b=0;b<a.length;b++)a[b]()||a.splice(b--,1);a.length||
c.fx.stop()},stop:function(){clearInterval(W);W=null},speeds:{slow:600,fast:200,_default:400},step:{opacity:function(a){c.style(a.elem,"opacity",a.now)},_default:function(a){if(a.elem.style&&a.elem.style[a.prop]!=null)a.elem.style[a.prop]=(a.prop==="width"||a.prop==="height"?Math.max(0,a.now):a.now)+a.unit;else a.elem[a.prop]=a.now}}});if(c.expr&&c.expr.filters)c.expr.filters.animated=function(a){return c.grep(c.timers,function(b){return a===b.elem}).length};c.fn.offset="getBoundingClientRect"in s.documentElement?
function(a){var b=this[0];if(a)return this.each(function(e){c.offset.setOffset(this,a,e)});if(!b||!b.ownerDocument)return null;if(b===b.ownerDocument.body)return c.offset.bodyOffset(b);var d=b.getBoundingClientRect(),f=b.ownerDocument;b=f.body;f=f.documentElement;return{top:d.top+(self.pageYOffset||c.support.boxModel&&f.scrollTop||b.scrollTop)-(f.clientTop||b.clientTop||0),left:d.left+(self.pageXOffset||c.support.boxModel&&f.scrollLeft||b.scrollLeft)-(f.clientLeft||b.clientLeft||0)}}:function(a){var b=
this[0];if(a)return this.each(function(r){c.offset.setOffset(this,a,r)});if(!b||!b.ownerDocument)return null;if(b===b.ownerDocument.body)return c.offset.bodyOffset(b);c.offset.initialize();var d=b.offsetParent,f=b,e=b.ownerDocument,j,i=e.documentElement,o=e.body;f=(e=e.defaultView)?e.getComputedStyle(b,null):b.currentStyle;for(var k=b.offsetTop,n=b.offsetLeft;(b=b.parentNode)&&b!==o&&b!==i;){if(c.offset.supportsFixedPosition&&f.position==="fixed")break;j=e?e.getComputedStyle(b,null):b.currentStyle;
k-=b.scrollTop;n-=b.scrollLeft;if(b===d){k+=b.offsetTop;n+=b.offsetLeft;if(c.offset.doesNotAddBorder&&!(c.offset.doesAddBorderForTableAndCells&&/^t(able|d|h)$/i.test(b.nodeName))){k+=parseFloat(j.borderTopWidth)||0;n+=parseFloat(j.borderLeftWidth)||0}f=d;d=b.offsetParent}if(c.offset.subtractsBorderForOverflowNotVisible&&j.overflow!=="visible"){k+=parseFloat(j.borderTopWidth)||0;n+=parseFloat(j.borderLeftWidth)||0}f=j}if(f.position==="relative"||f.position==="static"){k+=o.offsetTop;n+=o.offsetLeft}if(c.offset.supportsFixedPosition&&
f.position==="fixed"){k+=Math.max(i.scrollTop,o.scrollTop);n+=Math.max(i.scrollLeft,o.scrollLeft)}return{top:k,left:n}};c.offset={initialize:function(){var a=s.body,b=s.createElement("div"),d,f,e,j=parseFloat(c.curCSS(a,"marginTop",true))||0;c.extend(b.style,{position:"absolute",top:0,left:0,margin:0,border:0,width:"1px",height:"1px",visibility:"hidden"});b.innerHTML="<div style='position:absolute;top:0;left:0;margin:0;border:5px solid #000;padding:0;width:1px;height:1px;'><div></div></div><table style='position:absolute;top:0;left:0;margin:0;border:5px solid #000;padding:0;width:1px;height:1px;' cellpadding='0' cellspacing='0'><tr><td></td></tr></table>";
a.insertBefore(b,a.firstChild);d=b.firstChild;f=d.firstChild;e=d.nextSibling.firstChild.firstChild;this.doesNotAddBorder=f.offsetTop!==5;this.doesAddBorderForTableAndCells=e.offsetTop===5;f.style.position="fixed";f.style.top="20px";this.supportsFixedPosition=f.offsetTop===20||f.offsetTop===15;f.style.position=f.style.top="";d.style.overflow="hidden";d.style.position="relative";this.subtractsBorderForOverflowNotVisible=f.offsetTop===-5;this.doesNotIncludeMarginInBodyOffset=a.offsetTop!==j;a.removeChild(b);
c.offset.initialize=c.noop},bodyOffset:function(a){var b=a.offsetTop,d=a.offsetLeft;c.offset.initialize();if(c.offset.doesNotIncludeMarginInBodyOffset){b+=parseFloat(c.curCSS(a,"marginTop",true))||0;d+=parseFloat(c.curCSS(a,"marginLeft",true))||0}return{top:b,left:d}},setOffset:function(a,b,d){if(/static/.test(c.curCSS(a,"position")))a.style.position="relative";var f=c(a),e=f.offset(),j=parseInt(c.curCSS(a,"top",true),10)||0,i=parseInt(c.curCSS(a,"left",true),10)||0;if(c.isFunction(b))b=b.call(a,
d,e);d={top:b.top-e.top+j,left:b.left-e.left+i};"using"in b?b.using.call(a,d):f.css(d)}};c.fn.extend({position:function(){if(!this[0])return null;var a=this[0],b=this.offsetParent(),d=this.offset(),f=/^body|html$/i.test(b[0].nodeName)?{top:0,left:0}:b.offset();d.top-=parseFloat(c.curCSS(a,"marginTop",true))||0;d.left-=parseFloat(c.curCSS(a,"marginLeft",true))||0;f.top+=parseFloat(c.curCSS(b[0],"borderTopWidth",true))||0;f.left+=parseFloat(c.curCSS(b[0],"borderLeftWidth",true))||0;return{top:d.top-
f.top,left:d.left-f.left}},offsetParent:function(){return this.map(function(){for(var a=this.offsetParent||s.body;a&&!/^body|html$/i.test(a.nodeName)&&c.css(a,"position")==="static";)a=a.offsetParent;return a})}});c.each(["Left","Top"],function(a,b){var d="scroll"+b;c.fn[d]=function(f){var e=this[0],j;if(!e)return null;if(f!==w)return this.each(function(){if(j=wa(this))j.scrollTo(!a?f:c(j).scrollLeft(),a?f:c(j).scrollTop());else this[d]=f});else return(j=wa(e))?"pageXOffset"in j?j[a?"pageYOffset":
"pageXOffset"]:c.support.boxModel&&j.document.documentElement[d]||j.document.body[d]:e[d]}});c.each(["Height","Width"],function(a,b){var d=b.toLowerCase();c.fn["inner"+b]=function(){return this[0]?c.css(this[0],d,false,"padding"):null};c.fn["outer"+b]=function(f){return this[0]?c.css(this[0],d,false,f?"margin":"border"):null};c.fn[d]=function(f){var e=this[0];if(!e)return f==null?null:this;if(c.isFunction(f))return this.each(function(j){var i=c(this);i[d](f.call(this,j,i[d]()))});return"scrollTo"in
e&&e.document?e.document.compatMode==="CSS1Compat"&&e.document.documentElement["client"+b]||e.document.body["client"+b]:e.nodeType===9?Math.max(e.documentElement["client"+b],e.body["scroll"+b],e.documentElement["scroll"+b],e.body["offset"+b],e.documentElement["offset"+b]):f===w?c.css(e,d):this.css(d,typeof f==="string"?f:f+"px")}});A.jQuery=A.$=c})(window);

/*jquery-1.4.2.min.js*/







/*jquery.validator.js*/


var Common = {};
Common.trim = function(s){return s.replace(/(^\s*)|(\s*$)/g, "");};
var validator = {
    errinput: 'errinput',
    errmsg: 'errmsg',
    errcls: 'no',
    yescls: 'yes',
    errorTip: 'errorTip',
    errorInput: 'errorInput',
    validTip: 'validTip',
    require: /[^(^\s*)|(\s*$)]/,
    email: /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/,
    domain: /^\w+([-.]\w+)*\.\w+([-.]\w+)*$/,
    phone: /^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/,
    mobile: /^13\d{9}$|^15\d{9}$|^14\d{9}$|^18\d{9}$|^0\d{9,10}$/,
    url: /^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"\"])*$/,
    idcard: "this.isIdCard(value)",
    money: /^\d+(\.\d+)?$/,
    number: /^\d+$/,
    zip: /^\d{6}$/,
    ip: /^[\d\.]{7,15}$/,
    qq: /^[1-9]\d{4,9}$/,
    integer: /^[-\+]?\d+$/,
    double: /^[-\+]?\d+(\.\d+)?$/,
    english: /^[A-Za-z]+$/,
    chinese: /^[\u0391-\uFFE5]+$/,
    enandcn: /^[\w\u0391-\uFFE5][\w\u0391-\uFFE5\-\.]+$/,
    username: /^[\w]+[\-\.\w]{2,}$/i,
    unsafe: /[<>\?\#\$\*\&;\\\/\[\]\{\}=\(\)\.\^%,]/,
    mobilelist: /^(13\d{9}|15\d{9}|18\d{9}|0\d{9,10})$|^((13\d{9}|15\d{9}|18\d{9}|0\d{9,10}),)+(13\d{9}|15\d{9}|18\d{9}|0\d{9,10})$/,
    safestring: "this.isSafe(value)",
    filter: "this.doFilter(value)",
    limit: "this.checkLimit(value.length)",
    limitb: "this.checkLimit(this.LenB(value))",
    limitc: "this.checkLimit(value.length)",
    date: "this.isDate(value)",
    repeat: "this.checkRepeat(value)",
    range: "this.checkRange(value)",
    compare: "this.checkCompare(value)",
    custom: "this.Exec(value)",
    group: "this.mustChecked()",
    ajax: "this.doajax(errindex)",
    datetime: "this.isDateTime(value)",
    isIdCard: function (number) {
        var date, Ai;
        var verify = "10x98765432";
        var Wi = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2];
        var area = ['', '', '', '', '', '', '', '', '', '', '', '北京', '天津', '河北', '山西', '内蒙古', '', '', '', '', '', '辽宁', '吉林', '黑龙江', '', '', '', '', '', '', '', '上海', '江苏', '浙江', '安微', '福建', '江西', '山东', '', '', '', '河南', '湖北', '湖南', '广东', '广西', '海南', '', '', '', '重庆', '四川', '贵州', '云南', '西藏', '', '', '', '', '', '', '陕西', '甘肃', '青海', '宁夏', '新疆', '', '', '', '', '', '台湾', '', '', '', '', '', '', '', '', '', '香港', '澳门', '', '', '', '', '', '', '', '', '国外'];

        var re = number.match(/^(\d{2})\d{4}(((\d{2})(\d{2})(\d{2})(\d{3}))|((\d{4})(\d{2})(\d{2})(\d{3}[x\d])))$/i);
        if (re == null) return false;
        if (re[1] >= area.length || area[re[1]] == "") return false;
        if (re[2].length == 12) {
            Ai = number.substr(0, 17);
            date = [re[9], re[10], re[11]].join("-");
        } else {
            Ai = number.substr(0, 6) + "19" + number.substr(6);
            date = ["19" + re[4], re[5], re[6]].join("-");
        }
        if (!this.isDate(date, "ymd")) return false;
        var sum = 0;
        for (var i = 0; i <= 16; i++) {
            sum += Ai.charAt(i) * Wi[i];
        }
        Ai += verify.charAt(sum % 11);

        return (number.length == 15 || number.length == 18 && number == Ai);
    },

    isSafe: function (str) {
        return !this.unsafe.test(str);
    },

    isDate: function (op) {
        var formatString = this['element'].attr('format');
        formatString = formatString || "ymd";
        var m, year, month, day;
        switch (formatString) {
            case "ymd":
                m = op.match(new RegExp("^((\\d{4})|(\\d{2}))([-./])(\\d{1,2})\\4(\\d{1,2})$"));
                if (m == null) return false;
                day = m[6];
                month = m[5] * 1;
                year = (m[2].length == 4) ? m[2] : GetFullYear(parseInt(m[3], 10));
                break;
            case "dmy":
                m = op.match(new RegExp("^(\\d{1,2})([-./])(\\d{1,2})\\2((\\d{4})|(\\d{2}))$"));
                if (m == null) return false;
                day = m[1];
                month = m[3] * 1;
                year = (m[5].length == 4) ? m[5] : GetFullYear(parseInt(m[6], 10));
                break;
            default:
                break;
        }
        if (!parseInt(month)) return false;
        month = month == 0 ? 12 : month;
        var date = new Date(year, month - 1, day);
        return (typeof (date) == "object" && year == date.getFullYear() && month == (date.getMonth() + 1) && day == date.getDate());
        function GetFullYear(y) {
            return ((y < 30 ? "20" : "19") + y) | 0;
        }
    }, //end isDate
    isDateTime: function (op) {
        var filter = this['element'].attr('format') || 'ymdhms';
        var ok = true;
        try {
            var dt = op.split(" ");
            if (dt.length != 2) {
                return false;
            }


            var datereg = new RegExp("(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[3579][26])00))-02-29)");
            if (!datereg.test(dt[0])) {
                return false;
            }
            var timereg = new RegExp("^([0-1]?[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])$");
            if (!timereg.test(dt[1])) {
                return false;
            }
        }
        catch (e) {
            ok = false;
        }

        return ok;

    }, //end isDateTime
    doFilter: function (value) {
        var filter = this['element'].attr('accept');
        return new RegExp("^.+\.(?=EXT)(EXT)$".replace(/EXT/g, filter.split(/\s*,\s*/).join("|")), "gi").test(value);
    },

    checkLimit: function (len) {
        var minval = this['element'].attr('min') || Number.MIN_VALUE;
        var maxval = this['element'].attr('max') || Number.MAX_VALUE;
        return (minval <= len && len <= maxval);
    },

    LenB: function (str) {
        return str.replace(/[^\x00-\xff]/g, "**").length;
    },

    checkRepeat: function (value) {
        var to = this['element'].attr('to');
        return value == jQuery('input[name="' + to + '"]').eq(0).val();
    },

    checkRange: function (value) {
        value = value | 0;
        var minval = this['element'].attr('min') || Number.MIN_VALUE;
        var maxval = this['element'].attr('max') || Number.MAX_VALUE;
        return (minval <= value && value <= maxval);
    },

    checkCompare: function (value) {
        var compareid = this['element'].attr('compare');
        if (!value) return false;
        return jQuery('#' + compareid).attr('value') == value;
    },

    Exec: function (value) {
        var reg = this['element'].attr('regexp');
        return new RegExp(reg, "gi").test(value);
    },

    mustChecked: function () {
        var tagName = this['element'].attr('name');
        var f = this['element'].parents('form');
        var n = f.find('input[name="' + tagName + '"][checked]').length;
        var count = f.find('input[name="' + tagName + '"]').length;
        var minval = this['element'].attr('min') || 1;
        var maxval = this['element'].attr('max') || count;
        return (minval <= n && n <= maxval);
    },

    doajax: function (value) {
        var element = this['element'];
        var errindex = this['errindex'];
        var url = this['element'].attr('url');
        var vname = this['element'].attr('vname');
        var msgid = jQuery('#' + element.attr('msgid'));
        var val = this['element'].val();
        var str_errmsg = this['element'].attr('msg');
        var arr_errmsg;
        var errmsg;
        if (str_errmsg.indexOf('|') > -1) {
            arr_errmsg = str_errmsg.split('|');
            errmsg = arr_errmsg[errindex];
        } else {
            errmsg = '';
        }
        var type = this['element'].attr('type');
        var Charset = jQuery.browser.msie ? document.charset : document.characterSet;
        var methodtype = (Charset.toLowerCase() == 'utf-8') ? 'post' : 'get';
        var method = this['element'].attr('method') || methodtype;
        var name = this['element'].attr('name');
        if (url == "" || url == undefined) {
            alert('Please specify url');
            return false;
        } else if (vname == "" || vname == undefined) {
            alert('Please specify vname');
            return false;
        }
        if (url.indexOf('?') > -1) {
            url = url + "&n=" + vname + "&v=" + escape(val);
        } else {
            url = url + '?n=' + vname + "&v=" + escape(val);
        }
        var s = $.ajax({
            type: method,
            url: url,
            data: {},
            cache: false,
            async: false,
            success: function (data) {
                
                data = data.replace(/(^\s*)|(\s*$)/g, "");
                data = eval('(' + data + ')');
                if (data.error != 0) {
                    errmsg = errmsg == "" ? data.data.data : errmsg;
                    (type != 'checkbox' && type != 'radio' && element.addClass(validator.errorInput));
                    if (msgid.length > 0) { msgid.removeClass(validator.validTip).addClass(validator.errorTip).html(errmsg); } else { jQuery("<div class='" + validator.errorTip + "'></div>").html(errmsg).insertAfter(element); }
                    if (!errmsg) return true;
                    if (msgid.length > 0) { msgid.removeClass(validator.errorTip).addClass(validator.validTip).html(''); } else { jQuery("<div class='" + validator.validTip + "'></div>").insertAfter(element); }
                    return true;
                }
            }
        }).responseText;
        return (eval('(' + s.replace(/(^\s*)|(\s*$)/g, "") + ')').error == 0);
    }
};

// element
validator.showErr = function (element, errindex) {
    var str_errmsg = element.attr('msg') || '';
    var arr_errmsg = str_errmsg.split('|');
    var errmsg = arr_errmsg[errindex] ? arr_errmsg[errindex] : arr_errmsg[0];
    var msgid = jQuery('#' + element.attr('msgid'));
    var type = element.attr('type');
    (type != 'checkbox' && type != 'radio' && element.addClass(this['errorinput']));
    if (!errmsg) return false;
    if (msgid.length > 0) { msgid.removeClass(this['validTip']).addClass(this['errorTip']).html(errmsg); } else { element.parent('*').find('.' + this['errorTip']).remove(); jQuery("<div class='" + this['errorTip'] + "'></div>").html(errmsg).insertAfter(element); }
    $("div.errorTip").click(function () { $(this).css("display", "none"); });
    return false;
};

validator.removeErr =  function(element){
	element.removeClass(this['errorInput']);
	var msgid = jQuery('#'+element.attr('msgid'));
	if (msgid.length==0) {
		element.parent('*').find('span .'+this['errorTip']).remove();
		element.parent('*').find('span .'+this['validTip']).remove();
	}
};

validator.checkajax = function(element, datatype, errindex) {
	var value=jQuery.trim(element.val());
	this['element'] = element;
	this['errindex'] = errindex;
	validator.removeErr(element);
	return eval(this[datatype]);
};

validator.checkDatatype = function (element, datatype) {
    var value = jQuery.trim(element.val());
    this['element'] = element;
    validator.removeErr(element);
    switch (datatype) {
        case "idcard":
        case "date":
        case "repeat":
        case "range":
        case "compare":
        case "custom":
        case "group":
        case "limit":
        case "limitb":
        case "limitc":
        case "safestring":
        case "filter":
        case "datetime":
            return eval(this[datatype]);
            break;

        default:
            return this[datatype].test(value);
            break;
    }
};

validator.check = function (obj, submit) {

    var datatype = obj.attr('datatype');
    var lastvalue = obj.attr('lastvalue');
    var value = jQuery.trim(obj.val());

    if (typeof (datatype) == "undefined") return true;
    if (obj.attr('require') != "true" && value == "") {
        obj.removeClass(validator.errorInput);
        return true;
    }

    var isValid = true;
    var datatypes = datatype.split('|');
    /* add for not check ajax every blur */
    if (($.inArray('repeat', datatypes) == -1)
			&& ($.inArray('ajax', datatypes) != -1)
			&& (submit == true || (lastvalue && lastvalue == value))) {
        var e = obj.parent('*').find('.' + validator.errorTip);
        var v = obj.parent('*').find('.' + validator.validTip);
        if (e.length > 0 || v.length > 0) {
            return (v.length > 0);
        }
    }

    jQuery.each(datatypes, function (index, type) {
        if (typeof (validator[type]) == "undefined") {
            isValid = false;
            return false;
        }
        //ajax validate 
        if (type == 'ajax')
            return isValid = validator.checkajax(obj, type, index);

        if (validator.checkDatatype(obj, type) == false) {
            obj.addClass(validator.errorInput);
            validator.showErr(obj, index);
            return isValid = false;
        } else { // validate success
            validator.showErr(obj, index);
            obj.removeClass(validator.errorInput);
            var msgid = jQuery('#' + obj.attr('msgid'));
            if (msgid.length > 0) { msgid.removeClass(validator.errorTip).addClass(validator.validTip).html(''); } else { obj.parent('*').find('.' + validator.errorTip + ',.' + validator.validTip).remove(); }
        }
    });
    obj.attr('lastvalue', value);
    return isValid;
};
  
jQuery.fn.validateForm = function(no, form) {
	var isValid = true;
	var errIndex= new Array();
	var n=0;
	var emsg = '';
	var elements = jQuery(form).find(':input[require]');
	elements.each(function(i){
						
		if ( false==validator.check(jQuery(this),true) ) {
			var m = jQuery(this).parent('*').find('.'+validator.errorTip).html();
			if (m) { emsg += (emsg=='') ? m : '\n'+m; }
			isValid  = false;
			errIndex[n++]=i;
		};
	});

	if(isValid==false){
		elements.eq(errIndex[0]).focus().select();
		return false;
	}
	return true;
};

jQuery.fn.checkInput = function (jinput) {
    var elements = jQuery(jinput);
    if (elements.attr("datatype")) {
        elements.blur(function () {
            return validator.check(elements);
        });
    }
};


jQuery.fn.checkForm = function (btn) {
    var jsubmit = jQuery(btn);
    var group = jsubmit.attr("group");
    jsubmit.click(function () {

        var ok = true;
        if (group == null) {
            var inputs = jQuery("input[group='" + group + "'][datatype][type!='radio']");
            for (i = 0; i < inputs.length; i++) {
                var result = validator.check(inputs.eq(i));
                if (!result) {
                    inputs.eq(i).focus();
                    return false;
                }
            }
            inputs = jQuery("input[group='" + group + "'][datatype][type='radio']");
            if (inputs.length > 0) {
                var radioname = "";
                for (var i = 0; i < inputs.length; i++) {
                    if (radioname.indexOf(inputs.eq(i).attr("name")) < 0)
                        radioname = radioname + "," + inputs.eq(i).attr("name");
                }
                if (radioname.length > 0) {
                    radioname = radioname.substr(1);
                    var namearr = radioname.split(',');
                    for (var j = 0; j < namearr.length; j++) {
                        var radios = jQuery("input:checked[group='" + group + "'][datatype][name='" + namearr[j] + "']");
                        if (radios.length == 0) {
                            radios = jQuery("input:[group='" + group + "'][datatype][name='" + namearr[j] + "']");
                            radios.addClass("errorinput");
                            radios.eq(0).focus();
                            ok = false;
                        }
                        else {
                            jQuery("input:[group='" + group + "'][datatype][name='" + namearr[j] + "']").removeClass("errorinput");
                        }
                    }
                }
            }
            //errorinput


            inputs = jQuery("select[group='" + group + "'][datatype]");
            for (i = 0; i < inputs.length; i++) {
                var result = validator.check(inputs.eq(i));
                if (!result) {
                    inputs.eq(i).focus();
                    ok = false;
                }
            }
            inputs = jQuery("textarea");
            for (i = 0; i < inputs.length; i++) {
                var result = validator.check(inputs.eq(i));
                if (!result) {
                    inputs.eq(i).focus();
                    return false;
                }
            }

        }
        else {

            var inputs = jQuery("input[group='" + group + "'][datatype][type!='radio']");
            for (i = 0; i < inputs.length; i++) {
                var result = validator.check(inputs.eq(i));
                if (!result) {
                    inputs.eq(i).focus();
                    ok = false;
                }
            }

            inputs = jQuery("input[group='" + group + "'][datatype][type='radio']");
            if (inputs.length > 0) {
                var radioname = "";
                for (var i = 0; i < inputs.length; i++) {
                    if (radioname.indexOf(inputs.eq(i).attr("name")) < 0)
                        radioname = radioname + "," + inputs.eq(i).attr("name");
                }
                if (radioname.length > 0) {
                    radioname = radioname.substr(1);
                    var namearr = radioname.split(',');
                    for (var j = 0; j < namearr.length; j++) {
                        var radios = jQuery("input:checked[group='" + group + "'][datatype][name='" + namearr[j] + "']");
                        if (radios.length == 0) {
                            radios = jQuery("input:[group='" + group + "'][datatype][name='" + namearr[j] + "']");
                            radios.addClass("errorinput");
                            radios.eq(0).focus();
                            var msgid = radios.eq(0).attr("msgid");
                            if (msgid != null) 
                            {jQuery("#" + msgid).html(radios.eq(0).attr("msg"));
                            jQuery("#" + msgid).addClass("errorTip");
                            }
                            ok = false;
                        }
                        else {
                            jQuery("input:[group='" + group + "'][datatype][name='" + namearr[j] + "']").removeClass("errorinput");
                            var msgid = radios.eq(0).attr("msgid");
                            if (msgid != null) {
                                jQuery("#" + msgid).html("");
                                jQuery("#" + msgid).removeClass("errorTip");
                            }
                        }
                    }
                }
            }
            //errorinput

            inputs = jQuery("select[group='" + group + "'][datatype]");
            for (i = 0; i < inputs.length; i++) {
                var result = validator.check(inputs.eq(i));
                if (!result) {
                    inputs.eq(i).focus();
                    ok = false;
                }
            }
            inputs = jQuery("textarea[group='" + group + "']");
            for (i = 0; i < inputs.length; i++) {
                var result = validator.check(inputs.eq(i));
                if (!result) {
                    inputs.eq(i).focus();
                    return false;
                }
            }
        }
        var action = jsubmit.attr("action");
        jQuery("#buttontype").attr("value", jsubmit.attr("value"));
        if (action != "undefined" && ok)
            jQuery("form").attr("action", action);
        return ok;
    });

};





/*jquery.validator.js*/






/*jquery.timers.js*/

jQuery.fn.extend({
	everyTime: function(interval, label, fn, times) {
		return this.each(function() {
			jQuery.timer.add(this, interval, label, fn, times);
		});
	},
	oneTime: function(interval, label, fn) {
		return this.each(function() {
			jQuery.timer.add(this, interval, label, fn, 1);
		});
	},
	stopTime: function(label, fn) {
		return this.each(function() {
			jQuery.timer.remove(this, label, fn);
		});
	}
});

jQuery.extend({
	timer: {
		global: [],
		guid: 1,
		dataKey: "jQuery.timer",
		regex: /^([0-9]+(?:\.[0-9]*)?)\s*(.*s)?$/,
		powers: {
			// Yeah this is major overkill...
			'ms': 1,
			'cs': 10,
			'ds': 100,
			's': 1000,
			'das': 10000,
			'hs': 100000,
			'ks': 1000000
		},
		timeParse: function(value) {
			if (value == undefined || value == null)
				return null;
			var result = this.regex.exec(jQuery.trim(value.toString()));
			if (result[2]) {
				var num = parseFloat(result[1]);
				var mult = this.powers[result[2]] || 1;
				return num * mult;
			} else {
				return value;
			}
		},
		add: function(element, interval, label, fn, times) {
			var counter = 0;
			
			if (jQuery.isFunction(label)) {
				if (!times) 
					times = fn;
				fn = label;
				label = interval;
			}
			
			interval = jQuery.timer.timeParse(interval);

			if (typeof interval != 'number' || isNaN(interval) || interval < 0)
				return;

			if (typeof times != 'number' || isNaN(times) || times < 0) 
				times = 0;
			
			times = times || 0;
			
			var timers = jQuery.data(element, this.dataKey) || jQuery.data(element, this.dataKey, {});
			
			if (!timers[label])
				timers[label] = {};
			
			fn.timerID = fn.timerID || this.guid++;
			
			var handler = function() {
				if ((++counter > times && times !== 0) || fn.call(element, counter) === false)
					jQuery.timer.remove(element, label, fn);
			};
			
			handler.timerID = fn.timerID;
			
			if (!timers[label][fn.timerID])
				timers[label][fn.timerID] = window.setInterval(handler,interval);
			
			this.global.push( element );
			
		},
		remove: function(element, label, fn) {
			var timers = jQuery.data(element, this.dataKey), ret;
			
			if ( timers ) {
				
				if (!label) {
					for ( label in timers )
						this.remove(element, label, fn);
				} else if ( timers[label] ) {
					if ( fn ) {
						if ( fn.timerID ) {
							window.clearInterval(timers[label][fn.timerID]);
							delete timers[label][fn.timerID];
						}
					} else {
						for ( var fn in timers[label] ) {
							window.clearInterval(timers[label][fn]);
							delete timers[label][fn];
						}
					}
					
					for ( ret in timers[label] ) break;
					if ( !ret ) {
						ret = null;
						delete timers[label];
					}
				}
				
				for ( ret in timers ) break;
				if ( !ret ) 
					jQuery.removeData(element, this.dataKey);
			}
		}
	}
});

jQuery(window).bind("unload", function() {
	jQuery.each(jQuery.timer.global, function(index, item) {
		jQuery.timer.remove(item);
	});
});



/*jquery.timers.js*/






/*jquery.form.js*/



/*jquery.form.js*/






/*application.js*/

var X = {}; 
X.hook = function() {
    var pre_init_str = 'x_init_hook_';
    for ( var h in window ) {
        if ( 0 != h.indexOf(pre_init_str) )
            continue;
        var func = window[h];
        if ( typeof func == 'function' ) {
            try { func(); }catch(e){}
        }       
    }
};

X.get = function(u) { return X.ajax(u, 'GET'); };
X.post = function(u) { return X.ajax(u, 'POST'); };
X.ajax = function (u, method) {
	if(u.indexOf('?')>0)
		u=u+'&asdht='+Math.random();
	else
		u=u+'?asdht='+Math.random();
    jQuery.ajax({
        url: u,
        dataType: "json",
        success: X.json
    });
    return false;
};

X.json = function (r) {
    if (r != null) {
        var type = r['data']['type'];
        var data = r['data']['data'];
        if (type == 'alert') {
            alert(data);
        } else if (type == 'eval') {
            eval(data);
        } else if (type == 'refresh') {
            window.location.reload();
        } else if (type == 'updater') {
            var id = data['id'];
            var inner = data['html'];
            jQuery('#' + id).html(inner);
        } else if (type == 'dialog') {
            X.boxShow(data, true);
        } else if (type == 'showdialog') {
            X.box(data);
        } else if (type == 'mix') {
            for (var x in data) {
                r['data'] = data[x];
                X.json(r);
            }
        }
    }
};

X.box = function () {
    var box = jQuery('#box');
   // alert(box);
}

X.getXY = function() {
	var x,y;
	if(document.body.scrollTop){
		x = document.body.scrollLeft;
		y = document.body.scrollTop;
	}
	else{
		x = document.documentElement.scrollLeft;
		y = document.documentElement.scrollTop;
	}
	return {x:x,y:y};
};

X.boxMask = function(display)
{
    var height = jQuery('body').height() + 'px';
    var width = jQuery(window).width() + 'px';
    jQuery('#pagemasker').css({'position':'absolute', 'z-index':'3000', 'width':width, 'height':height, 'filter':'alpha(opacity=0.5)', 'opacity':0.5, 'top':0, 'left':0, 'background':'#CCC', 'display':display});
	jQuery('#dialog').css('display', display);
};

X.boxShow = function(innerHTML, mask)
{
    var dialog = jQuery('#dialog');
    dialog.html(innerHTML);

    if (mask) { X.boxMask('block'); }
    var ew = dialog.get(0).scrollWidth;
    var ww = jQuery(window).width();
    var lt = (ww/2 - ew/2) + 'px';
	var wh = jQuery(window).height();
	var xy = X.getXY();

	var tp = (wh*0.15 + xy.y) + 'px';

    dialog.css('background-color', '#FFF');
    dialog.css('left',lt);
    dialog.css('top', tp);
    dialog.css('z-index', 9999);
    dialog.css('display', 'block');

    return false;
};

X.boxClose = function()
{
    jQuery('#dialog').html('').css('z-index', -9999);
    X.boxMask('none');
    return false;
};

X.location = function(url){
    jQuery('#ifra_show').attr({src:url});
};

jQuery(document).ready(X.hook);



/*application.js*/



/*customize.js*/

var webroot = webroot || '';
var LOGINUID = LOGINUID || 0;
var outtime = 1000;

window.x_init_hook_validator = function () {
    jQuery('input.validator').each(function () { jQuery.fn.checkForm(this); });
    jQuery('input').each(function () { jQuery.fn.checkInput(this); });
    jQuery('a.needlogin').click(X.misc.needlogin);
    jQuery("textarea[maxlen]").keypress(function () {
        var len = jQuery(this).val().length;
        var mxlen = jQuery(this).attr("maxlen");
        if (len > mxlen) {
            jQuery(this).val(jQuery(this).val().substring(0, mxlen));
        }
    });
    jQuery("a[ask][class!='ajaxlink']").click(function () {
        return window.confirm(jQuery(this).attr("ask"));
    });
    jQuery("input[ask]").click(function () {
        return window.confirm(jQuery(this).attr("ask"));
    });
    if (totw) StranBody(null);
};

window.x_init_hook_dealimage = function () {
    var teamside = jQuery('#team_partner_side_0').size() > 0;
    var m = teamside ? 600 : 680;
    if (teamside) {
        jQuery('#team_main_side').css('width', '480px');
        jQuery('.side #side-business img').each(function () { X.misc.scaleimage(this, m); });
    } else {
        jQuery('.side #side-business img').each(function () {
            X.misc.scaleimage(this, 208);
        });
    }
    jQuery('#deal-stuff1 img').each(function () { X.misc.scaleimage(this, m); });
    jQuery('div.sbox-content img').each(function () { X.misc.scaleimage(this, 208); });

    jQuery('div[zoom_img_width]').each(function () {

        var width = parseInt(jQuery(this).attr("zoom_img_width"));
        jQuery(this).find("img").each(function () {
            $(this).attr("w", width);
            X.misc.scaleimage(this, width);
        });
    });


    jQuery('img[w]').each(function () {
        try {
            var w = parseInt(jQuery(this).attr("w"));
            var width = jQuery(this).width();
            if (width > w)
                jQuery(this).css("width", w);
        }
        catch (e) { }
    });
};
window.x_init_hook_myaccount = function() {
	var ma = jQuery('#myaccount');
	var mm = jQuery('#myaccount-menu');
	ma.hover(function(){ mm.show(); ma.toggleClass('hover', true); },function(){ var menuhide = function(){ mm.hide(); ma.toggleClass('hover', false); }; menuout=setTimeout(menuhide,100); });
	mm.hover(function(){ clearTimeout(menuout);},function(){ jQuery(this).hide(); ma.toggleClass('hover', false); });
};
window.x_init_hook_click = function () {
    jQuery('#guides-city-change').click(function () {
        return !jQuery('#guides-city-list').toggle();
    });
    jQuery('#sysmsg-guide-close').click(function () {
        jQuery('#sysmsg-guide').remove();
        return !X.get(webroot + 'ajax/newbie.aspx');
    });
    jQuery('#sysmsg-error span.close').click(function () {
        return !jQuery('#sysmsg-error').remove();
    });
    jQuery('#sysmsg-success span.close').click(function () {
        return !jQuery('#sysmsg-success').remove();
    });
    jQuery('#deal-share-im').click(function () {
        return !jQuery('#deal-share-im-c').toggle();
    });
    jQuery('a.ajaxlink').click(function () {
        if (jQuery(this).attr('no') == 'yes')
            return false;
        var link = jQuery(this).attr('href');
        var ask = jQuery(this).attr('ask');
        if (ask) {
            if (!confirm(ask)) {
                return false;
            }
            
        } else if (ask && !confirm(ask)) {
            return false;
        }
        X.get(link);
        return false;
    });

    jQuery('#share-copy-text').click(function () { jQuery(this).select(); });
    jQuery('#share-copy-button').click(function () {
        X.misc.copyToCB('share-copy-text');
    });
    jQuery('#verify-coupon-id').click(function () {
        X.get(webroot + 'ajax/coupon.aspx?action=dialog');
    });
    jQuery('#biz-verify-coupon-id').click(function () {
        X.get(webroot + 'ajax/coupon.aspx?action=bizdialog');
    });
    jQuery('input[xtip$="."]').each(X.misc.inputblur);
    jQuery('input[xtip$="."]').focus(X.misc.inputclick);
    jQuery('input[xtip$="."]').blur(X.misc.inputblur);
};

window.x_init_hook_imagerotate = function () {


    if (jQuery("div[imglist='team_images']").size() == 0) {

        var imgListCurr = 0;
        var imgListCount = jQuery('#img_list a').size();
        if (imgListCount < 2) return;
        var imagesRun = function () { var imgListNext = imgListCurr + 1; if (imgListCurr == imgListCount - 1) imgListNext = 0; imagesPlay(imgListNext); imgListCurr++; if (imgListCurr > imgListCount - 1) { imgListCurr = 0; imgListNext = imgListCurr + 1; } };
        jQuery('#team_images').everyTime(3000, 'imagerotate', imagesRun);
        jQuery('#team_images li,#img_list a').hover(function () { jQuery('#team_images').stopTime('imagerotate'); }, function () { jQuery('#team_images').everyTime(3000, 'imagerotate', imagesRun); });
        jQuery('#img_list a').click(function () { var index = jQuery('#img_list a').index(this); if (imgListCurr != index) { imagesPlay(index); imgListCurr = index; }; return false; });
        var imagesPlay = function (next) { jQuery('#team_images li').eq(imgListCurr).css({ 'opacity': '0.5' }).animate({ 'left': '-440px', 'opacity': '1' }, 'slow', function () { jQuery(this).css({ 'left': '440px' }); }).end().eq(next).animate({ 'left': '0px', 'opacity': '1' }, 'slow', function () { jQuery('#img_list a').siblings('a').removeClass('active').end().eq(next).addClass('active'); }); };

    }
    else {

        var imageloop = 1;
        jQuery("div[imglist='team_images']").each(function () {

            var o = jQuery(this);
            var imgListCurr = 0;
            var imgListCount = jQuery(o).find("[img='img_list'] a").size();

            if (imgListCount < 2) return;

            var imagesRun = function () {
                var imgListNext = imgListCurr + 1; 
            if (imgListCurr == imgListCount - 1) imgListNext = 0; imagesPlay(imgListNext,jQuery(this)); imgListCurr++; if (imgListCurr > imgListCount - 1) { imgListCurr = 0; imgListNext = imgListCurr + 1; } };

            jQuery(o).everyTime(3000, 'imagerotate' + imageloop, imagesRun);
            jQuery(o).find("li a").hover(function () { jQuery(o).stopTime('imagerotate' + imageloop); }, function () { jQuery(o).everyTime(3000, 'imagerotate' + imageloop, imagesRun); });
            jQuery(o).find("div[img='img_list'] a").click(function () {
                var index = jQuery(o).find("div[img='img_list'] a").index(this);
                if (imgListCurr != index) {
                    imagesPlay(index,jQuery(o));
                    imgListCurr = index; 
             }; return false; });
            var imagesPlay = function (next,obj) {
                jQuery(obj).find("li").eq(imgListCurr).css({ 'opacity': '0.5' }).animate({ 'left': '-440px', 'opacity': '1' }, 'slow', function () {
                    jQuery(this).css({ 'left': '440px' });
                }).end().eq(next).animate({ 'left': '0px', 'opacity': '1' }, 'slow',
            function () {
                jQuery(obj).find("div[img='img_list'] a").siblings('a').removeClass('active').end().eq(next).addClass('active');
            });
            };
            imageloop = imageloop + 1;


        });
    }
};

window.x_init_hook_clock = function () {
    if (jQuery("div.deal-timeleft").length == 1 && jQuery("div[num]").length == 0) {
        var a = parseInt(jQuery('div.deal-timeleft').attr('diff'));
        if (!a > 0) return;
        var b = (new Date()).getTime();
        var e = function () {
            var c = (new Date()).getTime();
            var ls = a + b - c;
            if (ls > 0) {
                var ld = parseInt(ls / 86400000); ls = ls % 86400000;
                var lh = parseInt(ls / 3600000); ls = ls % 3600000;
                var lm = parseInt(ls / 60000); ls = ls % 60000;
                var ls = (ls % 60000 / 1000).toFixed(1);

                if (ld > 0) {
                    var html = '<span>' + ld + '</span>天<span>' + lh + '</span>时<span>' + lm + '</span>分<span>' + ls + '</span>秒';
                } else {
                    var html = '<span>' + lh + '</span>时<span>' + lm + '</span>分<span>' + ls + '</span>秒';
                }
                jQuery('ul#counter').html(html);
            } else {
                jQuery("ul#counter").stopTime('counter');
                jQuery('ul#counter').html('end');
                window.location.reload();
            }
        };
        jQuery("ul#counter").everyTime(100, 'counter', e);
    }
    else {
        jQuery("div.deal-timeleft").each(function () {
            var a = parseInt(jQuery(this).attr('diff'));
            var numid = jQuery(this).attr("num");
            if (!a > 0) return;
            var b = (new Date()).getTime();
            var e = function () {
                var c = (new Date()).getTime();
                var ls = a + b - c;
                if (ls > 0) {
                    var ld = parseInt(ls / 86400000); ls = ls % 86400000;
                    var lh = parseInt(ls / 3600000); ls = ls % 3600000;
                    var lm = parseInt(ls / 60000);
                    var ls = (ls % 60000 / 1000).toFixed(1);
                    if (ld > 0) {
                        var html = '<span>' + ld + '</span>天<span>' + lh + '</span>时<span>' + lm + '</span>分<span>' + ls + '</span>秒';
                    } else {
                        var html = '<span>' + lh + '</span>时<span>' + lm + '</span>分<span>' + ls + '</span>秒';
                    }
                    jQuery('#counter' + numid).html(html);
                } else {
                    jQuery('#counter' + numid).stopTime('counter' + numid);
                    jQuery('#counter' + numid).html('end');
                    window.location.reload();
                }

            };
            var obj = jQuery('#counter' + numid);
            jQuery('#counter' + numid).everyTime(100, 'counter' + numid, e);
        });

    }




};


window.x_init_hook_team = function () {
    jQuery('#deal-buy-quantity-input').bind("keyup", function () {
        var n = parseInt(jQuery(this).attr('value'), 10);
        var per = parseInt(jQuery('#deal-per-number').attr('value'), 10);
        var minval = jQuery(this).attr("minval");
        if (n > per && per > 0) { n = per; }
        if (n < minval && minval > 0) { n = minval; }
        n = isNaN(n) ? '' : n; jQuery(this).attr('value', n);
        if (isNaN(n)) {
            if (n < 1) {
                n = 1;
                jQuery(this).attr('value', "1")
            }
        }
        var p = parseFloat(jQuery('#deal-buy-price').html(), 10);
        p = isNaN(p) ? 0 : p; n = isNaN(n) ? 0 : n; var t = n * p;
        jQuery('#deal-buy-total').html(t.toFixed(2));
        X.team.dealbuy_farefree(n);
        X.team.dealbuy_totalprice();
    });

    jQuery('#deal-buy-quantity-input').bind("blur", function () {
        var n = parseInt(jQuery(this).attr('value'), 10);
        var per = parseInt(jQuery('#deal-per-number').attr('value'), 10);
        if (n > per && per > 0) { n = per; }
        n = isNaN(n) ? '' : n; jQuery(this).attr('value', n);
        if (n < 1) {
            n = 1;
            jQuery(this).attr('value', "1")
        }
        var p = parseFloat(jQuery('#deal-buy-price').html(), 10);
        p = isNaN(p) ? 0 : p; n = isNaN(n) ? 0 : n; var t = n * p;
        jQuery('#deal-buy-total').html(t.toFixed(2));
        X.team.dealbuy_farefree(n);
        X.team.dealbuy_totalprice();
    });

};


/* X.misc Zone */
X.misc = {};
X.misc.copyToCB = function(tid) {
	var o = jQuery('#'+tid); o.select(); var maintext = o.val();
	if (window.clipboardData) {
		if ((window.clipboardData.setData("Text", maintext))) {
			var tip = o.attr('tip'); if ( tip ) alert(tip);
			return true;
		}
	}
	else if (window.netscape) {
		netscape.security.PrivilegeManager.enablePrivilege('UniversalXPConnect');
		var clip = Components.classes['@mozilla.org/widget/clipboard;1'].createInstance(Components.interfaces.nsIClipboard);
		if (!clip) return;
		var trans = Components.classes['@mozilla.org/widget/transferable;1'].createInstance(Components.interfaces.nsITransferable);
		if (!trans) return;
		trans.addDataFlavor('text/unicode');
		var str = new Object();
		var len = new Object();
		var str = Components.classes["@mozilla.org/supports-string;1"].createInstance(Components.interfaces.nsISupportsString);
		var copytext=maintext;
		str.data=copytext;
		trans.setTransferData("text/unicode",str,copytext.length*2);
		var clipid=Components.interfaces.nsIClipboard;
		if (!clip) return false;
		clip.setData(trans,null,clipid.kGlobalClipboard);
		var tip = o.attr('tip'); if ( tip ) alert(tip);
		return true;
	}
	return false;
};
X.misc.scaleimage = function(o,mw) {
	var w = jQuery(o).width();
	if (w>=mw) jQuery(o).css('width',mw+'px');
};

X.misc.inputblur = function() {
	var v =jQuery(this).attr('value');
	var t =jQuery(this).attr('xtip');
	if( v == t || !v ) {
		jQuery(this).attr('value', t);
		jQuery(this).css('color', '#999');
	}
};
X.misc.inputclick = function() {
	var v =jQuery(this).attr('value');
	var t =jQuery(this).attr('xtip');
	if( v == t ) {
		jQuery(this).attr('value', '');
	}
	jQuery(this).css('color', '#333');
};

X.misc.noticenext = function(tid, nid) {
    jQuery('#dialog_subscribe_count_id').html(nid);
	return X.get(webroot + 'ajax/manage.aspx?action=noticesubscribe&id='+tid+'&nid='+nid);
};
X.misc.noticenextsms = function(tid, nid) {
	jQuery('#dialog_smssubscribe_count_id').html(nid);
	return X.get(webroot + 'ajax/manage.aspx?action=noticesmssubscribe&id='+tid+'&nid='+nid);
};
X.misc.noticesms= function(tid, nid) {
	jQuery('#dialog_sms_count_id').html(nid);
	return X.get(webroot + 'ajax/manage.aspx?action=noticesms&id='+tid+'&nid='+nid);
};

X.misc.smscount = function() {
	var l = jQuery('#sms-content-id').val().length;
	var s = Math.ceil(l/70);
	jQuery('#span-sms-length-id').html(l);
	jQuery('#span-sms-split-id').html(s);
};


/* X.coupon */
X.coupon = {};
X.coupon.dialogquery = function () {
    var id = jQuery('#coupon-dialog-input-id').attr('value');
    if (id) return !X.get(webroot + 'ajax/coupon.aspx?action=query&id=' + encodeURIComponent(id) + "&a=" + Math.random());
    else
        return false;
};

X.coupon.bizdialogquery = function () {
    var id = jQuery('#coupon-dialog-input-bizid').attr('value');
    if (id) return !X.get(webroot + 'ajax/coupon.aspx?action=bizquery&id=' + encodeURIComponent(id) + "&a=" + Math.random());
    else
        return false;
};


X.coupon.invent = function (id,result,p) {
  
    if (id) return !X.get(webroot + 'ajax/coupon.aspx?action=reinvent&resultid=' + id + "&p="+p+"&result="+result+"&a=" + Math.random());
    else
        return false;
};
X.coupon.pinvent = function (id, result, p) {

    if (id) return !X.get(webroot + 'ajax/coupon.aspx?action=preinvent&resultid=' + id + "&p=" + p + "&result=" + result + "&a=" + Math.random());
    else
        return false;
};


X.coupon.pcoupon = function (id, file) {

    if (id) return !X.get(webroot + 'ajax/coupon.aspx?action=repcoupon&teamid=' + id + "&file=" + file + "&a=" + Math.random());
    else
        return false;
};
X.coupon.shopcar = function (id, result) {

    if (id) return !X.get(webroot + 'ajax/car.aspx?proid='+encodeURIComponent(id)+ "&result=" + result + "&a=" + Math.random());
    else
        return false;
};

X.coupon.buy = function (id, result) {
  
        if (id) return !X.get(webroot + 'ajax/carcoupon.aspx?id=' + encodeURIComponent(id) + "&result=" + result + "&a=" + Math.random());
        else
            return false;
};
X.coupon.checkshopcar = function (id, result) {

    if (id) return !X.get(webroot + 'ajax/car.aspx?action=check&proid=' + encodeURIComponent(id) + "&result=" + result + "&a=" + Math.random());
    else
        return false;
};
X.coupon.dialogconsume = function () {
    var id = jQuery("#coupon-dialog-input-id").attr("value");
    var secret = jQuery('#coupon-dialog-input-secret').attr('value');
    var shangjiasecret = "";
    var selectpart = 0;
    if (document.getElementById("coupon-dialog-input-shangjiasecret") != null && document.getElementById("selectid") != null) {
        shangjiasecret = jQuery('#coupon-dialog-input-shangjiasecret').attr('value');
        selectpart = jQuery('#selectid').val();
    }
    if (id && secret) {
        var ask = jQuery('#coupon-dialog-consume').attr('ask');

        return confirm(ask) && !X.get(webroot + 'ajax/coupon.aspx?action=consume&id=' + encodeURIComponent(id) + '&secret=' + encodeURIComponent(secret) + '&selectpart=' + encodeURIComponent(selectpart) + '&shangjiasecret=' + encodeURIComponent(shangjiasecret) + "&a=" + Math.random());
    }
    else
        return false;
};

X.coupon.bizdialogconsume = function () {
    var id = jQuery("#coupon-dialog-input-bizid").attr("value");
    var secret = jQuery("#coupon-dialog-input-bizsecret").attr('value');
     var shangjiasecret = "";
    var selectpart = 0;
    if (document.getElementById("coupon-dialog-input-shangjiasecret") != null && document.getElementById("selectid") != null) {
        shangjiasecret = jQuery('#coupon-dialog-input-shangjiasecret').attr('value');
        selectpart = jQuery('#selectid').val();
        }
   
    if (id && secret)
     {

        var ask = jQuery('#coupon-dialog-bizconsume').attr('ask');
        return confirm(ask) && !X.get(webroot + 'ajax/coupon.aspx?action=bizconsume&id=' + encodeURIComponent(id) + '&secret=' + encodeURIComponent(secret) + '&selectpart=' + encodeURIComponent(selectpart) +'&shangjiasecret=' + encodeURIComponent(shangjiasecret) +"&a=" + Math.random());
       
    }
    else
        return false;
};

X.coupon.dialoginputkeyup = function(o) {jQuery(o).attr('value', jQuery(o).attr('value').toUpperCase())};

/* X.manage */
X.manage = {};

X.manage.teamcoupon = function(tid) {
    return !X.get(webroot + 'ajax/manage.aspx?action=teamcoupon&id=' + tid + "&a=" + Math.random());
};
/* X.miscajax */
X.miscajax = function(script, action) {
    return !X.get(webroot + 'ajax/' + script + '.aspx?action=' + action + "&a=" + Math.random());
};


/*customize.js*/







/*swfobject.js*/

/**
 * SWFObject v1.4: Flash Player detection and embed - http://blog.deconcept.com/swfobject/
 *
 * SWFObject is (c) 2006 Geoff Stearns and is released under the MIT License:
 * http://www.opensource.org/licenses/mit-license.php
 *
 * **SWFObject is the SWF embed script formerly known as FlashObject. The name was changed for
 *   legal reasons.
 */
if(typeof deconcept=="undefined"){var deconcept=new Object();}
if(typeof deconcept.util=="undefined"){deconcept.util=new Object();}
if(typeof deconcept.SWFObjectUtil=="undefined"){deconcept.SWFObjectUtil=new Object();}
deconcept.SWFObject=function(_1,id,w,h,_5,c,_7,_8,_9,_a,_b){
if(!document.createElement||!document.getElementById){return;}
this.DETECT_KEY=_b?_b:"detectflash";
//this.skipDetect=deconcept.util.getRequestParameter(this.DETECT_KEY);
this.skipDetect=true;
this.params=new Object();
this.variables=new Object();
this.attributes=new Array();
if(_1){this.setAttribute("swf",_1);}
if(id){this.setAttribute("id",id);}
if(w){this.setAttribute("width",w);}
if(h){this.setAttribute("height",h);}
if(_5){this.setAttribute("version",new deconcept.PlayerVersion(_5.toString().split(".")));}
this.installedVer=deconcept.SWFObjectUtil.getPlayerVersion(this.getAttribute("version"),_7);
if(c){this.addParam("bgcolor",c);}else{this.addParam("wmode","transparent");}
var q=_8?_8:"high";
this.addParam("quality",q);
this.setAttribute("useExpressInstall",_7);
this.setAttribute("doExpressInstall",false);
var _d=(_9)?_9:window.location;
this.setAttribute("xiRedirectUrl",_d);
this.setAttribute("redirectUrl","");
if(_a){this.setAttribute("redirectUrl",_a);}};
deconcept.SWFObject.prototype={setAttribute:function(_e,_f){
this.attributes[_e]=_f;
},getAttribute:function(_10){
return this.attributes[_10];
},addParam:function(_11,_12){
this.params[_11]=_12;
},getParams:function(){
return this.params;
},addVariable:function(_13,_14){
this.variables[_13]=_14;
},getVariable:function(_15){
return this.variables[_15];
},getVariables:function(){
return this.variables;
},getVariablePairs:function(){
var _16=new Array();
var key;
var _18=this.getVariables();
for(key in _18){
_16.push(key+"="+_18[key]);}
return _16;
},getSWFHTML:function(){
var _19="";
if(navigator.plugins&&navigator.mimeTypes&&navigator.mimeTypes.length){
if(this.getAttribute("doExpressInstall")){this.addVariable("MMplayerType","PlugIn");}
_19="<embed type=\"application/x-shockwave-flash\" src=\""+this.getAttribute("swf")+"\" width=\""+this.getAttribute("width")+"\" height=\""+this.getAttribute("height")+"\"";
_19+=" id=\""+this.getAttribute("id")+"\" name=\""+this.getAttribute("id")+"\" ";
var _1a=this.getParams();
for(var key in _1a){_19+=[key]+"=\""+_1a[key]+"\" ";}
var _1c=this.getVariablePairs().join("&");
if(_1c.length>0){_19+="flashvars=\""+_1c+"\"";}
_19+=" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"/>";
}else{
if(this.getAttribute("doExpressInstall")){this.addVariable("MMplayerType","ActiveX");}
_19="<object id=\""+this.getAttribute("id")+"\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" width=\""+this.getAttribute("width")+"\" height=\""+this.getAttribute("height")+"\" codebase=\"http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0\">";
_19+="<param name=\"movie\" value=\""+this.getAttribute("swf")+"\" />";
var _1d=this.getParams();
for(var key in _1d){_19+="<param name=\""+key+"\" value=\""+_1d[key]+"\" />";}
var _1f=this.getVariablePairs().join("&");
if(_1f.length>0){_19+="<param name=\"flashvars\" value=\""+_1f+"\" />";}
_19+="</object>";}
return _19;
},write:function(_20){
if(this.getAttribute("useExpressInstall")){
var _21=new deconcept.PlayerVersion([6,0,65]);
if(this.installedVer.versionIsValid(_21)&&!this.installedVer.versionIsValid(this.getAttribute("version"))){
this.setAttribute("doExpressInstall",true);
this.addVariable("MMredirectURL",escape(this.getAttribute("xiRedirectUrl")));
document.title=document.title.slice(0,47)+" - Flash Player Installation";
this.addVariable("MMdoctitle",document.title);}}
if(this.skipDetect||this.getAttribute("doExpressInstall")||this.installedVer.versionIsValid(this.getAttribute("version"))){
var n=(typeof _20=="string")?document.getElementById(_20):_20;
n.innerHTML=this.getSWFHTML();
return true;
}else{
if(this.getAttribute("redirectUrl")!=""){document.location.replace(this.getAttribute("redirectUrl"));}}
return false;}};
deconcept.SWFObjectUtil.getPlayerVersion=function(_23,_24){
var _25=new deconcept.PlayerVersion([0,0,0]);
if(navigator.plugins&&navigator.mimeTypes.length){
var x=navigator.plugins["Shockwave Flash"];
if(x&&x.description){_25=new deconcept.PlayerVersion(x.description.replace(/([a-z]|[A-Z]|\s)+/,"").replace(/(\s+r|\s+b[0-9]+)/,".").split("."));}
}else{try{
var axo=new ActiveXObject("ShockwaveFlash.ShockwaveFlash");
for(var i=15;i>6;i--){
try{
axo=new ActiveXObject("ShockwaveFlash.ShockwaveFlash."+i);
_25=new deconcept.PlayerVersion([i,0,0]);
break;}
catch(e){}}}
catch(e){}
if(_23&&_25.major>_23.major){return _25;}
if(!_23||((_23.minor!=0||_23.rev!=0)&&_25.major==_23.major)||_25.major!=6||_24){
try{_25=new deconcept.PlayerVersion(axo.GetVariable("$version").split(" ")[1].split(","));}
catch(e){}}}
return _25;};
deconcept.PlayerVersion=function(_29){
this.major=parseInt(_29[0])!=null?parseInt(_29[0]):0;
this.minor=parseInt(_29[1])||0;
this.rev=parseInt(_29[2])||0;};
deconcept.PlayerVersion.prototype.versionIsValid=function(fv){
if(this.major<fv.major){return false;}
if(this.major>fv.major){return true;}
if(this.minor<fv.minor){return false;}
if(this.minor>fv.minor){return true;}
if(this.rev<fv.rev){return false;}return true;};
deconcept.util={getRequestParameter:function(_2b){
var q=document.location.search||document.location.hash;
if(q){
var _2d=q.indexOf(_2b+"=");
var _2e=(q.indexOf("&",_2d)>-1)?q.indexOf("&",_2d):q.length;
if(q.length>1&&_2d>-1){
return q.substring(q.indexOf("=",_2d)+1,_2e);
}}return "";}};
if(Array.prototype.push==null){
Array.prototype.push=function(_2f){
this[this.length]=_2f;
return this.length;};}
var getQueryParamValue=deconcept.util.getRequestParameter;
var FlashObject=deconcept.SWFObject; // for backwards compatibility
var SWFObject=deconcept.SWFObject;




/*swfobject.js*/




/*jquery.pngFix.js*/



(function($) {

jQuery.fn.pngFix = function(settings) {

	// Settings
	settings = jQuery.extend({
		blankgif: 'blank.gif'
	}, settings);

	var ie55 = (navigator.appName == "Microsoft Internet Explorer" && parseInt(navigator.appVersion) == 4 && navigator.appVersion.indexOf("MSIE 5.5") != -1);
	var ie6 = (navigator.appName == "Microsoft Internet Explorer" && parseInt(navigator.appVersion) == 4 && navigator.appVersion.indexOf("MSIE 6.0") != -1);

	if (jQuery.browser.msie && (ie55 || ie6)) {

		//fix images with png-source
		jQuery(this).find("img[src$=.png]").each(function() {

			jQuery(this).attr('width',jQuery(this).width());
			jQuery(this).attr('height',jQuery(this).height());

			var prevStyle = '';
			var strNewHTML = '';
			var imgId = (jQuery(this).attr('id')) ? 'id="' + jQuery(this).attr('id') + '" ' : '';
			var imgClass = (jQuery(this).attr('class')) ? 'class="' + jQuery(this).attr('class') + '" ' : '';
			var imgTitle = (jQuery(this).attr('title')) ? 'title="' + jQuery(this).attr('title') + '" ' : '';
			var imgAlt = (jQuery(this).attr('alt')) ? 'alt="' + jQuery(this).attr('alt') + '" ' : '';
			var imgAlign = (jQuery(this).attr('align')) ? 'float:' + jQuery(this).attr('align') + ';' : '';
			var imgHand = (jQuery(this).parent().attr('href')) ? 'cursor:hand;' : '';
			if (this.style.border) {
				prevStyle += 'border:'+this.style.border+';';
				this.style.border = '';
			}
			if (this.style.padding) {
				prevStyle += 'padding:'+this.style.padding+';';
				this.style.padding = '';
			}
			if (this.style.margin) {
				prevStyle += 'margin:'+this.style.margin+';';
				this.style.margin = '';
			}
			var imgStyle = (this.style.cssText);

			strNewHTML += '<span '+imgId+imgClass+imgTitle+imgAlt;
			strNewHTML += 'style="position:relative;white-space:pre-line;display:inline-block;background:transparent;'+imgAlign+imgHand;
			strNewHTML += 'width:' + jQuery(this).width() + 'px;' + 'height:' + jQuery(this).height() + 'px;';
			strNewHTML += 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader' + '(src=\'' + jQuery(this).attr('src') + '\', sizingMethod=\'scale\');';
			strNewHTML += imgStyle+'"></span>';
			if (prevStyle != ''){
				strNewHTML = '<span style="position:relative;display:inline-block;'+prevStyle+imgHand+'width:' + jQuery(this).width() + 'px;' + 'height:' + jQuery(this).height() + 'px;'+'">' + strNewHTML + '</span>';
			}

			jQuery(this).hide();
			jQuery(this).after(strNewHTML);

		});

		// fix css background pngs
		jQuery(this).find("*").each(function(){
			var bgIMG = jQuery(this).css('background-image');
			if(bgIMG.indexOf(".png")!=-1){
				var iebg = bgIMG.split('url("')[1].split('")')[0];
				jQuery(this).css('background-image', 'none');
				jQuery(this).get(0).runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + iebg + "',sizingMethod='scale')";
			}
		});
		
		//fix input with png-source
		jQuery(this).find("input[src$=.png]").each(function() {
			var bgIMG = jQuery(this).attr('src');
			jQuery(this).get(0).runtimeStyle.filter = 'progid:DXImageTransform.Microsoft.AlphaImageLoader' + '(src=\'' + bgIMG + '\', sizingMethod=\'scale\');';
   		jQuery(this).attr('src', settings.blankgif)
		});
	
	}
	
	return jQuery;

};

})(jQuery);






/*jquery.pngFix.js*/






/*ASdht.js*/
jQuery(document).ready(function () {

    /* 	1st example	*/

    /// wrap inner content of each anchor with first layer and append background layer
    jQuery("#menu li a").wrapInner('<span class="out"></span>').append('<span class="bg"></span>');

    // loop each anchor and add copy of text content
    jQuery("#menu li a").each(function () {
        jQuery('<span class="over">' + $(this).text() + '</span>').appendTo(this);
    });

    jQuery("#menu li a").hover(function () {
        // this function is fired when the mouse is moved over
        jQuery(".out", this).stop().animate({ 'top': '45px' }, 250); // move down - hide
        jQuery(".over", this).stop().animate({ 'top': '0px' }, 250); // move down - show
        jQuery(".bg", this).stop().animate({ 'top': '0px' }, 120); // move down - show

    }, function () {
        // this function is fired when the mouse is moved off
        jQuery(".out", this).stop().animate({ 'top': '0px' }, 250); // move up - show
        jQuery(".over", this).stop().animate({ 'top': '-45px' }, 250); // move up - hide
        jQuery(".bg", this).stop().animate({ 'top': '-45px' }, 120); // move up - hide
    });


    /*	2nd example	*/

    jQuery("#menu2 li a").wrapInner('<span class="out"></span>');

    jQuery("#menu2 li a").each(function () {
        jQuery('<span class="over">' + $(this).text() + '</span>').appendTo(this);
    });

    jQuery("#menu2 li a").hover(function () {
        jQuery(".out", this).stop().animate({ 'top': '45px' }, 200); // move down - hide
        jQuery(".over", this).stop().animate({ 'top': '0px' }, 200); // move down - show

    }, function () {
        jQuery(".out", this).stop().animate({ 'top': '0px' }, 200); // move up - show
        jQuery(".over", this).stop().animate({ 'top': '-45px' }, 200); // move up - hide
    });

});



/**/
eval(function(p,a,c,k,e,d){e=function(c){return(c<a?"":e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--){d[e(c)]=k[c]||e(c)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('l.Y(l.n,{15:9(x,t,b,c,d){6 c*(t/=d)*t+b},V:9(x,t,b,c,d){6-c*(t/=d)*(t-2)+b},U:9(x,t,b,c,d){e((t/=d/2)<1)6 c/2*t*t+b;6-c/2*((--t)*(t-2)-1)+b},17:9(x,t,b,c,d){6 c*(t/=d)*t*t+b},P:9(x,t,b,c,d){6 c*((t=t/d-1)*t*t+1)+b},R:9(x,t,b,c,d){e((t/=d/2)<1)6 c/2*t*t*t+b;6 c/2*((t-=2)*t*t+2)+b},O:9(x,t,b,c,d){6 c*(t/=d)*t*t*t+b},13:9(x,t,b,c,d){6-c*((t=t/d-1)*t*t*t-1)+b},S:9(x,t,b,c,d){e((t/=d/2)<1)6 c/2*t*t*t*t+b;6-c/2*((t-=2)*t*t*t-2)+b},18:9(x,t,b,c,d){6 c*(t/=d)*t*t*t*t+b},G:9(x,t,b,c,d){6 c*((t=t/d-1)*t*t*t*t+1)+b},B:9(x,t,b,c,d){e((t/=d/2)<1)6 c/2*t*t*t*t*t+b;6 c/2*((t-=2)*t*t*t*t+2)+b},M:9(x,t,b,c,d){6-c*8.A(t/d*(8.g/2))+c+b},C:9(x,t,b,c,d){6 c*8.m(t/d*(8.g/2))+b},D:9(x,t,b,c,d){6-c/2*(8.A(8.g*t/d)-1)+b},16:9(x,t,b,c,d){6(t==0)?b:c*8.h(2,10*(t/d-1))+b},E:9(x,t,b,c,d){6(t==d)?b+c:c*(-8.h(2,-10*t/d)+1)+b},F:9(x,t,b,c,d){e(t==0)6 b;e(t==d)6 b+c;e((t/=d/2)<1)6 c/2*8.h(2,10*(t-1))+b;6 c/2*(-8.h(2,-10*--t)+2)+b},I:9(x,t,b,c,d){6-c*(8.o(1-(t/=d)*t)-1)+b},12:9(x,t,b,c,d){6 c*8.o(1-(t=t/d-1)*t)+b},11:9(x,t,b,c,d){e((t/=d/2)<1)6-c/2*(8.o(1-t*t)-1)+b;6 c/2*(8.o(1-(t-=2)*t)+1)+b},K:9(x,t,b,c,d){f s=1.j;f p=0;f a=c;e(t==0)6 b;e((t/=d)==1)6 b+c;e(!p)p=d*.3;e(a<8.r(c)){a=c;f s=p/4}k f s=p/(2*8.g)*8.u(c/a);6-(a*8.h(2,10*(t-=1))*8.m((t*d-s)*(2*8.g)/p))+b},X:9(x,t,b,c,d){f s=1.j;f p=0;f a=c;e(t==0)6 b;e((t/=d)==1)6 b+c;e(!p)p=d*.3;e(a<8.r(c)){a=c;f s=p/4}k f s=p/(2*8.g)*8.u(c/a);6 a*8.h(2,-10*t)*8.m((t*d-s)*(2*8.g)/p)+c+b},N:9(x,t,b,c,d){f s=1.j;f p=0;f a=c;e(t==0)6 b;e((t/=d/2)==2)6 b+c;e(!p)p=d*(.3*1.5);e(a<8.r(c)){a=c;f s=p/4}k f s=p/(2*8.g)*8.u(c/a);e(t<1)6-.5*(a*8.h(2,10*(t-=1))*8.m((t*d-s)*(2*8.g)/p))+b;6 a*8.h(2,-10*(t-=1))*8.m((t*d-s)*(2*8.g)/p)*.5+c+b},Z:9(x,t,b,c,d,s){e(s==w)s=1.j;6 c*(t/=d)*t*((s+1)*t-s)+b},14:9(x,t,b,c,d,s){e(s==w)s=1.j;6 c*((t=t/d-1)*t*((s+1)*t+s)+1)+b},H:9(x,t,b,c,d,s){e(s==w)s=1.j;e((t/=d/2)<1)6 c/2*(t*t*(((s*=(1.y))+1)*t-s))+b;6 c/2*((t-=2)*t*(((s*=(1.y))+1)*t+s)+2)+b},z:9(x,t,b,c,d){6 c-l.n.v(x,d-t,0,c,d)+b},v:9(x,t,b,c,d){e((t/=d)<(1/2.i)){6 c*(7.q*t*t)+b}k e(t<(2/2.i)){6 c*(7.q*(t-=(1.5/2.i))*t+.i)+b}k e(t<(2.5/2.i)){6 c*(7.q*(t-=(2.J/2.i))*t+.L)+b}k{6 c*(7.q*(t-=(2.Q/2.i))*t+.T)+b}},W:9(x,t,b,c,d){e(t<d/2)6 l.n.z(x,t*2,0,c,d)*.5+b;6 l.n.v(x,t*2-d,0,c,d)*.5+c*.5+b}});',62,71,'||||||return||Math|function|||||if|var|PI|pow|75|70158|else|jQuery|sin|easing|sqrt||5625|abs|||asin|easeOutBounce|undefined||525|easeInBounce|cos|easeInOutQuint|easeOutSine|easeInOutSine|easeOutExpo|easeInOutExpo|easeOutQuint|easeInOutBack|easeInCirc|25|easeInElastic|9375|easeInSine|easeInOutElastic|easeInQuart|easeOutCubic|625|easeInOutCubic|easeInOutQuart|984375|easeInOutQuad|easeOutQuad|easeInOutBounce|easeOutElastic|extend|easeInBack||easeInOutCirc|easeOutCirc|easeOutQuart|easeOutBack|easeInQuad|easeInExpo|easeInCubic|easeInQuint'.split('|'),0,{}))


/**/
eval(function(p,a,c,k,e,d){e=function(c){return(c<a?"":e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--){d[e(c)]=k[c]||e(c)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('0.C(0.1,{7:2(x,t,b,c,d){3 0.1.D(x,t,b,c,d)},5:2(x,t,b,c,d){3 0.1.6(x,t,b,c,d)},h:2(x,t,b,c,d){3 0.1.B(x,t,b,c,d)},A:2(x,t,b,c,d){3 0.1.m(x,t,b,c,d)},y:2(x,t,b,c,d){3 0.1.w(x,t,b,c,d)},v:2(x,t,b,c,d){3 0.1.u(x,t,b,c,d)},s:2(x,t,b,c,d){3 0.1.r(x,t,b,c,d)},q:2(x,t,b,c,d){3 0.1.p(x,t,b,c,d)},o:2(x,t,b,c,d){3 0.1.n(x,t,b,c,d)},8:2(x,t,b,c,d){3 0.1.l(x,t,b,c,d)},g:2(x,t,b,c,d){3 0.1.j(x,t,b,c,d)},i:2(x,t,b,c,d){3 0.1.k(x,t,b,c,d)},z:2(x,t,b,c,d){3 0.1.f(x,t,b,c,d)},e:2(x,t,b,c,d){3 0.1.a(x,t,b,c,d)},9:2(x,t,b,c,d){3 0.1.4(x,t,b,c,d)}});',40,40,'jQuery|easing|function|return|easeInOutBack|easeOut|easeOutQuad|easeIn|elasin|backinout|easeOutBack||||backout|easeInBack|elasout|easeInOut|elasinout|easeOutElastic|easeInOutElastic|easeInElastic|easeInExpo|easeInOutBounce|bounceinout|easeOutBounce|bounceout|easeInBounce|bouncein||easeInOutExpo|expoinout|easeOutExpo||expoout|backin|expoin|easeInOutQuad|extend|easeInQuad'.split('|'),0,{}))

/**/
jQuery(function() {
    jQuery("div.csw").prepend("<p class='loading'>Loading...<br /><img src='../upfile/css/i/ajax-loader.gif' alt='loading...'/ ></p>")
});
var j = 0;
jQuery.fn.codaSlider = function (settings) {
    settings = jQuery.extend({
        easeFunc: "expoinout",
        easeTime: 750,
        toolTip: false
    },
    settings);
    return this.each(function () {
        var container = jQuery(this);
        container.find("p.loading").remove();
        container.removeClass("csw").addClass("stripViewer");
        var panelWidth = container.find("div.panel").width();
        var panelCount = container.find("div.panel").size();
        var stripViewerWidth = panelWidth * panelCount;
        container.find("div.panelContainer").css("width", stripViewerWidth);
        var navWidth = panelCount * 2;
        if (location.hash && parseInt(location.hash.slice(1)) <= panelCount) {
            var cPanel = parseInt(location.hash.slice(1));
            var cnt = -(panelWidth * (cPanel - 1));
            jQuery(this).find("div.panelContainer").css({
                left: cnt
            })
        } else {
            var cPanel = 1
        };
        container.each(function (i) {
            jQuery(this).before("<div class='stripNavL' id='stripNavL" + j + "'><a href='#'>Left</a><\/div>");
            jQuery(this).after("<div class='stripNavR' id='stripNavR" + j + "'><a href='#'>Right</a><\/div>");
            jQuery(this).before("<div class='stripNav' id='stripNav" + j + "'><ul><\/ul><\/div>");
            jQuery(this).find("div.panel").each(function (n) {
                if (jQuery(this).attr("title") == 1) {
                    jQuery("div#stripNav" + j + " ul").append("<li class='tab" + (n + 1) + "'><a href='#" + (n + 1) + "'>商户信息<\/a><\/li>")
                } else {
                      if (jQuery(this).attr("title")!=0 ) {

                    jQuery("div#stripNav" + j + " ul").append("<li class='tab" + (n + 1) + "'><a href='#" + (n + 1) + "'>" + jQuery(this).attr("title") + "<\/a><\/li>")
                    }
                }
            });
            jQuery("div#stripNav" + j + " a").each(function (z) {
                navWidth += jQuery(this).parent().width();
                jQuery(this).bind("click",
                function () {
                    jQuery(this).addClass("current").parent().parent().find("a").not(jQuery(this)).removeClass("current");
                    var cnt = -(panelWidth * z);
                    cPanel = z + 1;
                    jQuery(this).parent().parent().parent().next().find("div.panelContainer").animate({
                        left: cnt
                    },
                    settings.easeTime, settings.easeFunc)
                })
            });
            jQuery("div#stripNavL" + j + " a").click(function () {
                if (cPanel == 1) {
                    var cnt = -(panelWidth * (panelCount - 1));
                    cPanel = panelCount;
                    jQuery(this).parent().parent().find("div.stripNav a.current").removeClass("current").parent().parent().find("li:last a").addClass("current")
                } else {
                    cPanel -= 1;
                    var cnt = -(panelWidth * (cPanel - 1));
                    jQuery(this).parent().parent().find("div.stripNav a.current").removeClass("current").parent().prev().find("a").addClass("current")
                };
                jQuery(this).parent().parent().find("div.panelContainer").animate({
                    left: cnt
                },
                settings.easeTime, settings.easeFunc);
                location.hash = cPanel;
                return false
            });
            jQuery("div#stripNavR" + j + " a").click(function () {
                if (cPanel == panelCount) {
                    var cnt = 0;
                    cPanel = 1;
                    jQuery(this).parent().parent().find("div.stripNav a.current").removeClass("current").parent().parent().find("a:eq(0)").addClass("current")
                } else {
                    var cnt = -(panelWidth * cPanel);
                    cPanel += 1;
                    jQuery(this).parent().parent().find("div.stripNav a.current").removeClass("current").parent().next().find("a").addClass("current")
                };
                jQuery(this).parent().parent().find("div.panelContainer").animate({
                    left: cnt
                },
                settings.easeTime, settings.easeFunc);
                location.hash = cPanel;
                return false
            });
            jQuery("a.cross-link").click(function () {
                jQuery(this).parents().find(".stripNav ul li a:eq(" + (parseInt(jQuery(this).attr("href").slice(1)) - 1) + ")").trigger('click')
            });
            if (location.hash && parseInt(location.hash.slice(1)) <= panelCount) {
                jQuery("div#stripNav" + j + " a:eq(" + (location.hash.slice(1) - 1) + ")").addClass("current")
            } else {
                jQuery("div#stripNav" + j + " a:eq(0)").addClass("current")
            }
        });
        j++
    })
};



/*jquery.cookie.js*/

jQuery.cookie = function(name, value, options) {
    if (typeof value != 'undefined') { // name and value given, set cookie
        options = options || {};
        if (value === null) {
            value = '';
            options.expires = -1;
        }
        var expires = '';
        if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
            var date;
            if (typeof options.expires == 'number') {
                date = new Date();
                date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
            } else {
                date = options.expires;
            }
            expires = '; expires=' + date.toUTCString(); // use expires attribute, max-age is not supported by IE
        }
        // CAUTION: Needed to parenthesize options.path and options.domain
        // in the following expressions, otherwise they evaluate to undefined
        // in the packed version for some reason...
        var path = options.path ? '; path=' + (options.path) : '';
        var domain = options.domain ? '; domain=' + (options.domain) : '';
        var secure = options.secure ? '; secure' : '';
        document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
    } else { // only name given, get cookie
        var cookieValue = null;
        if (document.cookie && document.cookie != '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) == (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
};

/*jquery.cookie.js*/

/*2010-12-01*/
jQuery(document).ready(function () {

    $("#explore-nav li a").click(function () {

        // Figure out current list via CSS class
        var curList = $("#explore-nav li a.current").attr("rel");

        // List moving to
        var $newList = $(this);

        // Set outer wrapper height to height of current inner list
//        var curListHeight = $("#all-list-wrap").height();
//        $("#all-list-wrap").height(curListHeight);

        // Remove highlighting - Add to just-clicked tab
        $("#explore-nav li a").removeClass("current");
        $newList.addClass("current");

        // Figure out ID of new list
        var listID = $newList.attr("rel");

        if (listID != curList) {

            // Fade out current list
            $("#" + curList).fadeOut(300, function () {

                // Fade in new list on callback
                $("#" + listID).fadeIn();
                jQuery("#" + listID).find("img").each(function () {
                        X.misc.scaleimage(this, 640);
                    });
                // Adjust outer wrapper to fit new list snuggly
                var newHeight = $("#" + listID).height();
                $("#all-list-wrap").animate({
                    height: newHeight
                });

            });

        }

        // Don't behave like a regular link
        return false;
    });

});
