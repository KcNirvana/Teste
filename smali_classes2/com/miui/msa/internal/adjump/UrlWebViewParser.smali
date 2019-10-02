.class public Lcom/miui/msa/internal/adjump/UrlWebViewParser;
.super Ljava/lang/Object;
.source "UrlWebViewParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;,
        Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;
    }
.end annotation


# static fields
.field private static final JUMP_FAIL:Ljava/lang/String; = "jump_fail"

.field private static final JUMP_SUCCESS:Ljava/lang/String; = "jump_success"

.field private static final TAG:Ljava/lang/String; = "UrlWebViewParser"


# instance fields
.field private mBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

.field private mContext:Landroid/content/Context;

.field private mErrorDescription:Ljava/lang/String;

.field private mIsCancelled:Z

.field private mJumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

.field private mJumpDetail:Lorg/json/JSONObject;

.field private mListener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;

.field private mRedirectedCnt:I

.field private mRrackParsedUrlListener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;

.field private mStartTime:J

.field private mWebview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    invoke-static {p1}, Lcom/miui/msa/internal/adjump/Utils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mJumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    iput-object p4, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mListener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;

    invoke-direct {p0}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->initializeWebViewSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "UrlWebViewParser"

    const-string p3, "init e : "

    invoke-static {p2, p3, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$004(Lcom/miui/msa/internal/adjump/UrlWebViewParser;)I
    .locals 1

    iget v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRedirectedCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRedirectedCnt:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/msa/internal/adjump/UrlWebViewParser;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mJumpDetail:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/msa/internal/adjump/UrlWebViewParser;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mIsCancelled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mIsCancelled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->onAsyncGetGooglePlayUrlFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->trackFinalUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/miui/msa/internal/adjump/UrlWebViewParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mErrorDescription:Ljava/lang/String;

    return-object p1
.end method

.method private enableCookies()V
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method

.method private initializeWebViewSettings()V
    .locals 2

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->enableCookies()V

    return-void
.end method

.method private onAsyncGetGooglePlayUrlFinished(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->releaseAllResources()V

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mListener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mListener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;

    invoke-interface {v0, p1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;->onGetGooglePlayUrlFinished(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mListener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;

    :cond_0
    return-void
.end method

.method private releaseAllResources()V
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->releaseWebViewResources()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method private releaseWebViewResources()V
    .locals 2

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private trackFinalUrl(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRrackParsedUrlListener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRrackParsedUrlListener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    iget v2, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRedirectedCnt:I

    invoke-virtual {v1, v2}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    invoke-virtual {v2}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getAdId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setAdId(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mJumpDetail:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpDetail(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setFinalUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mErrorDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setErrorDescription(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    const-string v2, "jump_success"

    invoke-virtual {v1, v2}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setRet(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;->onTrackFinalUrl(Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mJumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v3

    iget v4, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRedirectedCnt:I

    invoke-virtual {v3, v4}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setFinalUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mJumpDetail:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpDetail(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->trackJumpResult(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mStartTime:J

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mJumpDetail:Lorg/json/JSONObject;

    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mJumpDetail:Lorg/json/JSONObject;

    iget v1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRedirectedCnt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UrlWebViewParser"

    const-string v2, "Put jumpDetail exception"

    invoke-static {v1, v2, v0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;

    invoke-direct {v1, p0}, Lcom/miui/msa/internal/adjump/UrlWebViewParser$1;-><init>(Lcom/miui/msa/internal/adjump/UrlWebViewParser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "</html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->releaseAllResources()V

    const-string v1, "UrlWebViewParser"

    const-string v2, "WebView parse e : "

    invoke-static {v1, v2, v0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRrackParsedUrlListener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRrackParsedUrlListener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    iget v2, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRedirectedCnt:I

    invoke-virtual {v1, v2}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    invoke-virtual {v2}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getAdId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setAdId(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    const-string v2, "jump_fail"

    invoke-virtual {v1, v2}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setRet(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;->onTrackFinalUrl(Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mJumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v3

    iget v4, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRedirectedCnt:I

    invoke-virtual {v3, v4}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setFinalUrl(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mJumpDetail:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpDetail(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->trackJumpException(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->onAsyncGetGooglePlayUrlFinished(Ljava/lang/String;)V

    return-void
.end method

.method public setTrackParsedUrlListener(Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->mRrackParsedUrlListener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;

    return-void
.end method
