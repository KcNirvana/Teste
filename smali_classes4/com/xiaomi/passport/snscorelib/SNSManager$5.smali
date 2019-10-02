.class Lcom/xiaomi/passport/snscorelib/SNSManager$5;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "SNSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/snscorelib/SNSManager;->snsBindByAccountInfo(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Landroid/webkit/WebView;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
        "Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/snscorelib/SNSManager;

.field final synthetic val$accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/snscorelib/SNSManager;Landroid/webkit/WebView;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$5;->this$0:Lcom/xiaomi/passport/snscorelib/SNSManager;

    iput-object p2, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$5;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$5;->val$accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$5;->val$webView:Landroid/webkit/WebView;

    sget-object v1, Lcom/xiaomi/passport/snscorelib/SNSManager;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$5;->this$0:Lcom/xiaomi/passport/snscorelib/SNSManager;

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$100()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$200(Lcom/xiaomi/passport/snscorelib/SNSManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$5;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " XiaoMi/MiuiBrowser/4.3"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$5;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userId"

    iget-object v2, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$5;->val$accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cUserId"

    iget-object v2, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$5;->val$accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sns_token_ph"

    iget-object v2, p1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;->sns_token_ph:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sns_weixin_openId"

    iget-object v2, p1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;->sns_weixin_openId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$5;->val$webView:Landroid/webkit/WebView;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/snscorelib/internal/utils/SNSCookieManager;->setupCookiesForAccountWeb(Landroid/webkit/WebView;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$5;->val$webView:Landroid/webkit/WebView;

    iget-object p1, p1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;->snsBindUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$300()Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    invoke-virtual {v1}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;->getCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;->onSNSBindFailed(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$300()Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;->onNetWorkErrorException()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "snsBindByAccountInfo:interrupted"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
