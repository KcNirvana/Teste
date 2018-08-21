.class public Lcom/alipay/android/app/ctemplate/a/a;
.super Ljava/lang/Object;
.source "TemplateAssetsStorage.java"


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v0, 0x800

    new-array v0, v0, [C

    :goto_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "template"

    const-string/jumbo v6, "TplAssetsReadEx"

    invoke-virtual {v4, v5, v6, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    :cond_0
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "amc.i18n.zh_CN"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "template"

    const-string/jumbo v5, "TplAssetsFindEx"

    invoke-virtual {v3, v4, v5, v1}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_4
    throw v0

    :catch_4
    move-exception v1

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_5
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
