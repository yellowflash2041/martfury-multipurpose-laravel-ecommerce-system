(()=>{"use strict";var e={9159:(e,t,r)=>{r.d(t,{A:()=>a});var n=r(6798),o=r.n(n)()((function(e){return e[1]}));o.push([e.id,'.half-circle-spinner,.half-circle-spinner *{box-sizing:border-box}.half-circle-spinner{border-radius:100%;height:60px;position:relative;width:60px}.half-circle-spinner .circle{border:6px solid transparent;border-radius:100%;content:"";height:100%;position:absolute;width:100%}.half-circle-spinner .circle.circle-1{animation:half-circle-spinner-animation 1s infinite;border-top-color:#ff1d5e}.half-circle-spinner .circle.circle-2{animation:half-circle-spinner-animation 1s infinite alternate;border-bottom-color:#ff1d5e}@keyframes half-circle-spinner-animation{0%{transform:rotate(0)}to{transform:rotate(1turn)}}',""]);const a=o},132:(e,t,r)=>{r.d(t,{A:()=>a});var n=r(6798),o=r.n(n)()((function(e){return e[1]}));o.push([e.id,".updating[data-v-0bf1ee7b]{-webkit-backdrop-filter:blur(5px);backdrop-filter:blur(5px);background:rgba(0,0,0,.6);height:100%;left:0;overflow:hidden;position:fixed;top:0;width:100%;z-index:9999}.updating>.updating-wrapper[data-v-0bf1ee7b]{height:100%;position:absolute;top:calc(30% - 100px);width:100%}.updating>.updating-wrapper>.updating-container[data-v-0bf1ee7b]{margin:0 auto;max-width:500px;text-align:center}.updating>.updating-wrapper>.updating-container .percent[data-v-0bf1ee7b]{color:#fefefe;font-family:ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace;font-size:86px;margin-bottom:24px}.updating>.updating-wrapper>.updating-container .information[data-v-0bf1ee7b]{color:#efefef;font-size:18px;margin:32px 0;padding:0 8px}.updating>.updating-wrapper>.updating-container .important[data-v-0bf1ee7b]{color:#efefef}.updating>.updating-wrapper>.updating-container .loader .half-circle-spinner[data-v-0bf1ee7b]{margin:0 auto 20px}.updating .red[data-v-0bf1ee7b]{color:#fdc9c9}.updating .red-shadow[data-v-0bf1ee7b]{text-shadow:0 0 16px #ef0012}",""]);const a=o},6798:e=>{e.exports=function(e){var t=[];return t.toString=function(){return this.map((function(t){var r=e(t);return t[2]?"@media ".concat(t[2]," {").concat(r,"}"):r})).join("")},t.i=function(e,r,n){"string"==typeof e&&(e=[[null,e,""]]);var o={};if(n)for(var a=0;a<this.length;a++){var i=this[a][0];null!=i&&(o[i]=!0)}for(var c=0;c<e.length;c++){var l=[].concat(e[c]);n&&o[l[0]]||(r&&(l[2]?l[2]="".concat(r," and ").concat(l[2]):l[2]=r),t.push(l))}},t}},5072:(e,t,r)=>{var n,o=function(){return void 0===n&&(n=Boolean(window&&document&&document.all&&!window.atob)),n},a=function(){var e={};return function(t){if(void 0===e[t]){var r=document.querySelector(t);if(window.HTMLIFrameElement&&r instanceof window.HTMLIFrameElement)try{r=r.contentDocument.head}catch(e){r=null}e[t]=r}return e[t]}}(),i=[];function c(e){for(var t=-1,r=0;r<i.length;r++)if(i[r].identifier===e){t=r;break}return t}function l(e,t){for(var r={},n=[],o=0;o<e.length;o++){var a=e[o],l=t.base?a[0]+t.base:a[0],s=r[l]||0,u="".concat(l," ").concat(s);r[l]=s+1;var p=c(u),d={css:a[1],media:a[2],sourceMap:a[3]};-1!==p?(i[p].references++,i[p].updater(d)):i.push({identifier:u,updater:v(d,t),references:1}),n.push(u)}return n}function s(e){var t=document.createElement("style"),n=e.attributes||{};if(void 0===n.nonce){var o=r.nc;o&&(n.nonce=o)}if(Object.keys(n).forEach((function(e){t.setAttribute(e,n[e])})),"function"==typeof e.insert)e.insert(t);else{var i=a(e.insert||"head");if(!i)throw new Error("Couldn't find a style target. This probably means that the value for the 'insert' parameter is invalid.");i.appendChild(t)}return t}var u,p=(u=[],function(e,t){return u[e]=t,u.filter(Boolean).join("\n")});function d(e,t,r,n){var o=r?"":n.media?"@media ".concat(n.media," {").concat(n.css,"}"):n.css;if(e.styleSheet)e.styleSheet.cssText=p(t,o);else{var a=document.createTextNode(o),i=e.childNodes;i[t]&&e.removeChild(i[t]),i.length?e.insertBefore(a,i[t]):e.appendChild(a)}}function f(e,t,r){var n=r.css,o=r.media,a=r.sourceMap;if(o?e.setAttribute("media",o):e.removeAttribute("media"),a&&"undefined"!=typeof btoa&&(n+="\n/*# sourceMappingURL=data:application/json;base64,".concat(btoa(unescape(encodeURIComponent(JSON.stringify(a))))," */")),e.styleSheet)e.styleSheet.cssText=n;else{for(;e.firstChild;)e.removeChild(e.firstChild);e.appendChild(document.createTextNode(n))}}var h=null,m=0;function v(e,t){var r,n,o;if(t.singleton){var a=m++;r=h||(h=s(t)),n=d.bind(null,r,a,!1),o=d.bind(null,r,a,!0)}else r=s(t),n=f.bind(null,r,t),o=function(){!function(e){if(null===e.parentNode)return!1;e.parentNode.removeChild(e)}(r)};return n(e),function(t){if(t){if(t.css===e.css&&t.media===e.media&&t.sourceMap===e.sourceMap)return;n(e=t)}else o()}}e.exports=function(e,t){(t=t||{}).singleton||"boolean"==typeof t.singleton||(t.singleton=o());var r=l(e=e||[],t);return function(e){if(e=e||[],"[object Array]"===Object.prototype.toString.call(e)){for(var n=0;n<r.length;n++){var o=c(r[n]);i[o].references--}for(var a=l(e,t),s=0;s<r.length;s++){var u=c(r[s]);0===i[u].references&&(i[u].updater(),i.splice(u,1))}r=a}}}},6262:(e,t)=>{t.A=(e,t)=>{const r=e.__vccOpts||e;for(const[e,n]of t)r[e]=n;return r}}},t={};function r(n){var o=t[n];if(void 0!==o)return o.exports;var a=t[n]={id:n,exports:{}};return e[n](a,a.exports,r),a.exports}r.n=e=>{var t=e&&e.__esModule?()=>e.default:()=>e;return r.d(t,{a:t}),t},r.d=(e,t)=>{for(var n in t)r.o(t,n)&&!r.o(e,n)&&Object.defineProperty(e,n,{enumerable:!0,get:t[n]})},r.o=(e,t)=>Object.prototype.hasOwnProperty.call(e,t),r.nc=void 0,(()=>{const e=Vue;var t=function(t){return(0,e.pushScopeId)("data-v-0bf1ee7b"),t=t(),(0,e.popScopeId)(),t},n={class:"content"},o={key:0},a={key:0,xmlns:"http://www.w3.org/2000/svg",class:"icon ms-1",width:"24",height:"24",viewBox:"0 0 24 24","stroke-width":"2",stroke:"currentColor",fill:"none","stroke-linecap":"round","stroke-linejoin":"round"},i=[t((function(){return(0,e.createElementVNode)("path",{stroke:"none",d:"M0 0h24v24H0z",fill:"none"},null,-1)})),t((function(){return(0,e.createElementVNode)("path",{d:"M20 11a8.1 8.1 0 0 0 -15.5 -2m-.5 -4v4h4"},null,-1)})),t((function(){return(0,e.createElementVNode)("path",{d:"M4 13a8.1 8.1 0 0 0 15.5 2m.5 4v-4h-4"},null,-1)}))],c={key:1,xmlns:"http://www.w3.org/2000/svg",class:"icon ms-1",width:"24",height:"24",viewBox:"0 0 24 24","stroke-width":"2",stroke:"currentColor",fill:"none","stroke-linecap":"round","stroke-linejoin":"round"},l=[t((function(){return(0,e.createElementVNode)("path",{stroke:"none",d:"M0 0h24v24H0z",fill:"none"},null,-1)})),t((function(){return(0,e.createElementVNode)("path",{d:"M4 17v2a2 2 0 0 0 2 2h12a2 2 0 0 0 2 -2v-2"},null,-1)})),t((function(){return(0,e.createElementVNode)("path",{d:"M7 11l5 5l5 -5"},null,-1)})),t((function(){return(0,e.createElementVNode)("path",{d:"M12 4l0 12"},null,-1)}))],s={key:2},u={key:3},p=t((function(){return(0,e.createElementVNode)("svg",{xmlns:"http://www.w3.org/2000/svg",class:"icon ms-1",width:"24",height:"24",viewBox:"0 0 24 24","stroke-width":"2",stroke:"currentColor",fill:"none","stroke-linecap":"round","stroke-linejoin":"round"},[(0,e.createElementVNode)("path",{stroke:"none",d:"M0 0h24v24H0z",fill:"none"}),(0,e.createElementVNode)("path",{d:"M5 12l5 5l10 -10"})],-1)})),d={key:1,class:"updating"},f={class:"updating-wrapper"},h={class:"updating-container"},m={key:0,class:"loader"},v=["textContent"],g={class:"information"},y=["textContent"],b={key:1,class:"important red-shadow"},w=[t((function(){return(0,e.createElementVNode)("strong",null,"DO NOT CLOSE WINDOWS DURING UPDATE!",-1)}))],k={key:2};var x=r(5072),E=r.n(x),S=r(9159),N={insert:"head",singleton:!1};E()(S.A,N);S.A.locals;function B(e){return B="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},B(e)}function C(){/*! regenerator-runtime -- Copyright (c) 2014-present, Facebook, Inc. -- license (MIT): https://github.com/facebook/regenerator/blob/main/LICENSE */C=function(){return t};var e,t={},r=Object.prototype,n=r.hasOwnProperty,o=Object.defineProperty||function(e,t,r){e[t]=r.value},a="function"==typeof Symbol?Symbol:{},i=a.iterator||"@@iterator",c=a.asyncIterator||"@@asyncIterator",l=a.toStringTag||"@@toStringTag";function s(e,t,r){return Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}),e[t]}try{s({},"")}catch(e){s=function(e,t,r){return e[t]=r}}function u(e,t,r,n){var a=t&&t.prototype instanceof g?t:g,i=Object.create(a.prototype),c=new V(n||[]);return o(i,"_invoke",{value:L(e,r,c)}),i}function p(e,t,r){try{return{type:"normal",arg:e.call(t,r)}}catch(e){return{type:"throw",arg:e}}}t.wrap=u;var d="suspendedStart",f="suspendedYield",h="executing",m="completed",v={};function g(){}function y(){}function b(){}var w={};s(w,i,(function(){return this}));var k=Object.getPrototypeOf,x=k&&k(k(j([])));x&&x!==r&&n.call(x,i)&&(w=x);var E=b.prototype=g.prototype=Object.create(w);function S(e){["next","throw","return"].forEach((function(t){s(e,t,(function(e){return this._invoke(t,e)}))}))}function N(e,t){function r(o,a,i,c){var l=p(e[o],e,a);if("throw"!==l.type){var s=l.arg,u=s.value;return u&&"object"==B(u)&&n.call(u,"__await")?t.resolve(u.__await).then((function(e){r("next",e,i,c)}),(function(e){r("throw",e,i,c)})):t.resolve(u).then((function(e){s.value=e,i(s)}),(function(e){return r("throw",e,i,c)}))}c(l.arg)}var a;o(this,"_invoke",{value:function(e,n){function o(){return new t((function(t,o){r(e,n,t,o)}))}return a=a?a.then(o,o):o()}})}function L(t,r,n){var o=d;return function(a,i){if(o===h)throw Error("Generator is already running");if(o===m){if("throw"===a)throw i;return{value:e,done:!0}}for(n.method=a,n.arg=i;;){var c=n.delegate;if(c){var l=O(c,n);if(l){if(l===v)continue;return l}}if("next"===n.method)n.sent=n._sent=n.arg;else if("throw"===n.method){if(o===d)throw o=m,n.arg;n.dispatchException(n.arg)}else"return"===n.method&&n.abrupt("return",n.arg);o=h;var s=p(t,r,n);if("normal"===s.type){if(o=n.done?m:f,s.arg===v)continue;return{value:s.arg,done:n.done}}"throw"===s.type&&(o=m,n.method="throw",n.arg=s.arg)}}}function O(t,r){var n=r.method,o=t.iterator[n];if(o===e)return r.delegate=null,"throw"===n&&t.iterator.return&&(r.method="return",r.arg=e,O(t,r),"throw"===r.method)||"return"!==n&&(r.method="throw",r.arg=new TypeError("The iterator does not provide a '"+n+"' method")),v;var a=p(o,t.iterator,r.arg);if("throw"===a.type)return r.method="throw",r.arg=a.arg,r.delegate=null,v;var i=a.arg;return i?i.done?(r[t.resultName]=i.value,r.next=t.nextLoc,"return"!==r.method&&(r.method="next",r.arg=e),r.delegate=null,v):i:(r.method="throw",r.arg=new TypeError("iterator result is not an object"),r.delegate=null,v)}function _(e){var t={tryLoc:e[0]};1 in e&&(t.catchLoc=e[1]),2 in e&&(t.finallyLoc=e[2],t.afterLoc=e[3]),this.tryEntries.push(t)}function T(e){var t=e.completion||{};t.type="normal",delete t.arg,e.completion=t}function V(e){this.tryEntries=[{tryLoc:"root"}],e.forEach(_,this),this.reset(!0)}function j(t){if(t||""===t){var r=t[i];if(r)return r.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var o=-1,a=function r(){for(;++o<t.length;)if(n.call(t,o))return r.value=t[o],r.done=!1,r;return r.value=e,r.done=!0,r};return a.next=a}}throw new TypeError(B(t)+" is not iterable")}return y.prototype=b,o(E,"constructor",{value:b,configurable:!0}),o(b,"constructor",{value:y,configurable:!0}),y.displayName=s(b,l,"GeneratorFunction"),t.isGeneratorFunction=function(e){var t="function"==typeof e&&e.constructor;return!!t&&(t===y||"GeneratorFunction"===(t.displayName||t.name))},t.mark=function(e){return Object.setPrototypeOf?Object.setPrototypeOf(e,b):(e.__proto__=b,s(e,l,"GeneratorFunction")),e.prototype=Object.create(E),e},t.awrap=function(e){return{__await:e}},S(N.prototype),s(N.prototype,c,(function(){return this})),t.AsyncIterator=N,t.async=function(e,r,n,o,a){void 0===a&&(a=Promise);var i=new N(u(e,r,n,o),a);return t.isGeneratorFunction(r)?i:i.next().then((function(e){return e.done?e.value:i.next()}))},S(E),s(E,l,"Generator"),s(E,i,(function(){return this})),s(E,"toString",(function(){return"[object Generator]"})),t.keys=function(e){var t=Object(e),r=[];for(var n in t)r.push(n);return r.reverse(),function e(){for(;r.length;){var n=r.pop();if(n in t)return e.value=n,e.done=!1,e}return e.done=!0,e}},t.values=j,V.prototype={constructor:V,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=e,this.done=!1,this.delegate=null,this.method="next",this.arg=e,this.tryEntries.forEach(T),!t)for(var r in this)"t"===r.charAt(0)&&n.call(this,r)&&!isNaN(+r.slice(1))&&(this[r]=e)},stop:function(){this.done=!0;var e=this.tryEntries[0].completion;if("throw"===e.type)throw e.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var r=this;function o(n,o){return c.type="throw",c.arg=t,r.next=n,o&&(r.method="next",r.arg=e),!!o}for(var a=this.tryEntries.length-1;a>=0;--a){var i=this.tryEntries[a],c=i.completion;if("root"===i.tryLoc)return o("end");if(i.tryLoc<=this.prev){var l=n.call(i,"catchLoc"),s=n.call(i,"finallyLoc");if(l&&s){if(this.prev<i.catchLoc)return o(i.catchLoc,!0);if(this.prev<i.finallyLoc)return o(i.finallyLoc)}else if(l){if(this.prev<i.catchLoc)return o(i.catchLoc,!0)}else{if(!s)throw Error("try statement without catch or finally");if(this.prev<i.finallyLoc)return o(i.finallyLoc)}}}},abrupt:function(e,t){for(var r=this.tryEntries.length-1;r>=0;--r){var o=this.tryEntries[r];if(o.tryLoc<=this.prev&&n.call(o,"finallyLoc")&&this.prev<o.finallyLoc){var a=o;break}}a&&("break"===e||"continue"===e)&&a.tryLoc<=t&&t<=a.finallyLoc&&(a=null);var i=a?a.completion:{};return i.type=e,i.arg=t,a?(this.method="next",this.next=a.finallyLoc,v):this.complete(i)},complete:function(e,t){if("throw"===e.type)throw e.arg;return"break"===e.type||"continue"===e.type?this.next=e.arg:"return"===e.type?(this.rval=this.arg=e.arg,this.method="return",this.next="end"):"normal"===e.type&&t&&(this.next=t),v},finish:function(e){for(var t=this.tryEntries.length-1;t>=0;--t){var r=this.tryEntries[t];if(r.finallyLoc===e)return this.complete(r.completion,r.afterLoc),T(r),v}},catch:function(e){for(var t=this.tryEntries.length-1;t>=0;--t){var r=this.tryEntries[t];if(r.tryLoc===e){var n=r.completion;if("throw"===n.type){var o=n.arg;T(r)}return o}}throw Error("illegal catch attempt")},delegateYield:function(t,r,n){return this.delegate={iterator:j(t),resultName:r,nextLoc:n},"next"===this.method&&(this.arg=e),v}},t}function L(e,t,r,n,o,a,i){try{var c=e[a](i),l=c.value}catch(e){return void r(e)}c.done?t(l):Promise.resolve(l).then(n,o)}function O(e){return function(){var t=this,r=arguments;return new Promise((function(n,o){var a=e.apply(t,r);function i(e){L(a,n,o,i,c,"next",e)}function c(e){L(a,n,o,i,c,"throw",e)}i(void 0)}))}}const _={components:{HalfCircleSpinner:((e,t)=>{const r=e.__vccOpts||e;for(const[e,n]of t)r[e]=n;return r})({name:"HalfCircleSpinner",props:{animationDuration:{type:Number,default:1e3},size:{type:Number,default:60},color:{type:String,default:"#fff"}},computed:{spinnerStyle(){return{height:`${this.size}px`,width:`${this.size}px`}},circleStyle(){return{borderWidth:this.size/10+"px",animationDuration:`${this.animationDuration}ms`}},circle1Style(){return Object.assign({borderTopColor:this.color},this.circleStyle)},circle2Style(){return Object.assign({borderBottomColor:this.color},this.circleStyle)}}},[["render",function(t,r,n,o,a,i){return(0,e.openBlock)(),(0,e.createElementBlock)("div",{class:"half-circle-spinner",style:(0,e.normalizeStyle)(i.spinnerStyle)},[(0,e.createElementVNode)("div",{class:"circle circle-1",style:(0,e.normalizeStyle)(i.circle1Style)},null,4),(0,e.createElementVNode)("div",{class:"circle circle-2",style:(0,e.normalizeStyle)(i.circle2Style)},null,4)],4)}]])},props:{updateUrl:String,updateId:String,version:String,firstStep:String,firstStepMessage:String,lastStep:String,isOutdated:Boolean,isActivated:Boolean},data:function(){return{askToProcessUpdate:!1,performingUpdate:!1,results:[],realPercent:0,percent:0,percentInterval:0,step:this.firstStep,loading:!1}},watch:{realPercent:function(){var e=this;this.percentInterval||(this.percentInterval=setInterval((function(){e.percent>=e.realPercent||(100!==e.percent?e.percent+=1:clearInterval(e.percentInterval))}),100))}},methods:{triggerAskToProcessUpdate:function(){this.isActivated?this.askToProcessUpdate=!0:$("#system-updater-confirm-modal").modal("show")},performUpdate:function(){var e=this;return O(C().mark((function t(){return C().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return e.loading=!0,e.performingUpdate=!0,e.realPercent=5,e.results.push({text:e.firstStepMessage,error:!1}),t.prev=4,t.next=7,e.triggerUpdate();case 7:setTimeout((function(){return e.refresh()}),3e4),t.next=13;break;case 10:t.prev=10,t.t0=t.catch(4),e.loading=!1;case 13:case"end":return t.stop()}}),t,null,[[4,10]])})))()},triggerUpdate:function(){var e=this;return O(C().mark((function t(){return C().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.abrupt("return",e.$httpClient.makeWithoutErrorHandler().post(e.updateUrl,{step_name:e.step,update_id:e.updateId,version:e.version}).then((function(t){var r=t.data;if(!r.data||!r.data.next_step||!r.data.next_message)throw new Error("Something went wrong, could not update the system.");if(e.step=r.data.next_step,e.realPercent=r.data.current_percent,e.results.push({text:r.data.next_message,error:!1}),r.data.next_step!==e.lastStep)return e.triggerUpdate();e.percent=100,e.loading=!1,clearInterval(e.percentInterval)})).catch((function(t){var r=t.message;throw e.loading=!1,t.data&&t.data.message?r=t.data.message:t.response&&t.response.data.message&&(r=t.response.data.message),e.results.push({text:r,error:!0}),t})));case 1:case"end":return t.stop()}}),t)})))()},refresh:function(){window.location.reload()}}};var T=r(132),V={insert:"head",singleton:!1};E()(T.A,V);T.A.locals;const j=(0,r(6262).A)(_,[["render",function(t,r,x,E,S,N){var B=(0,e.resolveComponent)("half-circle-spinner");return(0,e.openBlock)(),(0,e.createElementBlock)("div",n,[(0,e.renderSlot)(t.$slots,"default",(0,e.normalizeProps)((0,e.guardReactiveProps)({performUpdate:N.performUpdate})),void 0,!0),S.performingUpdate?(0,e.createCommentVNode)("",!0):((0,e.openBlock)(),(0,e.createElementBlock)("div",o,[S.askToProcessUpdate?(0,e.createCommentVNode)("",!0):((0,e.openBlock)(),(0,e.createElementBlock)("button",{key:0,type:"button",class:"btn btn-warning",onClick:r[0]||(r[0]=(0,e.withModifiers)((function(){return N.triggerAskToProcessUpdate&&N.triggerAskToProcessUpdate.apply(N,arguments)}),["prevent"]))},[x.isOutdated?((0,e.openBlock)(),(0,e.createElementBlock)("svg",c,l)):((0,e.openBlock)(),(0,e.createElementBlock)("svg",a,i)),x.isOutdated?((0,e.openBlock)(),(0,e.createElementBlock)("span",s,"Download & Install Update")):((0,e.openBlock)(),(0,e.createElementBlock)("span",u,"Re-install The Latest Version"))])),S.askToProcessUpdate?((0,e.openBlock)(),(0,e.createElementBlock)("button",{key:1,type:"button",class:"btn btn-danger",onClick:r[1]||(r[1]=function(){return N.performUpdate&&N.performUpdate.apply(N,arguments)})},[p,(0,e.createTextVNode)(" Click To Confirm! ")])):(0,e.createCommentVNode)("",!0)])),S.performingUpdate?((0,e.openBlock)(),(0,e.createElementBlock)("div",d,[(0,e.createElementVNode)("div",f,[(0,e.createElementVNode)("div",h,[S.loading?((0,e.openBlock)(),(0,e.createElementBlock)("div",m,[(0,e.createVNode)(B,{"animation-duration":1e3,size:32})])):(0,e.createCommentVNode)("",!0),(0,e.createElementVNode)("div",{class:"percent",textContent:(0,e.toDisplayString)("".concat(S.percent,"%"))},null,8,v),(0,e.createElementVNode)("div",g,[((0,e.openBlock)(!0),(0,e.createElementBlock)(e.Fragment,null,(0,e.renderList)(S.results,(function(t){return(0,e.openBlock)(),(0,e.createElementBlock)("p",{textContent:(0,e.toDisplayString)(t.text),class:(0,e.normalizeClass)(t.error?"bold text-pink red-shadow":"bold")},null,10,y)})),256))]),S.loading?((0,e.openBlock)(),(0,e.createElementBlock)("div",b,w)):((0,e.openBlock)(),(0,e.createElementBlock)("div",k,[(0,e.createElementVNode)("div",{class:"btn btn-info",onClick:r[2]||(r[2]=function(){return N.refresh&&N.refresh.apply(N,arguments)})},"Click Here To Exit")]))])])])):(0,e.createCommentVNode)("",!0)])}],["__scopeId","data-v-0bf1ee7b"]]);"undefined"!=typeof vueApp&&vueApp.booting((function(e){e.component("system-update-component",j)}))})()})();