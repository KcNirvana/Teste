.class public Lcom/alipay/android/app/g/d;
.super Ljava/lang/Object;
.source "LocalDataUtils.java"


# direct methods
.method public static a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v1, "fingerPay"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alipay/android/app/g/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/alipay/android/app/g/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "2"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/app/g/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/g/e;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/d/b/c;->a(Lcom/alipay/android/app/d/b/c$a;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "fp"

    const-string/jumbo v2, "CheckUserStatusTimeout"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method
