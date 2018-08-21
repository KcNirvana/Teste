.class Lcom/alipay/mobile/common/cache/f;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/cache/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/f;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/f;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v0}, Lcom/alipay/mobile/common/cache/c;->b(Lcom/alipay/mobile/common/cache/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/f;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v0}, Lcom/alipay/mobile/common/cache/c;->e(Lcom/alipay/mobile/common/cache/c;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/common/cache/f;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v4}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;)Lcom/alipay/mobile/common/a;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/common/cache/a;

    invoke-interface {v4, v5}, Lcom/alipay/mobile/common/a;->a(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/d;

    move-result-object v4

    const-string/jumbo v5, "path"

    const-string/jumbo v6, "="

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/alipay/mobile/common/db/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/db/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/db/d;->h()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v4

    const-string/jumbo v5, "LruDiskCache"

    invoke-interface {v4, v5, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "LruDiskCache"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
