import{d as t}from"./dom-e3fa5208.js";import{f as o,c as e}from"./dom-utils-751497ba.js";import"./browser-f8f6e902.js";import"./common-eb095e4d.js";import"./_tslib-6e8ca86b.js";import"./css-classes-f45f6949.js";const n="div.dx-blazor-widget",i=".dx-chart-tooltip",l=".dx-tooltip-pointer";let s;function c(t){t.isPointerOut&&d(t.element.closest(n),!1)}function r(o,c){const r=o.target;r&&r.series&&(s=r,c.invokeMethodAsync("ShowTooltip",r.data,r.tag,r.series.index).then((()=>{s===r&&function(o,s,c){const r=o.closest(n),d=null==r?void 0:r.querySelector(i);if(!d)return;const u=d.offsetParent,a=c-t.DomUtils.getAbsolutePositionY(u);let f=s-t.DomUtils.getAbsolutePositionX(u),p=0;const m=function(t,o,e,n){let i=null;const l=o.getBoundingClientRect().width/2,s=n.getBoundingClientRect();if(t<l){const t=n.offsetParent,o=(null==t?void 0:t.getBoundingClientRect().left)||0;i=s.left-o+l}else{const o=(e.getBoundingClientRect().width+s.width)/2;t+l>o&&(i=o-l)}return i}(f,d,r,o);null!==m&&(p=f-m,f=m);!function(t,o,n,i){const s=i.querySelector(l),c=`calc(${o}px - 0.625rem)`,r=`${t}px`,d=i.classList,u=0!==n?`calc(50% + ${n}px)`:"50%";e((function(){i.style.top=c,i.style.left=r,s.style.left=u,d.contains("show")||d.add("show")}))}(f,a,p,d)}(o.element,o.x,o.y)})))}function d(t,n){n&&s&&s.series&&s.clearHover();const l=null==(t=o(t))?void 0:t.querySelector(i);l&&e((()=>l.classList.remove("show"))),s=null}function u(t){return{onTooltipHidden:c,onTooltipShown:o=>r(o,t)}}function a(t){var o,e;return{enabled:!1,forceEvents:!!(null===(o=t.tooltip)||void 0===o?void 0:o.enabled),location:(null===(e=t.tooltip)||void 0===e?void 0:e.location)||void 0}}const f={hideTooltip:d};export{f as default,u as getTooltipHandlers,a as getTooltipSettings,d as hideTooltip};