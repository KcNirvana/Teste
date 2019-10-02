.class final Lcom/xiaomi/passport/snscorelib/SNSManager$7;
.super Landroid/webkit/WebViewClient;
.source "SNSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/snscorelib/SNSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$300()Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$300()Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;->onPageFinished()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$600()V

    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string p1, "com.xiaomi"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$100()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object v0

    const-string p1, "com.xiaomi"

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    array-length p2, p1

    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "weblogin:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/xiaomi/passport/snscorelib/SNSManager$7$1;

    invoke-direct {v5, p0}, Lcom/xiaomi/passport/snscorelib/SNSManager$7$1;-><init>(Lcom/xiaomi/passport/snscorelib/SNSManager$7;)V

    const/4 p2, 0x0

    aget-object v1, p1, p2

    const/4 v3, 0x0

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$100()Landroid/app/Activity;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$400()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$300()Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;->onSNSBindFinished()V

    return p2

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/xiaomi/passport/snscorelib/SNSManager;->access$300()Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/snscorelib/SNSManager$SNSBindCallback;->onSNSBindCancel()V

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
