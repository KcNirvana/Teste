.class Lcom/alipay/mobile/common/cache/e;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/cache/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v0}, Lcom/alipay/mobile/common/cache/c;->b(Lcom/alipay/mobile/common/cache/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v2}, Lcom/alipay/mobile/common/cache/c;->c(Lcom/alipay/mobile/common/cache/c;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;J)J

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v0}, Lcom/alipay/mobile/common/cache/c;->d(Lcom/alipay/mobile/common/cache/c;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v0}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;)Lcom/alipay/mobile/common/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/cache/a;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/a;->a(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/d;->h()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x1392

    if-le v0, v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v1}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;)Lcom/alipay/mobile/common/a;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/common/cache/a;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/a;->a(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/d;

    move-result-object v1

    const-string/jumbo v2, "lastAccess"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/db/d;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/db/d;

    move-result-object v1

    const-string/jumbo v2, "hits"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/db/d;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/db/d;

    move-result-object v1

    add-int/lit16 v0, v0, -0x1388

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/db/d;->a(I)Lcom/alipay/mobile/common/db/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/db/d;->b(I)Lcom/alipay/mobile/common/db/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/d;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/a;
    :try_end_0
    .catch Lcom/alipay/mobile/common/ex/DbException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v2}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;)Lcom/alipay/mobile/common/a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/mobile/common/a;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/a;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/alipay/mobile/common/ex/DbException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "LruDiskCache"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/ex/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "LruDiskCache"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v0}, Lcom/alipay/mobile/common/cache/c;->e(Lcom/alipay/mobile/common/cache/c;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/common/a/c;->a(Ljava/io/File;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v2}, Lcom/alipay/mobile/common/cache/c;->f(Lcom/alipay/mobile/common/cache/c;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v0}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;)Lcom/alipay/mobile/common/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/cache/a;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/a;->a(Ljava/lang/Class;)Lcom/alipay/mobile/common/db/d;

    move-result-object v0

    const-string/jumbo v1, "lastAccess"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/db/d;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/db/d;

    move-result-object v0

    const-string/jumbo v1, "hits"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/db/d;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/db/d;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/db/d;->a(I)Lcom/alipay/mobile/common/db/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/db/d;->b(I)Lcom/alipay/mobile/common/db/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/db/d;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/a;
    :try_end_3
    .catch Lcom/alipay/mobile/common/ex/DbException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    iget-object v2, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v2}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;)Lcom/alipay/mobile/common/a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/mobile/common/a;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/a;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/e;->a:Lcom/alipay/mobile/common/cache/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/cache/c;->a(Lcom/alipay/mobile/common/cache/c;Ljava/lang/String;)Z
    :try_end_4
    .catch Lcom/alipay/mobile/common/ex/DbException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "LruDiskCache"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lcom/alipay/mobile/common/ex/DbException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "LruDiskCache"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
