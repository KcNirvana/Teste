.class public Lcom/alipay/android/app/d/e/a;
.super Ljava/lang/Object;
.source "EncryptFileUtils.java"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/alipay/android/app/d/e/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/alipay/android/app/d/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alipay/android/app/d/c/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/alipay/android/app/d/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/android/app/d/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p0, v0}, Lcom/alipay/android/app/d/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
