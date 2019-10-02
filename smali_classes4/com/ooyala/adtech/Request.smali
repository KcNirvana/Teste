.class public Lcom/ooyala/adtech/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/Request$RequestLog;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static a:F = 12.0f

.field static e:Lcom/ooyala/adtech/Request$RequestLog;


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/ooyala/adtech/HTTPRequest;

.field protected cancelled:Z

.field d:Lcom/ooyala/adtech/HTTPRequest$b;

.field private final f:Lcom/ooyala/pulse/LogItem$Source;

.field private g:Lcom/ooyala/adtech/HTTPRequest$LogItem;

.field protected logger:Lcom/ooyala/adtech/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/adtech/Request;->cancelled:Z

    iput-object p1, p0, Lcom/ooyala/adtech/Request;->logger:Lcom/ooyala/adtech/d;

    iput-object p2, p0, Lcom/ooyala/adtech/Request;->f:Lcom/ooyala/pulse/LogItem$Source;

    return-void
.end method

.method static synthetic a(Lcom/ooyala/adtech/Request;)Lcom/ooyala/pulse/LogItem$Source;
    .locals 0

    iget-object p0, p0, Lcom/ooyala/adtech/Request;->f:Lcom/ooyala/pulse/LogItem$Source;

    return-object p0
.end method

.method static synthetic b(Lcom/ooyala/adtech/Request;)Lcom/ooyala/adtech/HTTPRequest$LogItem;
    .locals 0

    iget-object p0, p0, Lcom/ooyala/adtech/Request;->g:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    return-object p0
.end method

.method static disableRequestLogging()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ooyala/adtech/Request;->e:Lcom/ooyala/adtech/Request$RequestLog;

    return-void
.end method

.method static enableRequestLogging(Lcom/ooyala/adtech/Request$RequestLog$Listener;)V
    .locals 1

    new-instance v0, Lcom/ooyala/adtech/Request$RequestLog;

    invoke-direct {v0}, Lcom/ooyala/adtech/Request$RequestLog;-><init>()V

    sput-object v0, Lcom/ooyala/adtech/Request;->e:Lcom/ooyala/adtech/Request$RequestLog;

    invoke-static {v0, p0}, Lcom/ooyala/adtech/Request$RequestLog;->access$202(Lcom/ooyala/adtech/Request$RequestLog;Lcom/ooyala/adtech/Request$RequestLog$Listener;)Lcom/ooyala/adtech/Request$RequestLog$Listener;

    return-void
.end method


# virtual methods
.method final a(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;)V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object p3, p0, Lcom/ooyala/adtech/Request;->d:Lcom/ooyala/adtech/HTTPRequest$b;

    sget-object v6, Lcom/ooyala/adtech/Request;->e:Lcom/ooyala/adtech/Request$RequestLog;

    if-eqz v6, :cond_0

    new-instance v0, Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-direct {v0, p1}, Lcom/ooyala/adtech/HTTPRequest$LogItem;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lcom/ooyala/adtech/Request;->g:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-virtual {v6, v0}, Lcom/ooyala/adtech/Request$RequestLog;->onRequestCreated(Lcom/ooyala/adtech/HTTPRequest$LogItem;)V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/adtech/Request;->g:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/ooyala/adtech/HTTPRequest;

    new-instance v1, Lcom/ooyala/adtech/Request$1;

    invoke-direct {v1, p0, p3, v6, v7}, Lcom/ooyala/adtech/Request$1;-><init>(Lcom/ooyala/adtech/Request;Lcom/ooyala/adtech/HTTPRequest$b;Lcom/ooyala/adtech/Request$RequestLog;Lcom/ooyala/adtech/HTTPRequest$LogItem;)V

    iget-object v2, p0, Lcom/ooyala/adtech/Request;->g:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/ooyala/adtech/HTTPRequest;-><init>(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;Lcom/ooyala/adtech/HTTPRequest$LogItem;)V

    iput-object v0, p0, Lcom/ooyala/adtech/Request;->c:Lcom/ooyala/adtech/HTTPRequest;

    iget-object v5, p0, Lcom/ooyala/adtech/Request;->c:Lcom/ooyala/adtech/HTTPRequest;

    new-instance p1, Lcom/ooyala/adtech/Request$2;

    move-object v3, p1

    move-object v4, p0

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/ooyala/adtech/Request$2;-><init>(Lcom/ooyala/adtech/Request;Lcom/ooyala/adtech/HTTPRequest;Lcom/ooyala/adtech/Request$RequestLog;Lcom/ooyala/adtech/HTTPRequest$LogItem;Lcom/ooyala/adtech/HTTPRequest$b;)V

    const/4 p3, 0x0

    cmpg-float p3, p2, p3

    if-gtz p3, :cond_1

    invoke-static {p1}, Lcom/ooyala/adtech/l;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p2, p2, v0

    float-to-long v0, p2

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public cancel(Lcom/ooyala/adtech/Error;)V
    .locals 7

    iget-object v0, p0, Lcom/ooyala/adtech/Request;->c:Lcom/ooyala/adtech/HTTPRequest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ooyala/adtech/Request;->c:Lcom/ooyala/adtech/HTTPRequest;

    invoke-virtual {v0}, Lcom/ooyala/adtech/HTTPRequest;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/adtech/Request;->cancelled:Z

    iget-object v1, p0, Lcom/ooyala/adtech/Request;->c:Lcom/ooyala/adtech/HTTPRequest;

    invoke-virtual {v1}, Lcom/ooyala/adtech/HTTPRequest;->a()V

    sget-object v1, Lcom/ooyala/adtech/Request;->e:Lcom/ooyala/adtech/Request$RequestLog;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ooyala/adtech/Request;->g:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ooyala/adtech/Request;->logger:Lcom/ooyala/adtech/d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ooyala/adtech/Request;->logger:Lcom/ooyala/adtech/d;

    new-instance v3, Lcom/ooyala/adtech/LogItem;

    iget-object v4, p0, Lcom/ooyala/adtech/Request;->f:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v5, Lcom/ooyala/pulse/LogItem$Event;->REQUEST_CANCELED:Lcom/ooyala/pulse/LogItem$Event;

    iget-object v6, p0, Lcom/ooyala/adtech/Request;->b:Ljava/util/List;

    invoke-direct {v3, v4, v5, p1, v6}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/ooyala/adtech/Request;->g:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    iput-object p1, v2, Lcom/ooyala/adtech/HTTPRequest$LogItem;->error:Lcom/ooyala/adtech/Error;

    :cond_2
    iget-object v2, p0, Lcom/ooyala/adtech/Request;->d:Lcom/ooyala/adtech/HTTPRequest$b;

    invoke-interface {v2, p1}, Lcom/ooyala/adtech/HTTPRequest$b;->a(Lcom/ooyala/adtech/Error;)V

    sget-object p1, Lcom/ooyala/adtech/Request;->e:Lcom/ooyala/adtech/Request$RequestLog;

    if-ne v1, p1, :cond_3

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/ooyala/adtech/Request;->g:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-virtual {v1, p1}, Lcom/ooyala/adtech/Request$RequestLog;->onRequestFinished(Lcom/ooyala/adtech/HTTPRequest$LogItem;)V

    :cond_3
    return-void
.end method
