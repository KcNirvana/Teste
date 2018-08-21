.class public Lcom/alipay/android/phone/mrpc/core/h;
.super Ljava/lang/Object;
.source "CookieAccessHelper.java"


# static fields
.field private static a:Landroid/webkit/CookieManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/h;->a:Landroid/webkit/CookieManager;

    return-void
.end method

.method public static a()Landroid/webkit/CookieManager;
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/h;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/h;->a:Landroid/webkit/CookieManager;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Landroid/webkit/CookieManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/h;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/h;->a:Landroid/webkit/CookieManager;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/h;->a:Landroid/webkit/CookieManager;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/h;->a:Landroid/webkit/CookieManager;

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v1, Lcom/alipay/android/phone/mrpc/core/h;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/c/d;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    const-string/jumbo v0, ".dl.alipaydev.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ".dl.alipaydev.com"

    const-string/jumbo v2, ".alipay.net"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p0

    :cond_0
    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/h;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/h;->a()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :goto_1
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "CookieAccessHelper"

    const-string/jumbo v4, "getCookie exception:"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "CookieAccessHelper"

    const-string/jumbo v4, "getCookie exception:"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    const-class v1, Lcom/alipay/android/phone/mrpc/core/h;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/phone/mrpc/core/h;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/h;->a()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "CookieAccessHelper"

    const-string/jumbo v4, "removeAllCookie exception "

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const-class v1, Lcom/alipay/android/phone/mrpc/core/h;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lcom/alipay/android/phone/mrpc/core/h;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/h;->a()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "CookieAccessHelper"

    const-string/jumbo v4, "setCookie exception:"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final b(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "CookieAccessHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createCookieSyncManager ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
