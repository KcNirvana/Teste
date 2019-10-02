.class public Lcom/miui/video/service/browser/feature/js/JsCommon;
.super Lcom/miui/video/framework/utilities/NoProguard;
.source "JsCommon.java"


# instance fields
.field private webview:Lcom/miui/video/common/browser/foundation/WebViewEx;


# direct methods
.method public constructor <init>(Lcom/miui/video/common/browser/foundation/WebViewEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/framework/utilities/NoProguard;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/js/JsCommon;->webview:Lcom/miui/video/common/browser/foundation/WebViewEx;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/browser/feature/js/JsCommon;)Lcom/miui/video/common/browser/foundation/WebViewEx;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/browser/feature/js/JsCommon;->webview:Lcom/miui/video/common/browser/foundation/WebViewEx;

    return-object p0
.end method

.method public static synthetic lambda$null$13(Lcom/miui/video/service/browser/feature/js/JsCommon;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/js/JsCommon;->webview:Lcom/miui/video/common/browser/foundation/WebViewEx;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/service/browser/feature/js/JsInterfaceUtils;->loadJsOnShareResultMethod(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onClickToShare$12(Lcom/miui/video/service/share/data/ShareInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$onClickToShare$14(Lcom/miui/video/service/browser/feature/js/JsCommon;Lcom/miui/video/service/share/data/ShareInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/miui/video/service/share/ShareBuilder;

    invoke-direct {v0}, Lcom/miui/video/service/share/ShareBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/video/service/share/ShareBuilder;->shareInfo(Lcom/miui/video/service/share/data/ShareInfo;)Lcom/miui/video/service/share/ShareBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/js/JsCommon;->webview:Lcom/miui/video/common/browser/foundation/WebViewEx;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$bgw_yInlGnyd6dafz7UQMG98tdA;

    invoke-direct {v1, p0}, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$bgw_yInlGnyd6dafz7UQMG98tdA;-><init>(Lcom/miui/video/service/browser/feature/js/JsCommon;)V

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/service/share/ShareBuilder;->webShare(Landroid/content/Context;Lcom/miui/video/service/share/WebShareCallback;)V

    return-void
.end method

.method public static synthetic lambda$onClickToShare$15(Lcom/miui/video/service/browser/feature/js/JsCommon;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/js/JsCommon;->webview:Lcom/miui/video/common/browser/foundation/WebViewEx;

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/miui/video/service/browser/feature/js/JsInterfaceUtils;->loadJsOnShareResultMethod(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public OnOpenShareBtn(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public onClickToShare(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "Webview Feature JsCommon"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/miui/video/service/share/data/ShareInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/service/share/data/ShareInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$Y2705X-PLAEt1OJLO0MoXUY4w5c;->INSTANCE:Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$Y2705X-PLAEt1OJLO0MoXUY4w5c;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$t52gbnm7tYuznISxGdWWofCTcBA;

    invoke-direct {v0, p0}, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$t52gbnm7tYuznISxGdWWofCTcBA;-><init>(Lcom/miui/video/service/browser/feature/js/JsCommon;)V

    new-instance v1, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$sDqS-uwX0_i3d4Q8OC4O_90ed2A;

    invoke-direct {v1, p0}, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$sDqS-uwX0_i3d4Q8OC4O_90ed2A;-><init>(Lcom/miui/video/service/browser/feature/js/JsCommon;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onLogin(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "Webview Feature JsCommon"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/js/JsCommon;->webview:Lcom/miui/video/common/browser/foundation/WebViewEx;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isFirst"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/js/JsCommon;->webview:Lcom/miui/video/common/browser/foundation/WebViewEx;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/js/JsInterfaceUtils;->loadJsOnLoginMethod(Landroid/webkit/WebView;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/js/JsCommon;->webview:Lcom/miui/video/common/browser/foundation/WebViewEx;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miui/video/service/browser/feature/js/JsCommon$1;

    invoke-direct {v1, p0}, Lcom/miui/video/service/browser/feature/js/JsCommon$1;-><init>(Lcom/miui/video/service/browser/feature/js/JsCommon;)V

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/account/VideoMiAccountManager;->login(Landroid/app/Activity;Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
