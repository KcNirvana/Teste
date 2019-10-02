.class public final Lcom/miui/video/biz/search/activity/H5SearchResultActivity;
.super Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.source "H5SearchResultActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseAppCompatActivity<",
        "Lcom/miui/video/common/library/base/impl/IPresenter<",
        "Lcom/miui/video/common/library/base/impl/IView;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001aH\u0016J\u0008\u0010\u001e\u001a\u00020\u001aH\u0016J\u0008\u0010\u001f\u001a\u00020\u001aH\u0016J\u0008\u0010 \u001a\u00020\u001aH\u0014J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#H\u0014J\u0008\u0010$\u001a\u00020\u001aH\u0014J\u0008\u0010%\u001a\u00020\u001aH\u0014J\u0008\u0010&\u001a\u00020\u001aH\u0002J\u0012\u0010\'\u001a\u00020\u001a2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0002J\u0008\u0010*\u001a\u00020+H\u0014J!\u0010,\u001a\u00020\u001a2\u0008\u0010-\u001a\u0004\u0018\u00010\u00122\u0008\u0010.\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0002\u0010/R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/miui/video/biz/search/activity/H5SearchResultActivity;",
        "Lcom/miui/video/service/base/VideoBaseAppCompatActivity;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "()V",
        "mCallback",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "mMatchList",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "mOnPageChangeListener",
        "Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;",
        "mTitle",
        "mUrl",
        "vFullView",
        "Landroid/widget/FrameLayout;",
        "vIvBack",
        "Landroid/widget/ImageView;",
        "vIvForward",
        "vIvLeftIcon",
        "Landroid/support/v7/widget/AppCompatImageView;",
        "vIvRefresh",
        "vWebView",
        "Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;",
        "initFindViews",
        "",
        "initUrl",
        "",
        "initViewsEvent",
        "initViewsValue",
        "onBackPressed",
        "onDestroy",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "onPause",
        "onResume",
        "onWebViewHideCustomView",
        "pageChanged",
        "webView",
        "Landroid/webkit/WebView;",
        "setLayoutResId",
        "",
        "setViewEnable",
        "imageView",
        "enable",
        "(Landroid/widget/ImageView;Ljava/lang/Boolean;)V",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mMatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPageChangeListener:Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private vFullView:Landroid/widget/FrameLayout;

.field private vIvBack:Landroid/widget/ImageView;

.field private vIvForward:Landroid/widget/ImageView;

.field private vIvLeftIcon:Landroid/support/v7/widget/AppCompatImageView;

.field private vIvRefresh:Landroid/widget/ImageView;

.field private vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;-><init>()V

    new-instance v0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$1;-><init>(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)V

    check-cast v0, Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    iput-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mOnPageChangeListener:Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    return-void
.end method

.method public static final synthetic access$getMCallback$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method public static final synthetic access$getVFullView$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vFullView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static final synthetic access$getVWebView$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    return-object p0
.end method

.method public static final synthetic access$onWebViewHideCustomView(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->onWebViewHideCustomView()V

    return-void
.end method

.method public static final synthetic access$pageChanged(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->pageChanged(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static final synthetic access$setMCallback$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public static final synthetic access$setVFullView$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vFullView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static final synthetic access$setVWebView$p(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    return-void
.end method

.method private final initUrl()Z
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "match"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mMatchList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "link"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mUrl:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private final onWebViewHideCustomView()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vFullView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vFullView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final pageChanged(Landroid/webkit/WebView;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vIvBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->setViewEnable(Landroid/widget/ImageView;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vIvForward:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->setViewEnable(Landroid/widget/ImageView;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final setViewEnable(Landroid/widget/ImageView;Ljava/lang/Boolean;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_2

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/16 p2, 0x36

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public initFindViews()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_webview:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    iput-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    invoke-direct {p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->initUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/miui/video/service/browser/feature/search/FeatureSearch;

    invoke-direct {v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mOnPageChangeListener:Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->setIOnPageChangeListener(Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/video/common/browser/feature/base/FeatureBase;

    invoke-virtual {v1, v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    :cond_1
    new-instance v0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;

    iget-object v1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mMatchList:Ljava/util/ArrayList;

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v0, Lcom/miui/video/common/browser/feature/base/FeatureBase;

    invoke-virtual {v1, v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/browser/foundation/WebViewController;->loadUrl(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "H5SearchResultActivity loadUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->pageChanged(Landroid/webkit/WebView;)V

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_iv_left:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vIvLeftIcon:Landroid/support/v7/widget/AppCompatImageView;

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_search_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vIvBack:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_search_refresh:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vIvRefresh:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_search_forward:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vIvForward:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_fl_full_video:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vFullView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->initViewsEvent()V

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vIvLeftIcon:Landroid/support/v7/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$1;-><init>(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vIvBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$2;-><init>(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vIvRefresh:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$3;-><init>(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vIvForward:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity$initViewsEvent$4;-><init>(Lcom/miui/video/biz/search/activity/H5SearchResultActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public initViewsValue()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vIvLeftIcon:Landroid/support/v7/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    sget v1, Lcom/miui/video/biz/search/R$drawable;->ic_h5_close:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vFullView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->canGoBack()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->goBack()V

    goto :goto_2

    :cond_3
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onBackPressed()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->onWebViewHideCustomView()V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->destroy()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->onWebViewHideCustomView()V

    const/4 v0, 0x0

    check-cast v0, Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->initUrl()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->loadUrl(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->pageChanged(Landroid/webkit/WebView;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->onPause()V

    :cond_1
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/H5SearchResultActivity;->vWebView:Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->onResume()V

    :cond_1
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onResume()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->activity_h5_search_result:I

    return v0
.end method
