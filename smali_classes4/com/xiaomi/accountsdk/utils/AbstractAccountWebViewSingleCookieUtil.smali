.class public abstract Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;
.super Ljava/lang/Object;
.source "AbstractAccountWebViewSingleCookieUtil.java"


# static fields
.field public static final DOMAIN_URL_SET_COOKIE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassport;->USE_PREVIEW:Z

    if-eqz v0, :cond_0

    const-string v0, ".account.preview.n.xiaomi.net"

    goto :goto_0

    :cond_0
    const-string v0, ".account.xiaomi.com"

    :goto_0
    sput-object v0, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->DOMAIN_URL_SET_COOKIE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static setAccountCookie(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "%s=%s;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->DOMAIN_URL_SET_COOKIE:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract getCookieName()Ljava/lang/String;
.end method

.method protected abstract getCookieValue()Ljava/lang/String;
.end method

.method protected final setAccountCookie(Landroid/webkit/CookieManager;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->getCookieName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->setAccountCookie(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setupNonNullCookieForAccountWeb(Landroid/webkit/WebView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->getCookieValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->getCookieName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->getCookieValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->setAccountCookie(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method
