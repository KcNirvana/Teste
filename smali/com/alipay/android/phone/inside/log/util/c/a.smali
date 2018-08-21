.class public Lcom/alipay/android/phone/inside/log/util/c/a;
.super Ljava/lang/Object;
.source "EncryptFileUtils.java"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/alipay/android/phone/inside/log/util/c/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b/a;->a()Lcom/alipay/android/phone/inside/log/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/inside/log/api/a;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v2}, Lcom/alipay/android/phone/inside/log/util/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/android/phone/inside/log/util/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v2

    const-string/jumbo v3, "log"

    const-string/jumbo v4, "LogFileDecryptEx"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b/a;->a()Lcom/alipay/android/phone/inside/log/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/inside/log/api/a;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/alipay/android/phone/inside/log/util/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/android/phone/inside/log/util/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    invoke-static {p0, v0}, Lcom/alipay/android/phone/inside/log/util/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v1

    const-string/jumbo v2, "log"

    const-string/jumbo v3, "LogFileEncryptEx"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
