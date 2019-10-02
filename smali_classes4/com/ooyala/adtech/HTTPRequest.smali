.class final Lcom/ooyala/adtech/HTTPRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/HTTPRequest$LogItem;,
        Lcom/ooyala/adtech/HTTPRequest$a;,
        Lcom/ooyala/adtech/HTTPRequest$b;
    }
.end annotation


# static fields
.field static a:Ljava/util/concurrent/ThreadPoolExecutor;

.field static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/ooyala/adtech/HTTPRequest$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Lcom/ooyala/adtech/HTTPRequest$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;Lcom/ooyala/adtech/HTTPRequest$LogItem;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ooyala/adtech/HTTPRequest;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ooyala/adtech/HTTPRequest$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ooyala/adtech/HTTPRequest$a;-><init>(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;Lcom/ooyala/adtech/HTTPRequest$LogItem;)V

    iput-object v0, p0, Lcom/ooyala/adtech/HTTPRequest;->c:Lcom/ooyala/adtech/HTTPRequest$a;

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/ooyala/adtech/HTTPRequest;->b:Ljava/lang/Class;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/net/URL;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lcom/ooyala/adtech/HTTPRequest$b;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Lcom/ooyala/adtech/HTTPRequest$LogItem;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p3, v1, v6

    aput-object p4, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ooyala/adtech/HTTPRequest$a;

    iput-object p1, p0, Lcom/ooyala/adtech/HTTPRequest;->c:Lcom/ooyala/adtech/HTTPRequest$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Lcom/ooyala/adtech/HTTPRequest$1;

    invoke-direct {p1, p0}, Lcom/ooyala/adtech/HTTPRequest$1;-><init>(Lcom/ooyala/adtech/HTTPRequest;)V

    invoke-static {p1}, Lcom/ooyala/adtech/l;->a(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method final a()V
    .locals 2

    invoke-virtual {p0}, Lcom/ooyala/adtech/HTTPRequest;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/HTTPRequest;->c:Lcom/ooyala/adtech/HTTPRequest$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/HTTPRequest$a;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method final b()Z
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/HTTPRequest;->c:Lcom/ooyala/adtech/HTTPRequest$a;

    invoke-virtual {v0}, Lcom/ooyala/adtech/HTTPRequest$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/HTTPRequest;->c:Lcom/ooyala/adtech/HTTPRequest$a;

    invoke-virtual {v0}, Lcom/ooyala/adtech/HTTPRequest$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
