.class public Lcom/xiaomi/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    invoke-static {v4}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/a/o;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaomi/a/a/a/o;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v4}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v2

    :goto_1
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-static {v4}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_2
    :try_start_5
    const-string v4, "AssetUtils"

    invoke-static {v4}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "extractAssetFile e"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-static {v3}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    :goto_3
    invoke-static {v4}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/xiaomi/a/a/a/g;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v4, v3

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :cond_1
    move-object v3, v1

    goto :goto_1
.end method
