.class public Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "NotificationWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;
    }
.end annotation


# static fields
.field private static final AUTH_END:Ljava/lang/String; = "auth-end"

.field private static final LOGIN_END:Ljava/lang/String; = "login-end"

.field private static final NEED_RELOGIN:Ljava/lang/String; = "need-relogin"

.field private static final PASS_INFO:Ljava/lang/String; = "passInfo"


# instance fields
.field private mCookieManager:Landroid/webkit/CookieManager;

.field private mNotificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

.field private mNotificationUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->mNotificationUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->mCookieManager:Landroid/webkit/CookieManager;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->mNotificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->mNotificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->mCookieManager:Landroid/webkit/CookieManager;

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->mNotificationUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "passInfo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "need-relogin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->mNotificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;->onNeedReLogin()V

    return v1

    :cond_1
    const-string v2, "login-end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->extractPasstokenFromNotificationLoginEndCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->extractUserIdFromNotificationLoginEndCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->mNotificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    invoke-interface {v0, p2, p1}, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;->onLoginEnd(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v2, "auth-end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->mNotificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    invoke-interface {p1, p2}, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;->onAuthEnd(Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
