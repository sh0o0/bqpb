CREATE TEMP FUNCTION parseProtobuf(input BYTES)
RETURNS JSON DETERMINISTIC
LANGUAGE js
AS r"""
// bqpb v0.1.0
// (c) 2023, Masaki Hara. Licensed under the MIT License.
"use strict";function t(t){return n(H(t,"",{}))}function n(t){switch(typeof t){
case"string":const[,r,e]=t.split(":")
;return r.startsWith("string")?e:r.startsWith("int")?parseInt(e):`${r}:${t}`
;case"object":if(Array.isArray(t))return t.map((t=>n(t)));{
const r=Object.entries(t);return Object.fromEntries(r.map((([t,r])=>[t,n(r)])))
}default:return t}}function r(t){
const n=(t+"=").indexOf("="),r=new Uint8Array(.75*n|0);for(let e=0;n>e;e++){
const n=t.charCodeAt(e),o=.75*e+.75|0,i=n-(96>n?64>n?48>n?47>n?-19:-16:-4:65:71)<<2+e%4*2
;r[o-1]|=i>>8,r[o]|=i}return r}function e(t){
const n=new Array(4*((t.length+2)/3|0)),r=(4*t.length+2)/3|0
;for(let e=0;r>e;e++){const r=.75*e+.75|0,o=(t[r-1]<<8|t[r])>>2+e%4*2&63
;n[e]=o+(26>o?65:52>o?71:62>o?-4:63>o?-19:-16)}
for(let t=r;t<n.length;t++)n[t]=61;return String.fromCharCode(...n)}
function o(t){try{
return decodeURIComponent(Array.from(t).map((t=>`%${t.toString(16).padStart(2,"0")}`)).join(""))
}catch(t){throw new Error("Invalid UTF-8 sequence")}}function i(t){
if(t.p>=t.b.length)throw new Error("Unexpected EOF");return t.b[t.p++]}
function u(t){let n=0n,r=0n;for(;;){const e=i(t)
;if(n|=BigInt(127&e)<<r,128>e)break;r+=7n}return n}function s(t,n){let r=0n
;for(let e=0;n>e;e++){const n=i(t);r|=BigInt(n)<<BigInt(8*e)}return r}
function f(t,n){const r=[];for(;;){const e=c(t,n);if(null==e)break;r.push(e)}
return r}function c(t,n){if(null==n&&t.p>=t.b.length)return null
;const r=u(t),e=Number(7n&r),o=r>>3n;switch(e){case 0:return{f:o,w:e,v:u(t)}
;case 1:case 5:return{f:o,w:e,v:s(t,1===e?8:4)};case 2:{const n=Number(u(t))
;if(t.p+n>t.b.length)throw new Error("Unexpected EOF")
;const r=t.b.subarray(t.p,t.p+n);return t.p+=n,{f:o,w:e,v:r}}case 3:return{f:o,
w:e,v:f(t,o)};case 4:if(o===n)return null;throw new Error("Invalid group")
;default:throw new Error("Unexpected wire type")}}function a(t){return f({b:t,
p:0})}function l(t,n,r){return p(a(t),n,r)}function p(t,n,r){const e=K(t,n,r)
;return void 0!==e?e:w(t,n,r)}function w(t,n,r){const i={}
;for(const n of t)(i[n.f]??=[]).push(n);const f={},c=r[`message ${n}`]
;if(c)for(const[t,n]of Object.entries(c)){const e=i[n.id]??[];delete i[n.id]
;const o=J(n.type,r,n.messageEncoding),c=null!=n.oneofGroup?"explicit":n.fieldPresence??"explicit"
;let a,l;if(o===j){const t=e.map((t=>M(t,o,n.type,r)))
;a=Object.fromEntries(t),l=!0}else if(n.repeated){let t=e;if(V>o){t=[]
;for(const r of e){if(2!==r.w){t.push(r);continue}const e={b:r.v,p:0}
;for(;e.p<r.v.length;)B>o?t.push({f:BigInt(n.id),w:0,v:u(e)}):t.push({
f:BigInt(n.id),w:N>o?5:1,v:s(e,N>o?4:8)})}}a=t.map((t=>M(t,o,n.type,r))),l=!0
}else"explicit"===c?(a=e.length>0?M(e[e.length-1],o,n.type,r):null,
l=e.length>0):(a=e.length>0?M(e[e.length-1],o,n.type,r):q(o,n.type,r),l=!0)
;l&&(f[t]=a)}for(const t of Object.values(i)){const n=t[0].f,i=t.map((t=>{
if(2===t.w){try{const n=o(t.v)
;if(!/[\0-\x08\x0b-\x1F\x7F]/.test(n))return`unknown:string:${n}`}catch(t){}
try{return l(t.v,"",r)}catch(t){}return`unknown:bytes:${e(t.v)}`}
if(3===t.w)return p(t.v,"",r);{
const n=1===t.w?"double":5===t.w?"float":0x100000000n>t.v?"int32":"int64"
;return`unknown:${n}:${M(t,J(n,r),n,r)}`}}));f[`#${n}`]=1===i.length?i[0]:i}
return f}
const g=0,d=1,b=8,h=9,m=11,v=12,y=13,F=15,$=16,x=17,E=19,S=20,O=21,I=23,A=24,j=25,L=26,U=27,k=28,B=16,N=20,V=24,C=28
;function W(t){return 3==(3&t)}function D(t){return 1==(1&t)}function T(t){
return 4==(4&t)}function Z(t){return t>=d&&O>=t&&t!=E||t===U}function q(t,n,r){
if(t===g){const t=r[`enum ${n}`];return Object.entries(t)[0][0]??0}return z[t]}
const z={[d]:!1,[b]:0,[h]:0,[m]:0,[v]:"0",[y]:"0",[F]:"0",[$]:0,[x]:0,[E]:0,
[S]:"0",[O]:"0",[I]:0,[A]:null,[L]:"",[U]:""},G={bool:d,uint32:b,int32:h,
sint32:m,uint64:v,int64:y,sint64:F,fixed32:$,sfixed32:x,float:E,fixed64:S,
sfixed64:O,double:I,bytes:L,string:U};function J(t,n,r){
return t in G?G[t]:t.startsWith("map<")?j:`enum ${t}`in n?g:"delimited"===r?k:A
}function M(t,n,r,i){if(V>n){const e=B>n?0:N>n?5:1
;if(t.w!==e)throw new Error(`Expected wire type ${e}, got ${t.w}`)
;if(n===d)return!!t.v;if(n===g){const n=i[`enum ${r}`]
;for(const[r,e]of Object.entries(n))if(e===Number(t.v))return r
;return Number(t.v)}if(n===E)return P(_(t.v));if(n===I)return P(R(t.v))
;const o=W(n)?t.v>>1n^-(1n&t.v):D(n)?T(n)?(0xFFFFFFFFFFFFFFFFn&t.v)-((t.v>>63n&1n)<<64n):(0xFFFFFFFFn&t.v)-((t.v>>31n&1n)<<32n):t.v
;return T(n)?String(o):Number(o)}if(C>n){
if(2!==t.w)throw new Error(`Expected wire type 2, got ${t.w}`)
;if(n===L)return e(t.v);if(n===U)return o(t.v);if(n===j){
const n=r.indexOf(","),e=r.lastIndexOf(">"),o=r.slice(4,n).trim(),u=r.slice(n+1,e).trim(),s=J(o,i),f=J(u,i)
;if(!Z(s)||f===j)throw new Error("Invalid map type")
;const c=a(t.v),l=c.findLast((t=>1n===t.f)),p=c.findLast((t=>2n===t.f))
;if(!l||!p)return null;return[M(l,s,o,i),M(p,f,u,i)]}return l(t.v,r,i)}
if(3!==t.w)throw new Error(`Expected wire type 3, got ${t.w}`)
;return p(t.v,r,i)}function P(t){return 1/t==0||t!=t?`${t}`:t}function R(t){
return new Float64Array(BigUint64Array.of(t).buffer)[0]}function _(t){
return new Float32Array(Uint32Array.of(Number(t)).buffer)[0]}function H(t,n,e){
return l(r(t),n,e)}function K(t,n,r){
if(!n.startsWith("google.protobuf."))return;const e=n.slice(16)
;if(/^(U?Int(32|64)|Double|Float|Bool|String|Bytes)Value$/.test(e)){
const n=e.slice(0,-5).toLowerCase(),o=J(n,r),i=t.findLast((t=>1n===t.f))
;return i?M(i,o,n,r):q(o,n,r)}switch(e){case"Any":{
const n=t.findLast((t=>1n===t.f)),e=t.findLast((t=>2n===t.f)),o=n?M(n,U,"string",r):""
;if(e&&2!==e.w)throw new Error(`Expected wire type 2, got ${e.w}`)
;const i=e?.v??new Uint8Array;if(o.startsWith("type.googleapis.com/")){
const t=o.slice(20),n=a(i),e=K(n,t,r);return void 0!==e?{"@type":o,value:e}:{
"@type":o,...w(n,t,r)}}break}case"Value":{
const n=t.findLast((t=>t.f>=1n&&7n>=t.f))
;if(!n)throw new Error("Invalid JSON Value");switch(n.f){case 1n:
return M(n,b,"uint32",r),null;case 2n:return M(n,I,"bool",r);case 3n:
return M(n,U,"string",r);case 4n:return M(n,d,"bool",r);case 5n:
return M(n,A,"google.protobuf.Struct",r);case 6n:
return M(n,A,"google.protobuf.ListValue",r)}break}case"Struct":{
const n=t.filter((t=>1n===t.f)).map((t=>M(t,j,"map<string,google.protobuf.Value>",r)))
;return Object.fromEntries(n)}case"ListValue":
return t.filter((t=>1n===t.f)).map((t=>M(t,A,"google.protobuf.Value",r)))
;case"FieldMask":
return t.filter((t=>1n===t.f)).map((t=>M(t,U,"string",r))).map((t=>t.replace(/_([a-z])/g,((t,n)=>n.toUpperCase())))).join(",")
;case"Timestamp":case"Duration":{
const n=t.findLast((t=>1n===t.f)),o=t.findLast((t=>2n===t.f)),i=n?Number(M(n,y,"",r)):0,u=o?M(o,h,"",r):0
;if("Timestamp"===e){
return new Date(1e3*i+u/1e6).toISOString().replace(/Z$/,`${(u%1e6).toString().padStart(6,"0")}Z`)
}
return 0>i?`-${-i}.${(-u).toString().padStart(9,"0")}s`:`${i}.${u.toString().padStart(9,"0")}s`
}}}return t(input);
""";
