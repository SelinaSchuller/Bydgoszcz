import{d as t}from"./dom-e3fa5208.js";import{D as e}from"./dx-html-element-base-3bcbe019.js";import{S as l}from"./scroll-viewer-css-classes-6b178e01.js";import{D as r}from"./data-qa-utils-8be7c726.js";class n{constructor(){this._visible=!1,this._contentElementInfo={scrollStart:0,clientSize:0,scrollSize:0},this._scrollBarStart=0,this._scrollBarEnd=0,this._scrollBarOffset=0,this._scrollBarThickness=0,this._thumbStart=0,this._thumbEnd=0}get visible(){return this._visible}set visible(t){this._visible=t}get contentElementInfo(){return this._contentElementInfo}set contentElementInfo(t){this._contentElementInfo=t}get scrollBarStart(){return this._scrollBarStart}set scrollBarStart(t){this._scrollBarStart=t}get scrollBarEnd(){return this._scrollBarEnd}set scrollBarEnd(t){this._scrollBarEnd=t}get scrollBarOffset(){return this._scrollBarOffset}set scrollBarOffset(t){this._scrollBarOffset=t}get scrollBarThickness(){return this._scrollBarThickness}set scrollBarThickness(t){this._scrollBarThickness=t}get thumbStart(){return this._thumbStart}set thumbStart(t){this._thumbStart=t}get thumbEnd(){return this._thumbEnd}set thumbEnd(t){this._thumbEnd=t}}class o{get scrollBarInfo(){return this._scrollBarInfo}get contentElementInfo(){return this.scrollBarInfo.contentElementInfo}constructor(t){this._scrollBarInfo=t,this.thumbSize=20,this._scrollBarInfo.scrollBarEnd=this._scrollBarInfo.contentElementInfo.clientSize,this.recalculate()}scrollByPointerClick(t){const e=this.contentElementInfo.scrollSize-this.contentElementInfo.clientSize;this.contentElementInfo.scrollStart=e*t/this.getScrollBarSize(),this.contentElementInfo.scrollStart=Math.max(0,this.contentElementInfo.scrollStart),this.contentElementInfo.scrollStart=Math.min(e,this.contentElementInfo.scrollStart),this.recalculate()}scrollByPointerMove(t){const e=this.contentElementInfo.scrollSize-this.contentElementInfo.clientSize,l=e/(this.getScrollBarSize()-this.thumbSize);this.contentElementInfo.scrollStart=this.contentElementInfo.scrollStart+t*l,this.contentElementInfo.scrollStart=Math.max(0,this.contentElementInfo.scrollStart),this.contentElementInfo.scrollStart=Math.min(e,this.contentElementInfo.scrollStart),this.recalculate()}recalculate(){this.recalculateThumb()}recalculateThumb(){this.thumbSize=this.calculateThumbSize(),this._scrollBarInfo.visible=this.scrollBarInfo.contentElementInfo.scrollSize>this.scrollBarInfo.contentElementInfo.clientSize,this._scrollBarInfo.thumbStart=this.calculateThumbStart(),this._scrollBarInfo.thumbEnd=this._scrollBarInfo.thumbStart+this.thumbSize}calculateThumbSize(){const t=this.getScrollBarSize(),e=t*this.scrollBarInfo.contentElementInfo.clientSize/this.scrollBarInfo.contentElementInfo.scrollSize;return t>20?Math.max(e,20):e}calculateThumbStart(){const t=(this.getScrollBarSize()-this.thumbSize)/(this.scrollBarInfo.contentElementInfo.scrollSize-this.scrollBarInfo.contentElementInfo.clientSize);return this.scrollBarInfo.contentElementInfo.scrollStart*t}getScrollBarSize(){return this._scrollBarInfo.scrollBarEnd-this._scrollBarInfo.scrollBarStart}}class i{constructor(t){this._offsets={left:0,right:0,top:0,bottom:0},this._verticalScrollBarInfo=new n,this._horizontalScrollBarInfo=new n,this._verticalThumbCalculator=new o(this._verticalScrollBarInfo),this._horizontalThumbCalculator=new o(this._horizontalScrollBarInfo),this.updateScrollableElementInfo(t)}get verticalScrollBarInfo(){return this._verticalScrollBarInfo}get horizontalScrollBarInfo(){return this._horizontalScrollBarInfo}updateScrollableElementInfo(t){this._verticalScrollBarInfo.contentElementInfo.scrollStart=t.scrollTop||0,this._verticalScrollBarInfo.contentElementInfo.scrollSize=t.scrollHeight||0;const e=t.getBoundingClientRect();this._verticalScrollBarInfo.contentElementInfo.clientSize=Math.ceil(e.height),this._horizontalScrollBarInfo.contentElementInfo.scrollStart=t.scrollLeft||0,this._horizontalScrollBarInfo.contentElementInfo.scrollSize=t.scrollWidth||0,this._horizontalScrollBarInfo.contentElementInfo.clientSize=t.clientWidth||0,this.recalculate()}initScrollBarsThickness(t,e){this._verticalScrollBarInfo.scrollBarThickness=t,this._horizontalScrollBarInfo.scrollBarThickness=e}updateTopPanelHeight(t){this._offsets.top=t,this.recalculate()}updateBottomPanelHeight(t){this._offsets.bottom=t,this.recalculate()}updateLeftPanelWidth(t){this._offsets.left=t,this.recalculate()}updateRightPanelWidth(t){this._offsets.right=t,this.recalculate()}vertScrollByPointerMove(t){this._verticalThumbCalculator.scrollByPointerMove(t),this.recalculate()}vertScrollByPointerClick(t){this._verticalThumbCalculator.scrollByPointerClick(t),this.recalculate()}horScrollByPointerMove(t){this._horizontalThumbCalculator.scrollByPointerMove(t),this.recalculate()}horScrollByPointerClick(t){this._horizontalThumbCalculator.scrollByPointerClick(t),this.recalculate()}recalculate(){this._verticalScrollBarInfo.scrollBarStart=this._offsets.top,this._verticalScrollBarInfo.scrollBarEnd=this._verticalScrollBarInfo.contentElementInfo.clientSize-this._offsets.bottom,this._horizontalScrollBarInfo.scrollBarStart=this._offsets.left,this._horizontalScrollBarInfo.scrollBarEnd=this._horizontalScrollBarInfo.contentElementInfo.clientSize-this._offsets.right,this._verticalScrollBarInfo.scrollBarOffset=this._offsets.right,this._horizontalScrollBarInfo.scrollBarOffset=this._offsets.bottom,this._verticalThumbCalculator.recalculate(),this._horizontalThumbCalculator.recalculate(),this._horizontalScrollBarInfo.visible&&(this._verticalScrollBarInfo.thumbEnd-=this._horizontalScrollBarInfo.scrollBarThickness)}}var s;!function(t){t[t.Vertical=0]="Vertical",t[t.Horizontal=1]="Horizontal"}(s||(s={}));class c extends e{constructor(){super(),this.thumbElement=null,this._mode=s.Vertical,this._info=null}initializeComponent(){super.initializeComponent(),this.thumbElement=this.getThumbElement(),this.thumbElement.addEventListener("click",c.onThumbElementClick)}disposeComponent(){super.disposeComponent(),this.thumbElement&&this.thumbElement.removeEventListener("click",c.onThumbElementClick)}get mode(){return this._mode}set mode(t){this._mode=t}get info(){return this._info}set info(t){this._info=t,this.applyUIChanges()}getThumbThickness(){if(!this.thumbElement)return 0;const e=t.DomUtils.getCurrentStyle(this.thumbElement);return parseInt(this.mode===s.Vertical?e.width:e.height)}applyUIChanges(){if(!this.isInitialized)return;if(!this.info||!this.info.visible)return void t.DomUtils.removeClassName(this,l.ScrollBarActiveClassName);const e=this.info.thumbEnd-this.info.thumbStart+"px";this.mode===s.Vertical?this.applyVerticalScrollUIChanges(e):this.applyHorizontalScrollUIChanges(e),t.DomUtils.addClassName(this,l.ScrollBarActiveClassName)}applyVerticalScrollUIChanges(t){this.thumbElement&&this.info&&(this.thumbElement.style.height=t,this.thumbElement.style.transform=`translateY(${this.info.thumbStart}px)`,this.style.top=this.info.scrollBarStart+"px",this.style.bottom=this.info.contentElementInfo.clientSize-this.info.scrollBarEnd+"px",this.style.right=this.info.scrollBarOffset+"px")}applyHorizontalScrollUIChanges(t){this.thumbElement&&this.info&&(this.thumbElement.style.width=t,this.thumbElement.style.transform=`translateX(${this.info.thumbStart}px)`,this.style.left=this.info.scrollBarStart+"px",this.style.right=this.info.contentElementInfo.clientSize-this.info.scrollBarEnd+"px",this.style.bottom=this.info.scrollBarOffset+"px")}getThumbElement(){return this.querySelector(`.${l.ScrollBarThumbClassName}`)}static onThumbElementClick(t){t.stopPropagation()}}const h="dxbl-scroll-viewer",a=40;var u,m,S;!function(t){t[t.Top=0]="Top",t[t.Bottom=1]="Bottom"}(u||(u={})),function(t){t[t.All=0]="All",t[t.ScrollBars=1]="ScrollBars",t[t.ScrollPosition=2]="ScrollPosition"}(m||(m={})),function(t){t[t.Horizontal=0]="Horizontal",t[t.Vertical=1]="Vertical",t[t.Both=2]="Both"}(S||(S={}));class f extends CustomEvent{constructor(){super(f.eventName,{bubbles:!0,composed:!1,cancelable:!0})}}f.eventName="dxscrollviewerupdate";class b extends CustomEvent{constructor(t,e){super(b.eventName,{detail:{element:t,isFocusRequired:e},bubbles:!0,composed:!1})}}b.eventName="dxscrollviewervisibleelementchanged";class d extends e{get isRefreshUIRequested(){return!!this.pendingRefreshUi}constructor(){super(),this.scrollAttributeLifespanTimeoutId=null,this.pendingRefreshUi=null,this.autoScrollingMode=null,this.autoScrollingRect=null,this.autoScrollingRafID=-1,this.autoScrollingCallback=null,this.contentContainerScrollingCallback=null,this.boundOnContentScrollHandler=this.onContentScroll.bind(this),this.boundOnVerticalScrollBarClickHandler=this.onVerticalScrollBarClick.bind(this),this.boundOnVerticalScrollThumbMoveHandler=this.onVerticalScrollThumbMove.bind(this),this.boundOnHorizontalScrollBarClickHandler=this.onHorizontalScrollBarClick.bind(this),this.boundOnHorizontalScrollThumbMoveHandler=this.onHorizontalScrollThumbMove.bind(this),this.boundOnDocumentMouseMoveHandler=this.onDocumentMouseMove.bind(this),this.preventScrollEvent=!1,this.contentContainerElement=null,this.verticalScrollBarElement=null,this.horizontalScrollBarElement=null,this.scrollController=null,this.contentResizeObserver=new ResizeObserver(this.onContentSizeChanged.bind(this)),this.headerResizeObserver=new ResizeObserver(this.onHeaderSizeChanged.bind(this)),this.footerResizeObserver=new ResizeObserver(this.onFooterSizeChanged.bind(this)),this.leftResizeObserver=new ResizeObserver(this.onLeftSizeChanged.bind(this)),this.rightResizeObserver=new ResizeObserver(this.onRightSizeChanged.bind(this))}get useShadowDom(){return!1}get headerSelector(){return this.getAttribute("header-selector")}get footerSelector(){return this.getAttribute("footer-selector")}get leftSelector(){return this.getAttribute("left-selector")}get rightSelector(){return this.getAttribute("right-selector")}getContentContainerElement(){return this.contentContainerElement}getVerticalScrollBarElement(){return this.verticalScrollBarElement}getHorizontalScrollBarElement(){return this.horizontalScrollBarElement}initializeComponent(){super.initializeComponent(),this.initializeInnerHTMLElements(),this.initializeScrollController(),this.connectResizeObservers()}afterInitialize(){super.afterInitialize(),this.refreshScrollPosition()}disposeComponent(){super.disposeComponent(),this.releaseInnerHTMLElements(),this.scrollController=null,this.contentResizeObserver.disconnect(),this.headerResizeObserver.disconnect(),this.footerResizeObserver.disconnect(),this.leftResizeObserver.disconnect(),this.rightResizeObserver.disconnect()}getRectangle(){const{left:t,top:e,width:l,height:r}=this.getBoundingClientRect();return{x:t,y:e,width:l,height:r}}getDataAreaRectangle(){const t=this.getRectangle(),e=this.getHeaderElement();if(e){const l=e.getBoundingClientRect().height;t.height-=l,t.y+=l}const l=this.getFooterElement();return l&&(t.height-=l.getBoundingClientRect().height),t}onDocumentMouseMove(t){this.performAutoScrolling(t)}startAutoScrolling(t,e=null,l=null){this.autoScrollingMode=t,this.autoScrollingCallback=e;const r=this.getRectangle();l&&l(r),this.autoScrollingRect=r,document.addEventListener("pointermove",this.boundOnDocumentMouseMoveHandler)}stopAutoScrolling(){document.removeEventListener("pointermove",this.boundOnDocumentMouseMoveHandler),this.stopAutoScrollingTimer(),this.autoScrollingCallback=null,this.autoScrollingRect=null,this.autoScrollingMode=null}subscribeToScroll(t=null){this.contentContainerScrollingCallback=t}unsubscribeFromScroll(){this.contentContainerScrollingCallback=null}get isHorizontalAutoScrollingEnabled(){return this.autoScrollingMode===S.Horizontal||this.autoScrollingMode===S.Both}get isVerticalAutoScrollingEnabled(){return this.autoScrollingMode===S.Vertical||this.autoScrollingMode===S.Both}performAutoScrolling(t){if(this.stopAutoScrollingTimer(),void 0!==this.autoScrollingMode&&this.autoScrollingRect){const e=this.autoScrollingRect,l=e.x<=t.pageX&&t.pageX<=e.x+e.width,r=e.y<=t.pageY&&t.pageY<=e.y+e.height;let n=0,o=0;if(this.isHorizontalAutoScrollingEnabled&&l&&r){const l=t.pageX-e.x;0<=l&&l<=a&&(n=-(a-l)/2);const r=e.x+e.width-t.pageX;0<=r&&r<=a&&(n=(a-r)/2)}if(this.isVerticalAutoScrollingEnabled&&l&&r){const l=t.pageY-e.y;0<=l&&l<=a&&(o=-(a-l)/2);const r=e.y+e.height-t.pageY;0<=r&&r<=a&&(o=(a-r)/2)}0===n&&0===o||this.startAutoScrollingTimer(t,n,o)}}startAutoScrollingTimer(t,e,l){this.autoScrollingRafID=requestAnimationFrame((()=>{this.contentContainerElement&&(this.contentContainerElement.scrollBy(e,l),this.refresh(m.ScrollBars)),this.autoScrollingCallback&&this.autoScrollingCallback(t),this.performAutoScrolling(t)}))}stopAutoScrollingTimer(){this.autoScrollingRafID>-1&&(cancelAnimationFrame(this.autoScrollingRafID),this.autoScrollingRafID=-1)}releaseInnerHTMLElements(){this.contentContainerElement&&this.contentContainerElement.removeEventListener("scroll",this.boundOnContentScrollHandler),this.verticalScrollBarElement&&this.unsubscribeEvents(this.verticalScrollBarElement,this.boundOnVerticalScrollBarClickHandler,this.boundOnVerticalScrollThumbMoveHandler),this.horizontalScrollBarElement&&this.unsubscribeEvents(this.horizontalScrollBarElement,this.boundOnHorizontalScrollBarClickHandler,this.boundOnHorizontalScrollThumbMoveHandler),this.contentContainerElement=null,this.verticalScrollBarElement=null,this.horizontalScrollBarElement=null}getHeaderElement(){return this.headerSelector?this.querySelector(this.headerSelector):null}getFooterElement(){return this.footerSelector?this.querySelector(this.footerSelector):null}getLeftElement(){return this.leftSelector?this.querySelector(this.leftSelector):null}getRightElement(){return this.rightSelector?this.querySelector(this.rightSelector):null}subscribeEvents(t,e,l){t.addEventListener("click",e),t.addEventListener("dxthumbdragdelta",l)}unsubscribeEvents(t,e,l){t.removeEventListener("click",e),t.removeEventListener("dxthumbdragdelta",l)}refreshUI(){this.refresh(m.All),this.dispatchEvent(new f)}refreshScrollPosition(){this.refresh(m.ScrollPosition),this.dispatchEvent(new f)}refresh(t){if(this.pendingRefreshUi){t===m.ScrollBars&&t!==this.pendingRefreshUi.refreshType&&this.contentContainerElement&&(this.pendingRefreshUi.scrollTop=this.contentContainerElement.scrollTop,this.pendingRefreshUi.scrollLeft=this.contentContainerElement.scrollLeft,this.pendingRefreshUi.refreshType===m.ScrollPosition&&(this.pendingRefreshUi.refreshType=m.All))}else this.pendingRefreshUi={refreshType:t},requestAnimationFrame((()=>{const{refreshType:t,scrollTop:e,scrollLeft:l}=this.pendingRefreshUi;if(this.pendingRefreshUi=null,!this.scrollController)return;const r=this.scrollController.verticalScrollBarInfo,n=this.scrollController.horizontalScrollBarInfo;this.contentContainerElement&&(t!==m.All&&t!==m.ScrollPosition||(this.contentContainerElement.scrollTop=null!=e?e:r.contentElementInfo.scrollStart,this.contentContainerElement.scrollLeft=null!=l?l:n.contentElementInfo.scrollStart),t!==m.All&&t!==m.ScrollBars||this.updateScrollableElementInfo(this.contentContainerElement)),this.verticalScrollBarElement&&(this.verticalScrollBarElement.info=r),this.horizontalScrollBarElement&&(this.horizontalScrollBarElement.info=n),this.contentContainerElement&&this.onRefresh(this.contentContainerElement.scrollTop,this.contentContainerElement.scrollLeft),this.preventScrollEvent=!1}))}onRefresh(t,e){this.contentContainerScrollingCallback&&this.contentContainerScrollingCallback(t,e)}initializeInnerHTMLElements(){this.contentContainerElement=this.querySelector(`.${l.ContentContainerClassName}`),this.contentContainerElement.addEventListener("scroll",this.boundOnContentScrollHandler),this.verticalScrollBarElement=this.getScrollElement(l.VerticalScrollBarClassName),this.verticalScrollBarElement.mode=s.Vertical,this.subscribeEvents(this.verticalScrollBarElement,this.boundOnVerticalScrollBarClickHandler,this.boundOnVerticalScrollThumbMoveHandler),this.horizontalScrollBarElement=this.getScrollElement(l.HorizontalScrollBarClassName),this.horizontalScrollBarElement.mode=s.Horizontal,this.subscribeEvents(this.horizontalScrollBarElement,this.boundOnHorizontalScrollBarClickHandler,this.boundOnHorizontalScrollThumbMoveHandler)}initializeScrollController(){if(this.contentContainerElement&&this.verticalScrollBarElement&&this.horizontalScrollBarElement&&(this.scrollController=new i(this.contentContainerElement),this.verticalScrollBarElement instanceof c&&this.horizontalScrollBarElement instanceof c)){const t=this.verticalScrollBarElement.getThumbThickness(),e=this.horizontalScrollBarElement.getThumbThickness();this.scrollController.initScrollBarsThickness(t,e)}}updateScrollableElementInfo(t){this.scrollController&&t&&(t.classList.add(l.ContentContainerCalculatingClassName),this.scrollController.updateScrollableElementInfo(t),t.classList.remove(l.ContentContainerCalculatingClassName))}connectResizeObservers(){if(this.contentContainerElement){this.contentResizeObserver.observe(this);for(let t=0;t<this.contentContainerElement.children.length;t++)this.contentResizeObserver.observe(this.contentContainerElement.children[t]);this.connectHeaderResizeObserver(),this.connectFooterResizeObserver(),this.connectLeftResizeObserver(),this.connectRightResizeObserver()}}connectHeaderResizeObserver(){const t=this.getHeaderElement();t&&this.headerResizeObserver.observe(t)}connectFooterResizeObserver(){const t=this.getFooterElement();t&&this.footerResizeObserver.observe(t)}connectLeftResizeObserver(){const t=this.getLeftElement();t&&this.leftResizeObserver.observe(t)}connectRightResizeObserver(){const t=this.getRightElement();t&&this.rightResizeObserver.observe(t)}reconnectHeaderResizeObserver(){this.headerResizeObserver.disconnect(),this.connectHeaderResizeObserver()}reconnectFooterResizeObserver(){this.footerResizeObserver.disconnect(),this.connectFooterResizeObserver()}reconnectLeftResizeObserver(){this.leftResizeObserver.disconnect(),this.connectLeftResizeObserver()}reconnectRightResizeObserver(){this.rightResizeObserver.disconnect(),this.connectRightResizeObserver()}onContentScroll(t){this.preventScrollEvent||(this.refresh(m.ScrollBars),this.setScrollAttribute())}setScrollAttribute(){const t="scrolling";r.setAttribute(this,t),this.scrollAttributeLifespanTimeoutId&&clearTimeout(this.scrollAttributeLifespanTimeoutId),this.scrollAttributeLifespanTimeoutId=setTimeout((()=>{r.removeAttribute(this,t)}),2e3)}onVerticalScrollBarClick(t){this.scrollController&&(this.scrollController.vertScrollByPointerClick(t.offsetY),this.refreshScrollPosition())}onHorizontalScrollBarClick(t){this.scrollController&&(this.scrollController.horScrollByPointerClick(t.offsetX),this.refreshScrollPosition())}onVerticalScrollThumbMove(t){this.preventScrollEvent=!0,this.scrollController&&(this.scrollController.vertScrollByPointerMove(t.detail.deltaY),this.refreshScrollPosition())}onHorizontalScrollThumbMove(t){this.preventScrollEvent=!0,this.scrollController&&(this.scrollController.horScrollByPointerMove(t.detail.deltaX),this.refreshScrollPosition())}getScrollElement(t){return this.querySelector(`:scope > .${t}`)}onContentSizeChanged(t,e){this.refreshUI()}onHeaderSizeChanged(t,e){t.length<1||!this.scrollController||(this.scrollController.updateTopPanelHeight(t[0].contentRect.height),this.refreshScrollPosition())}onFooterSizeChanged(t,e){t.length<1||!this.scrollController||(this.scrollController.updateBottomPanelHeight(t[0].contentRect.height),this.refreshScrollPosition())}onLeftSizeChanged(t,e){t.length<1||!this.scrollController||(this.scrollController.updateLeftPanelWidth(t[0].contentRect.width),this.refreshScrollPosition())}onRightSizeChanged(t,e){t.length<1||!this.scrollController||(this.scrollController.updateRightPanelWidth(t[0].contentRect.width),this.refreshScrollPosition())}scheduleMakeElementVisible(t,e){setTimeout((()=>{this.isRefreshUIRequested?this.scheduleMakeElementVisible(t,e):this.makeElementVisible(t,e)}))}makeElementVisible(t,e){if(!this.contentContainerElement)return;const l=this.contentContainerElement.querySelector(t);l&&(d.scrollToElementRellyOnStickyDescendants(l,e,this),this.dispatchEvent(new b(l,!0)))}static scrollToElementRellyOnStickyDescendants(t,e,l){if(l.contentContainerElement){const r=l.getDataAreaRectangle(),n=r.y,o=r.y+r.height,i=t.getBoundingClientRect();let s=this.calcScrollOffsetY(n,o,i.top,i.bottom,e);s=Math.round(l.contentContainerElement.scrollTop+s)-l.contentContainerElement.scrollTop,0!==s&&(l.contentContainerElement.scrollBy(0,s),l.refresh(m.ScrollBars))}const r=d.findClosestViewer(l);r&&d.scrollToElementRellyOnStickyDescendants(t,null,r)}static calcScrollOffsetY(t,e,l,r,n){switch(null===n&&(t>l?n=u.Top:e<r&&(n=u.Bottom)),n){case u.Top:return l-t;case u.Bottom:return r-e}return 0}static findClosestViewer(t){return t.parentElement?t.parentElement.closest(`.${l.ClassName}`):null}static get observedAttributes(){return["reset-v-scroll-guid","reset-h-scroll-guid","request-make-element-visible","header-selector","footer-selector","left-selector","right-selector"]}attributeChangedCallback(t,e,l){switch(t){case"reset-v-scroll-guid":this.contentContainerElement&&l&&(this.contentContainerElement.scrollTop=0,this.refresh(m.ScrollBars));break;case"reset-h-scroll-guid":this.contentContainerElement&&l&&(this.contentContainerElement.scrollLeft=0,this.refresh(m.ScrollBars));break;case"header-selector":this.contentContainerElement&&setTimeout((()=>this.reconnectHeaderResizeObserver()));break;case"footer-selector":this.contentContainerElement&&setTimeout((()=>this.reconnectFooterResizeObserver()));break;case"left-selector":this.contentContainerElement&&setTimeout((()=>this.reconnectLeftResizeObserver()));break;case"right-selector":this.contentContainerElement&&setTimeout((()=>this.reconnectRightResizeObserver()));break;case"request-make-element-visible":if(this.contentContainerElement&&l){const t=JSON.parse(l);if(2===t.length){let e=null;null!==t[1]&&(e=t[1]),this.scheduleMakeElementVisible(t[0],e)}}}}}customElements.define("dxbl-scroll-bar",c),customElements.define(h,d);export{d as D,S,u as V,b as a,f as b,h as c};