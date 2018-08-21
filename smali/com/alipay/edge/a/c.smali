.class public Lcom/alipay/edge/a/c;
.super Ljava/lang/Object;
.source "FindHook.java"


# direct methods
.method private static a()Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "findhook"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.saurik.substrate.MS$2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "invoked"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "t0dbg"

    const-string/jumbo v3, "findHook com.saurik.substrate.MS$2"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "main"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "t0dbg"

    const-string/jumbo v3, "findHook de.robv.android.xposed.XposedBridge"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "handleHookedMethod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "t0dbg"

    const-string/jumbo v3, "findHook de.robv.android.xposed.XposedBridge"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/alipay/edge/a/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/edge/a/c;->a()Z

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

.method private static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.saurik.substrate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v2, "t0dbg"

    const-string/jumbo v3, "findHook com.saurik.substrate"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "de.robv.android.xposed.installer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v2, "t0dbg"

    const-string/jumbo v3, "findHook de.robv.android.xposed.installer"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
