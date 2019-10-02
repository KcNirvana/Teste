.class final Lcom/ooyala/adtech/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/HTTPRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/g;->a(Ljava/net/URL;Lcom/ooyala/adtech/AdRequester$SessionListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/AdRequester$SessionListener;

.field final synthetic b:Z

.field final synthetic c:Lcom/ooyala/adtech/g;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/g;Lcom/ooyala/adtech/AdRequester$SessionListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/g$2;->c:Lcom/ooyala/adtech/g;

    iput-object p2, p0, Lcom/ooyala/adtech/g$2;->a:Lcom/ooyala/adtech/AdRequester$SessionListener;

    iput-boolean p3, p0, Lcom/ooyala/adtech/g$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ooyala/adtech/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/g$2;->a:Lcom/ooyala/adtech/AdRequester$SessionListener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/ooyala/adtech/m;

    invoke-direct {v0}, Lcom/ooyala/adtech/m;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ooyala/adtech/m;->a(Ljava/lang/String;)Lcom/ooyala/adtech/Session;

    move-result-object p1
    :try_end_0
    .catch Lcom/ooyala/adtech/a; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/ooyala/adtech/g$2;->c:Lcom/ooyala/adtech/g;

    new-instance v1, Lcom/ooyala/adtech/h;

    iget-object v2, p0, Lcom/ooyala/adtech/g$2;->a:Lcom/ooyala/adtech/AdRequester$SessionListener;

    iget-object v3, p0, Lcom/ooyala/adtech/g$2;->c:Lcom/ooyala/adtech/g;

    iget-object v3, v3, Lcom/ooyala/adtech/g;->logger:Lcom/ooyala/adtech/d;

    iget-boolean v4, p0, Lcom/ooyala/adtech/g$2;->b:Z

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/ooyala/adtech/h;-><init>(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;Lcom/ooyala/adtech/d;Z)V

    iput-object v1, v0, Lcom/ooyala/adtech/g;->f:Lcom/ooyala/adtech/h;

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/ooyala/adtech/g$2;->c:Lcom/ooyala/adtech/g;

    iget-object v0, v0, Lcom/ooyala/adtech/g;->logger:Lcom/ooyala/adtech/d;

    new-instance v1, Lcom/ooyala/adtech/LogItem;

    sget-object v2, Lcom/ooyala/pulse/LogItem$Source;->SESSION:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v3, Lcom/ooyala/pulse/LogItem$Event;->INVALID_RESPONSE:Lcom/ooyala/pulse/LogItem$Event;

    iget-object v4, p1, Lcom/ooyala/adtech/a;->a:Lcom/ooyala/adtech/Error;

    invoke-direct {v1, v2, v3, v4}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    iget-object v0, p0, Lcom/ooyala/adtech/g$2;->a:Lcom/ooyala/adtech/AdRequester$SessionListener;

    iget-object p1, p1, Lcom/ooyala/adtech/a;->a:Lcom/ooyala/adtech/Error;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    return-void
.end method
