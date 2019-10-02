.class public Lcom/xiaomi/passport/snscorelib/SNSManager;
.super Ljava/lang/Object;
.source "SNSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;,
        Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;
    }
.end annotation


# static fields
.field private static final INT_0:Ljava/lang/Integer;

.field public static final REQUEST_SNS_LOGIN:I = 0x1

.field public static final SNS_BIND_PARAMETER:Ljava/lang/String; = "sns_bind_parameter"

.field public static final TAG:Ljava/lang/String; = "SNSManager"

.field private static final URL_SNS_BIND_CANCLED:Ljava/lang/String;

.field private static final URL_SNS_BIND_FINISH:Ljava/lang/String;

.field private static mActivity:Landroid/app/Activity;

.field private static final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field static mWebViewClient:Landroid/webkit/WebViewClient;

.field private static sSNSBindCallback:Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;

.field private static sWebView:Landroid/webkit/WebView;


# instance fields
.field private mSNSBindParameterTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mSnsLoginByAccessTokenTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->INT_0:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACCOUNT_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sns/bind/cancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->URL_SNS_BIND_CANCLED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACCOUNT_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sns/bind/finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->URL_SNS_BIND_FINISH:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/passport/snscorelib/SNSManager$7;

    invoke-direct {v0}, Lcom/xiaomi/passport/snscorelib/SNSManager$7;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/xiaomi/passport/snscorelib/SNSManager;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/passport/snscorelib/SNSManager;Ljava/util/concurrent/ExecutionException;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/snscorelib/SNSManager;->handleExecutionException(Ljava/util/concurrent/ExecutionException;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;)V

    return-void
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/passport/snscorelib/SNSManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/snscorelib/SNSManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->sSNSBindCallback:Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->URL_SNS_BIND_CANCLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->URL_SNS_BIND_FINISH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->showWebView()V

    return-void
.end method

.method static synthetic access$700()Landroid/webkit/WebView;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->sWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    sget-object p1, Lcom/xiaomi/passport/snscorelib/SNSManager;->sWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleExecutionException(Ljava/util/concurrent/ExecutionException;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    invoke-virtual {v0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;->getCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;->onSnsLoginFailed(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;->onNetWorkErrorException()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;

    invoke-virtual {p1}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;->getSNSBindParameter()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;->onNeedLoginForBind(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getNotificationUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;->onNeedNotificationException(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static requestUnBindSNS(Lcom/xiaomi/passport/data/XMPassportInfo;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/CipherException;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/XMPassportInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v1, "snsType"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/XMPassportInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v1, "cUserId"

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/XMPassportInfo;->getEncryptedUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string v1, "serviceToken"

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/XMPassportInfo;->getServiceToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->URL_UNBIND_SNS:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/passport/data/XMPassportInfo;->getSecurity()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2, p0}, Lcom/xiaomi/accountsdk/request/SecureRequestForAccount;->postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "code"

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->getFromBody(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/passport/snscorelib/SNSManager;->INT_0:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to get response to delete sns accesstoken"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static showWebView()V
    .locals 2

    sget-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->sWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/snscorelib/SNSManager;->sWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static snsBind(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Landroid/webkit/WebView;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;)V
    .locals 2

    sput-object p2, Lcom/xiaomi/passport/snscorelib/SNSManager;->sWebView:Landroid/webkit/WebView;

    sput-object p3, Lcom/xiaomi/passport/snscorelib/SNSManager;->sSNSBindCallback:Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object p3, Lcom/xiaomi/passport/snscorelib/SNSManager;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cUserId"

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "passToken"

    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sns_token_ph"

    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;->sns_token_ph:Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sns_weixin_openId"

    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;->sns_weixin_openId:Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/xiaomi/passport/snscorelib/internal/utils/SNSCookieManager;->setupCookiesForAccountWeb(Landroid/webkit/WebView;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;->snsBindUrl:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private snsLoginByAccessToken(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;",
            "Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/passport/snscorelib/SNSManager$3;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/snscorelib/SNSManager$3;-><init>(Lcom/xiaomi/passport/snscorelib/SNSManager;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;)V

    new-instance p2, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v1, Lcom/xiaomi/passport/snscorelib/SNSManager$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/snscorelib/SNSManager$4;-><init>(Lcom/xiaomi/passport/snscorelib/SNSManager;Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;)V

    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    iput-object p2, p0, Lcom/xiaomi/passport/snscorelib/SNSManager;->mSnsLoginByAccessTokenTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    sget-object p1, Lcom/xiaomi/passport/snscorelib/SNSManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/SNSManager;->mSnsLoginByAccessTokenTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object p1, p0, Lcom/xiaomi/passport/snscorelib/SNSManager;->mSnsLoginByAccessTokenTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    return-object p1
.end method

.method private snsLoginByCode(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;",
            "Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/passport/snscorelib/SNSManager$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/snscorelib/SNSManager$1;-><init>(Lcom/xiaomi/passport/snscorelib/SNSManager;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;)V

    new-instance p2, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v1, Lcom/xiaomi/passport/snscorelib/SNSManager$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/snscorelib/SNSManager$2;-><init>(Lcom/xiaomi/passport/snscorelib/SNSManager;Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;)V

    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    iput-object p2, p0, Lcom/xiaomi/passport/snscorelib/SNSManager;->mSnsLoginByAccessTokenTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    sget-object p1, Lcom/xiaomi/passport/snscorelib/SNSManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/SNSManager;->mSnsLoginByAccessTokenTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object p1, p0, Lcom/xiaomi/passport/snscorelib/SNSManager;->mSnsLoginByAccessTokenTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    return-object p1
.end method

.method private unBindSNS(Lcom/xiaomi/passport/data/XMPassportInfo;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/CipherException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/xiaomi/passport/snscorelib/SNSManager;->requestUnBindSNS(Lcom/xiaomi/passport/data/XMPassportInfo;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public snsBindByAccountInfo(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Landroid/webkit/WebView;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;)V
    .locals 8

    sput-object p4, Lcom/xiaomi/passport/snscorelib/SNSManager;->sSNSBindCallback:Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;

    iget-object v2, p1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->enToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->token:Ljava/lang/String;

    iget-object v6, p1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->code:Ljava/lang/String;

    sput-object p3, Lcom/xiaomi/passport/snscorelib/SNSManager;->sWebView:Landroid/webkit/WebView;

    new-instance p4, Lcom/xiaomi/passport/snscorelib/SNSManager$5;

    invoke-direct {p4, p0, p3, p2}, Lcom/xiaomi/passport/snscorelib/SNSManager$5;-><init>(Lcom/xiaomi/passport/snscorelib/SNSManager;Landroid/webkit/WebView;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    new-instance p3, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v7, Lcom/xiaomi/passport/snscorelib/SNSManager$6;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/passport/snscorelib/SNSManager$6;-><init>(Lcom/xiaomi/passport/snscorelib/SNSManager;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Ljava/lang/String;)V

    invoke-direct {p3, v7, p4}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    iput-object p3, p0, Lcom/xiaomi/passport/snscorelib/SNSManager;->mSNSBindParameterTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    sget-object p1, Lcom/xiaomi/passport/snscorelib/SNSManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/SNSManager;->mSNSBindParameterTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public snsLogin(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;)V
    .locals 3

    iget-object v0, p1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->enToken:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->token:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/snscorelib/SNSManager;->snsLoginByCode(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "code and enToken parameters is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/snscorelib/SNSManager;->snsLoginByAccessToken(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    :goto_1
    return-void
.end method

.method public unBindSNS(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "passportapi"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/data/XMPassportInfo;->build(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/XMPassportInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SNSManager"

    const-string v0, "null passportInfo"

    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/passport/snscorelib/SNSManager;->unBindSNS(Lcom/xiaomi/passport/data/XMPassportInfo;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    const-string v0, "SNSManager"

    const-string v2, "InvalidAccessTokenRunnable error"

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v3

    const-string v4, "SNSManager"

    const-string v5, "InvalidAccessTokenRunnable error"

    invoke-static {v4, v5, v3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/data/XMPassportInfo;->refreshAuthToken(Landroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_3
    move-exception p1

    const-string v0, "SNSManager"

    const-string v2, "InvalidAccessTokenRunnable error"

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "snsType is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
