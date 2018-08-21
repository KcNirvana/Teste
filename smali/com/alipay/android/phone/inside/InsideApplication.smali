.class public Lcom/alipay/android/phone/inside/InsideApplication;
.super Lcom/alipay/android/phone/inside/framework/LauncherApplication;
.source "InsideApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/app/Application;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/phone/inside/framework/LauncherApplication;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "inside"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "res init time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/alipay/android/phone/inside/c/b;->a()V

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/a/c;->a()V

    invoke-static {}, Lcom/alipay/android/phone/inside/c/a;->a()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/b/a;->a(Landroid/content/Context;)Lcom/alipay/android/phone/inside/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/b/a;->a()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->onCreate()V

    const-string/jumbo v0, "inside"

    const-string/jumbo v1, "inside init start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/phone/inside/InsideApplication;->initialize(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "inside"

    const-string/jumbo v1, "inside init end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "inside init failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
