.class public Lcom/alipay/android/phone/mrpc/core/i;
.super Lcom/alipay/android/phone/mrpc/core/a;
.source "HttpCaller.java"


# static fields
.field private static m:I


# instance fields
.field private g:Lcom/alipay/android/phone/mrpc/core/g;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/android/phone/mrpc/core/c/g$a;

.field private k:Landroid/content/Context;

.field private l:Lcom/alipay/android/phone/mrpc/core/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x249f0

    sput v0, Lcom/alipay/android/phone/mrpc/core/i;->m:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/g;Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Landroid/content/Context;Lcom/alipay/android/phone/mrpc/core/q;)V
    .locals 7

    iget-object v0, p8, Lcom/alipay/android/phone/mrpc/core/q;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Z)V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/i;->g:Lcom/alipay/android/phone/mrpc/core/g;

    iput-object p7, p0, Lcom/alipay/android/phone/mrpc/core/i;->k:Landroid/content/Context;

    iput-object p8, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    return-void
.end method

.method private a(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return p1

    :pswitch_0
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x10

    goto :goto_0

    :pswitch_8
    const/16 p1, 0xf

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private a(Lcom/alipay/android/phone/mrpc/core/n;)Lcom/alipay/android/phone/mrpc/core/s;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/i;->d()Lcom/alipay/android/phone/mrpc/core/ac;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/mrpc/core/ac;->a(Lcom/alipay/android/phone/mrpc/core/r;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    iget-wide v2, v1, Lcom/alipay/android/phone/mrpc/core/q;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    iget-wide v2, v1, Lcom/alipay/android/phone/mrpc/core/q;->a:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/s;

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "HttpCaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "threadid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; Response fail: [response is null]. mOperationType=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcException;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "response is null"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v1, Lcom/alipay/android/phone/mrpc/core/i;->m:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/s;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Lcom/alipay/android/phone/mrpc/core/o;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/o;->a()Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;->getHeaders()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/mrpc/core/q;->f:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/q;->f:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mrpc/core/i;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "headers is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Server-Time"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Server-Time"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string/jumbo v1, "alipay_inside_keys"

    const-string/jumbo v4, "server_timespan"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/alipay/android/phone/inside/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "inside"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Server-Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", Client-Time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "No Key Server-Time"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, v0, Lcom/alipay/android/phone/mrpc/core/q;->f:Ljava/util/Map;

    goto :goto_0
.end method

.method private b(Lcom/alipay/android/phone/mrpc/core/n;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mrpc/core/i;->c(Lcom/alipay/android/phone/mrpc/core/n;)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Version"

    const-string/jumbo v2, "2"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/mrpc/core/n;->a(Lorg/apache/http/Header;)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Did"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/i;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/b/b;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/mrpc/core/n;->a(Lorg/apache/http/Header;)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Operation-Type"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/i;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/mrpc/core/n;->a(Lorg/apache/http/Header;)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Ts"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/i;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/mrpc/core/n;->a(Lorg/apache/http/Header;)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Content-Type"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/i;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/mrpc/core/n;->a(Lorg/apache/http/Header;)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Accept-Language"

    const-string/jumbo v2, "zh-Hans"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/mrpc/core/n;->a(Lorg/apache/http/Header;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/i;->c()Lcom/alipay/android/phone/mrpc/core/c/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/android/phone/mrpc/core/c/g$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "Sign"

    iget-object v3, v0, Lcom/alipay/android/phone/mrpc/core/c/g$a;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/alipay/android/phone/mrpc/core/n;->a(Lorg/apache/http/Header;)V

    iget v1, v0, Lcom/alipay/android/phone/mrpc/core/c/g$a;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "signType"

    iget v0, v0, Lcom/alipay/android/phone/mrpc/core/c/g$a;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/alipay/android/phone/mrpc/core/n;->a(Lorg/apache/http/Header;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mrpc/core/i;->d(Lcom/alipay/android/phone/mrpc/core/n;)V

    return-void
.end method

.method private c(Lcom/alipay/android/phone/mrpc/core/n;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/q;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/q;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/q;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/alipay/android/phone/mrpc/core/n;->a(Lorg/apache/http/Header;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()Lcom/alipay/android/phone/mrpc/core/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/i;->g:Lcom/alipay/android/phone/mrpc/core/g;

    invoke-interface {v0}, Lcom/alipay/android/phone/mrpc/core/g;->b()Lcom/alipay/android/phone/mrpc/core/ac;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/alipay/android/phone/mrpc/core/n;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/q;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "AppId"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    iget-object v2, v2, Lcom/alipay/android/phone/mrpc/core/q;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/mrpc/core/n;->a(Lorg/apache/http/Header;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "AppId"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/i;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/b/a;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/mrpc/core/n;->a(Lorg/apache/http/Header;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    iget-object v2, v2, Lcom/alipay/android/phone/mrpc/core/q;->b:Ljava/lang/String;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/n;

    invoke-direct {v3, v2}, Lcom/alipay/android/phone/mrpc/core/n;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/i;->b:[B

    invoke-virtual {v3, v2}, Lcom/alipay/android/phone/mrpc/core/n;->a([B)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/i;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/alipay/android/phone/mrpc/core/n;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    iget-object v2, v2, Lcom/alipay/android/phone/mrpc/core/q;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/alipay/android/phone/mrpc/core/n;->a(Z)V

    const-string/jumbo v2, "id"

    iget v4, p0, Lcom/alipay/android/phone/mrpc/core/i;->d:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/phone/mrpc/core/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "operationType"

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/i;->c:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/phone/mrpc/core/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "AppId"

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/i;->l:Lcom/alipay/android/phone/mrpc/core/q;

    iget-object v4, v4, Lcom/alipay/android/phone/mrpc/core/q;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/phone/mrpc/core/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "reqDataDigest"

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/phone/mrpc/core/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "rpcVersion"

    const-string/jumbo v4, "2"

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/phone/mrpc/core/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "UUID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/i;->k:Landroid/content/Context;

    invoke-static {v5}, Lcom/alipay/mobile/common/b/b;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/b/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/i;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/phone/mrpc/core/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "POST"

    invoke-virtual {v3, v2}, Lcom/alipay/android/phone/mrpc/core/n;->c(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/mrpc/core/i;->b(Lcom/alipay/android/phone/mrpc/core/n;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v4, "HttpCaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "threadid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/n;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/alipay/android/phone/mrpc/core/i;->a(Lcom/alipay/android/phone/mrpc/core/n;)Lcom/alipay/android/phone/mrpc/core/s;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/o;

    move-object v2, v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v5

    const-string/jumbo v6, "HttpCaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "threadid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Response success."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/mrpc/core/i;->a(Lcom/alipay/android/phone/mrpc/core/o;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/mrpc/core/i;->a(Z)V

    return-object v3

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Lcom/alipay/android/phone/mrpc/core/RpcException;

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-direct {v3, v5, v6, v2}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-direct {p0, v4}, Lcom/alipay/android/phone/mrpc/core/i;->a(Z)V

    throw v2

    :catch_1
    move-exception v2

    move-object v3, v2

    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v5, v2, Lcom/alipay/android/phone/mrpc/core/HttpException;

    if-eqz v5, :cond_0

    check-cast v2, Lcom/alipay/android/phone/mrpc/core/HttpException;

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/RpcException;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getCode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/mrpc/core/i;->a(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Lcom/alipay/android/phone/mrpc/core/RpcException;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-direct {v2, v5, v6, v3}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v2

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/RpcException;

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-direct {v3, v5, v6, v2}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    new-instance v3, Lcom/alipay/android/phone/mrpc/core/RpcException;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-direct {v3, v5, v6, v2}, Lcom/alipay/android/phone/mrpc/core/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public a(Lcom/alipay/android/phone/mrpc/core/c/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/i;->j:Lcom/alipay/android/phone/mrpc/core/c/g$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/i;->h:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/i;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/alipay/android/phone/mrpc/core/c/g$a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/i;->j:Lcom/alipay/android/phone/mrpc/core/c/g$a;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/i;->i:Ljava/lang/String;

    return-void
.end method
