.class public Lcom/alipay/android/phone/mrpc/core/p;
.super Ljava/lang/Object;
.source "HttpWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alipay/android/phone/mrpc/core/s;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field protected a:Lcom/alipay/android/phone/mrpc/core/k;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/alipay/android/phone/mrpc/core/n;

.field d:Ljava/lang/String;

.field private f:Lcom/alipay/android/phone/mrpc/core/s;

.field private g:Lorg/apache/http/client/methods/HttpUriRequest;

.field private h:Lorg/apache/http/protocol/HttpContext;

.field private i:Lorg/apache/http/client/CookieStore;

.field private j:Lorg/apache/http/entity/AbstractHttpEntity;

.field private k:Lorg/apache/http/HttpHost;

.field private l:Ljava/net/URL;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/alipay/android/phone/inside/security/b;

.field private s:Lcom/alipay/android/phone/mrpc/core/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/ae;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/ae;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/p;->e:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/k;Lcom/alipay/android/phone/mrpc/core/n;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->h:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->i:Lorg/apache/http/client/CookieStore;

    iput v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->m:I

    iput-boolean v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->n:Z

    iput-boolean v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->p:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/b/c;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/b/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/p;->a:Lcom/alipay/android/phone/mrpc/core/k;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->a:Lcom/alipay/android/phone/mrpc/core/k;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/k;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    new-instance v0, Lcom/alipay/android/phone/inside/security/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/security/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->r:Lcom/alipay/android/phone/inside/security/b;

    return-void
.end method

.method private a(Lcom/alipay/android/phone/mrpc/core/s;)V
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/alipay/android/phone/mrpc/core/o;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/o;->a()Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    move-result-object v0

    const-string/jumbo v1, "threadid = %s; Response success. mOperationType=[%s] . response header=[%s].  response body = %s  "

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "HttpWorker"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/p;->q:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v5

    const/4 v0, 0x3

    const-string/jumbo v5, ""

    aput-object v5, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "is null"

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "HttpWorker"

    const-string/jumbo v2, "== reset cookie =="

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mrpc/core/p;->b(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/c/d;->a(Landroid/content/Context;)Z

    goto :goto_0
.end method

.method private b(Lcom/alipay/android/phone/mrpc/core/s;)V
    .locals 4

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/s;->b()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/s;->b()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    :goto_0
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/alipay/android/phone/mrpc/core/o;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/android/phone/mrpc/core/o;

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/o;->a()Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    move-result-object v0

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/n;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "HttpWorker"

    const-string/jumbo v2, "parse Content-Length error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ALIPAYJSESSIONID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "HttpWorker"

    const-string/jumbo v3, "reset cookie fail!"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private g()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/p;->b()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/p;->a()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/p;->a()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_1
.end method

.method private h()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->f:Lcom/alipay/android/phone/mrpc/core/s;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mrpc/core/p;->a(Lcom/alipay/android/phone/mrpc/core/s;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->i()V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/b/d;->a(Lcom/alipay/android/phone/mrpc/core/b/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finallyProcess ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v1, "NETTYPE"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/p;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/mrpc/core/c/e;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/b/b;->a(Lcom/alipay/android/phone/mrpc/core/b/a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v1, "API"

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/b/b;->a(Lcom/alipay/android/phone/mrpc/core/b/a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v1, "UUID"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    const-string/jumbo v3, "UUID"

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mrpc/core/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/b/b;->a(Lcom/alipay/android/phone/mrpc/core/b/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "monitorLog ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/mrpc/core/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset cookie.  API="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/h;->a(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/h;->a()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/h;->a()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "HttpWorker"

    const-string/jumbo v2, "reset cookie success!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "HttpWorker"

    const-string/jumbo v2, "reset cookie fail!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_0
    return-void
.end method

.method private l()Lcom/alipay/android/phone/mrpc/core/ad;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/n;->f()Lcom/alipay/android/phone/mrpc/core/ad;

    move-result-object v0

    return-object v0
.end method

.method private m()Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->n()Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v2, "HRC"

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/mrpc/core/b/b;->a(Lcom/alipay/android/phone/mrpc/core/b/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v3, "HRC"

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/mrpc/core/b/b;->a(Lcom/alipay/android/phone/mrpc/core/b/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    throw v1
.end method

.method private n()Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "By Http/Https to request. operationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/p;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v1, "RPC_ALL_TIME"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/b/c;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->p()Lcom/alipay/android/phone/mrpc/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/b;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.route.default-proxy"

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->u()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->r()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->s()I

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->t()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->p()Lcom/alipay/android/phone/mrpc/core/b;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/p;->g:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/p;->h:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/android/phone/mrpc/core/b;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->q:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    const-string/jumbo v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method private p()Lcom/alipay/android/phone/mrpc/core/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->a:Lcom/alipay/android/phone/mrpc/core/k;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/k;->a()Lcom/alipay/android/phone/mrpc/core/b;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/p;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->g()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->g()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/b;->a(Lorg/apache/http/HttpRequest;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/p;->e()V

    return-void
.end method

.method private r()Lorg/apache/http/HttpHost;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->k:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->k:Lorg/apache/http/HttpHost;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->t()Ljava/net/URL;

    move-result-object v0

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->s()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->k:Lorg/apache/http/HttpHost;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->k:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method private s()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->t()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method private t()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->l:Ljava/net/URL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->l:Ljava/net/URL;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->l:Ljava/net/URL;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->l:Ljava/net/URL;

    goto :goto_0
.end method

.method private u()Lorg/apache/http/HttpHost;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/c/e;->b(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "127.0.0.1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    const/16 v2, 0x1f97

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a([Ljava/lang/String;)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    const-string/jumbo v2, "max-age"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    return-wide v0

    :catch_0
    move-exception v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/HttpException;
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "proceExce,code=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] canRetry=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] e=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/b/b;->a(Lcom/alipay/android/phone/mrpc/core/b/a;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v1, "ERROR"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mrpc/core/b/b;->a(Lcom/alipay/android/phone/mrpc/core/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v1, "RETRY"

    const-string/jumbo v2, "T"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/b/b;->a(Lcom/alipay/android/phone/mrpc/core/b/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", retry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/p;->d()Lcom/alipay/android/phone/mrpc/core/s;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->k()V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->l()Lcom/alipay/android/phone/mrpc/core/ad;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/s;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5f00\u59cbhandle\uff0chandleResponse-1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v3, "HttpWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "200\uff0c\u5f00\u59cb\u5904\u7406\uff0chandleResponse-2,threadid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v2, v6, v7, v1}, Lcom/alipay/android/phone/mrpc/core/p;->a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/p;->r:Lcom/alipay/android/phone/inside/security/b;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    invoke-static {v0, v2, v3}, Lcom/alipay/android/phone/mrpc/core/c/h;->b([BLcom/alipay/android/phone/inside/security/b;Lcom/alipay/android/phone/mrpc/core/b/a;)[B

    move-result-object v2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->o:Z

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->a:Lcom/alipay/android/phone/mrpc/core/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v0, v4, v5}, Lcom/alipay/android/phone/mrpc/core/k;->c(J)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->a:Lcom/alipay/android/phone/mrpc/core/k;

    array-length v3, v2

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/alipay/android/phone/mrpc/core/k;->a(J)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v3, "HttpWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "res:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/o;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mrpc/core/p;->b(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    move-result-object v3

    invoke-direct {v0, v3, p2, p3, v2}, Lcom/alipay/android/phone/mrpc/core/o;-><init>(Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;ILjava/lang/String;[B)V

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/phone/mrpc/core/p;->a(Lcom/alipay/android/phone/mrpc/core/o;Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "HttpWorker"

    const-string/jumbo v3, "finally,handleResponse"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "HttpWorker"

    const-string/jumbo v3, "finally,handleResponse"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    if-nez v2, :cond_1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Lorg/apache/http/HttpResponse;Lcom/alipay/android/phone/mrpc/core/n;)Lcom/alipay/android/phone/mrpc/core/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/mrpc/core/p;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/android/phone/mrpc/core/p;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/s;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/n;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->d:Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    const/16 v0, 0x3d

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v7, "Content-Type"

    aput-object v7, v0, v2

    aput-object v6, v0, v8

    :goto_1
    aget-object v6, v0, v2

    aget-object v0, v0, v8

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method protected a(Lcom/alipay/android/phone/mrpc/core/o;Lorg/apache/http/HttpResponse;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/mrpc/core/p;->c(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v0, "charset"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/alipay/android/phone/mrpc/core/o;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/mrpc/core/o;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/phone/mrpc/core/o;->a(J)V

    invoke-virtual {p1, v2, v3}, Lcom/alipay/android/phone/mrpc/core/o;->b(J)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p4, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const/16 v0, 0x800

    :try_start_0
    new-array v0, v0, [B

    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mrpc/core/n;->h()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {p4, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->l()Lcom/alipay/android/phone/mrpc/core/ad;

    move-result-object v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v2, "RPC_ALL_TIME"

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mrpc/core/b/c;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/phone/mrpc/core/c/c;->a(Ljava/io/Closeable;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "HttpWorker"

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HttpWorker Request Error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v3, "RPC_ALL_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mrpc/core/b/c;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/phone/mrpc/core/c/c;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected a(Lorg/apache/http/HttpResponse;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->i:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string/jumbo v0, "Set-cookie"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    new-instance v6, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->i:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0, v6}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v5

    const-string/jumbo v6, "HttpWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Set-cookie only debug: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "; domain="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "; path="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_8

    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    const-string/jumbo v4, "EEE, dd-MMM-yyyy HH:mm:ss z"

    invoke-static {v1, v4}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "expires="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_3
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "; Secure"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v0, v1

    :cond_a
    :goto_4
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v4

    const-string/jumbo v5, "HttpWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set cookie. domain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  cookie="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " .url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->b:Landroid/content/Context;

    invoke-static {v0, v3, v1}, Lcom/alipay/android/phone/mrpc/core/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v4

    const-string/jumbo v5, "HttpWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "expires format exception. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method protected a(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;
    .locals 6

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    invoke-direct {v1}, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected b()Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/n;->b()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->r:Lcom/alipay/android/phone/inside/security/b;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/c/h;->a([BLcom/alipay/android/phone/inside/security/b;Lcom/alipay/android/phone/mrpc/core/b/a;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_0
.end method

.method protected c(Lorg/apache/http/HttpResponse;)J
    .locals 5

    const-wide/16 v0, 0x0

    const-string/jumbo v2, "Cache-Control"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/mrpc/core/p;->a([Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "HttpWorker"

    invoke-interface {v3, v4, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const-string/jumbo v2, "Expires"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/b;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method protected c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/n;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/p;->d()Lcom/alipay/android/phone/mrpc/core/s;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/alipay/android/phone/mrpc/core/s;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/HttpException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v1, "API"

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->q()V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->h:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v1, "http.cookie-store"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/p;->i:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->p()Lcom/alipay/android/phone/mrpc/core/b;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mrpc/core/p;->e:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/b;->a(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->m()Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/p;->a:Lcom/alipay/android/phone/mrpc/core/k;

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/phone/mrpc/core/k;->b(J)V

    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/mrpc/core/p;->a(Lorg/apache/http/HttpResponse;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/phone/mrpc/core/p;->a(Lorg/apache/http/HttpResponse;Lcom/alipay/android/phone/mrpc/core/n;)Lcom/alipay/android/phone/mrpc/core/s;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->f:Lcom/alipay/android/phone/mrpc/core/s;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->f:Lcom/alipay/android/phone/mrpc/core/s;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mrpc/core/p;->b(Lcom/alipay/android/phone/mrpc/core/s;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->f:Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "HttpException"

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->s:Lcom/alipay/android/phone/mrpc/core/b/c;

    const-string/jumbo v2, "ERROR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "URISyntaxException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/phone/mrpc/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Url parser error!"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    throw v0

    :catch_2
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "HttpWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTransportCallback().onFailed1 exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "SSLHandshakeException"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "SSLPeerUnverifiedException"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "SSLException"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_8
    const-string/jumbo v1, "ConnectionPoolTimeoutException"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :try_start_9
    const-string/jumbo v1, "ConnectTimeoutException"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_9
    move-exception v0

    :try_start_a
    const-string/jumbo v1, "SocketTimeoutException"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_a
    move-exception v0

    :try_start_b
    const-string/jumbo v1, "NoHttpResponseException"

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_b
    move-exception v0

    :try_start_c
    const-string/jumbo v1, "HttpHostConnectException"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_c
    move-exception v0

    :try_start_d
    const-string/jumbo v1, "ClientProtocolException"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_d
    move-exception v0

    :try_start_e
    const-string/jumbo v1, "UnknownHostException"

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_e
    move-exception v0

    :try_start_f
    const-string/jumbo v1, "IOException"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_f
    move-exception v0

    :try_start_10
    const-string/jumbo v1, "NullPointerException"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0

    :catch_10
    move-exception v0

    :try_start_11
    const-string/jumbo v1, "Throwable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/android/phone/mrpc/core/p;->a(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/android/phone/mrpc/core/s;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->h()V

    goto/16 :goto_0
.end method

.method protected e()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/n;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/p;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mrpc/core/h;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add cookie=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]. url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v4}, Lcom/alipay/android/phone/mrpc/core/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/p;->g()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    const-string/jumbo v2, "Cookie"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()Lcom/alipay/android/phone/mrpc/core/n;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/p;->c:Lcom/alipay/android/phone/mrpc/core/n;

    return-object v0
.end method
