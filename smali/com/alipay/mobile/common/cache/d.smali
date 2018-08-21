.class Lcom/alipay/mobile/common/cache/d;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/cache/a;

.field final synthetic b:Lcom/alipay/mobile/common/cache/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/c;Lcom/alipay/mobile/common/cache/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/d;->b:Lcom/alipay/mobile/common/cache/c;

    iput-object p2, p0, Lcom/alipay/mobile/common/cache/d;->a:Lcom/alipay/mobile/common/cache/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/d;->a:Lcom/alipay/mobile/common/cache/a;

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/d;->a:Lcom/alipay/mobile/common/cache/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/a;->getHits()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/cache/a;->setHits(J)V

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/d;->a:Lcom/alipay/mobile/common/cache/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/cache/a;->setLastAccess(J)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/d;->b:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v0}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;)Lcom/alipay/mobile/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/d;->a:Lcom/alipay/mobile/common/cache/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "hits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "lastAccess"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/a;->a(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "LruDiskCache"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
