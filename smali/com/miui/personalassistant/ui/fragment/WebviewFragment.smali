.class public Lcom/miui/personalassistant/ui/fragment/WebviewFragment;
.super Landroid/app/Fragment;
.source "WebviewFragment.java"

# interfaces
.implements Lcom/miui/personalassistant/loader/Reloadable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;,
        Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;,
        Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebChromeClient;
    }
.end annotation


# static fields
.field protected static final INIT_PROGRESS_VALUE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WebviewFragment"


# instance fields
.field private mBlockedUrl:Ljava/lang/String;

.field private mLoadState:Lcom/miui/personalassistant/request/core/BaseResult$State;

.field private mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

.field private mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Lcom/miui/personalassistant/ui/widget/LoadingProgressView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Lcom/miui/personalassistant/request/core/BaseResult$State;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mLoadState:Lcom/miui/personalassistant/request/core/BaseResult$State;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;Lcom/miui/personalassistant/request/core/BaseResult$State;)Lcom/miui/personalassistant/request/core/BaseResult$State;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mLoadState:Lcom/miui/personalassistant/request/core/BaseResult$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mBlockedUrl:Ljava/lang/String;

    return-object p1
.end method

.method private initLoadingView(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x1b0901f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    invoke-virtual {v0, v1, v1, p0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->onInit(ZZLcom/miui/personalassistant/loader/Reloadable;)V

    return-void
.end method

.method private initWebView(Landroid/webkit/WebView;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-static {v8}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const-wide/32 v6, 0x800000

    invoke-virtual {v4, v6, v7}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v4, "setMixedContentMode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    new-instance v4, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;

    invoke-direct {v4, p0, v10}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;-><init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;Lcom/miui/personalassistant/ui/fragment/WebviewFragment$1;)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v4, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebChromeClient;

    invoke-direct {v4, p0, v10}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebChromeClient;-><init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;Lcom/miui/personalassistant/ui/fragment/WebviewFragment$1;)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "WebviewFragment"

    const-string/jumbo v5, "Exception "

    invoke-static {v4, v5, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private registerConnectivityReceiver()V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;-><init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;Lcom/miui/personalassistant/ui/fragment/WebviewFragment$1;)V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterConnectivityReceiver()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/fragment/WebviewFragment$NetworkConnectivityChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "WebviewFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mBlockedUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    invoke-virtual {v0, v3, v1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->onError(ZLcom/miui/personalassistant/request/core/BaseResult$State;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mBlockedUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->onStartLoading(Z)V

    sget-object v0, Lcom/miui/personalassistant/request/core/BaseResult$State;->OK:Lcom/miui/personalassistant/request/core/BaseResult$State;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mLoadState:Lcom/miui/personalassistant/request/core/BaseResult$State;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->registerConnectivityReceiver()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x1b0400a3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b09023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->initWebView(Landroid/webkit/WebView;)V

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->initLoadingView(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->unregisterConnectivityReceiver()V

    return-void
.end method

.method public reload()V
    .locals 3

    const-string/jumbo v0, "WebviewFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadUrl mBlockedUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mBlockedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mBlockedUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->mBlockedUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
