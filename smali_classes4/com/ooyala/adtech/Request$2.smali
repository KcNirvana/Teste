.class final Lcom/ooyala/adtech/Request$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/Request;->a(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/HTTPRequest;

.field final synthetic b:Lcom/ooyala/adtech/Request$RequestLog;

.field final synthetic c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

.field final synthetic d:Lcom/ooyala/adtech/HTTPRequest$b;

.field final synthetic e:Lcom/ooyala/adtech/Request;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/Request;Lcom/ooyala/adtech/HTTPRequest;Lcom/ooyala/adtech/Request$RequestLog;Lcom/ooyala/adtech/HTTPRequest$LogItem;Lcom/ooyala/adtech/HTTPRequest$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/Request$2;->e:Lcom/ooyala/adtech/Request;

    iput-object p2, p0, Lcom/ooyala/adtech/Request$2;->a:Lcom/ooyala/adtech/HTTPRequest;

    iput-object p3, p0, Lcom/ooyala/adtech/Request$2;->b:Lcom/ooyala/adtech/Request$RequestLog;

    iput-object p4, p0, Lcom/ooyala/adtech/Request$2;->c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    iput-object p5, p0, Lcom/ooyala/adtech/Request$2;->d:Lcom/ooyala/adtech/HTTPRequest$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/ooyala/adtech/Request$2;->a:Lcom/ooyala/adtech/HTTPRequest;

    invoke-virtual {v0}, Lcom/ooyala/adtech/HTTPRequest;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ooyala/adtech/Request$2;->a:Lcom/ooyala/adtech/HTTPRequest;

    invoke-virtual {v0}, Lcom/ooyala/adtech/HTTPRequest;->a()V

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->REQUEST:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Request;->TIMED_OUT:I

    const-string v3, "The request took too long to complete."

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/ooyala/adtech/Request$2;->e:Lcom/ooyala/adtech/Request;

    iget-object v1, v1, Lcom/ooyala/adtech/Request;->logger:Lcom/ooyala/adtech/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ooyala/adtech/Request$2;->e:Lcom/ooyala/adtech/Request;

    iget-object v1, v1, Lcom/ooyala/adtech/Request;->logger:Lcom/ooyala/adtech/d;

    new-instance v2, Lcom/ooyala/adtech/LogItem;

    iget-object v3, p0, Lcom/ooyala/adtech/Request$2;->e:Lcom/ooyala/adtech/Request;

    invoke-static {v3}, Lcom/ooyala/adtech/Request;->a(Lcom/ooyala/adtech/Request;)Lcom/ooyala/pulse/LogItem$Source;

    move-result-object v3

    sget-object v4, Lcom/ooyala/pulse/LogItem$Event;->REQUEST_TIMEOUT:Lcom/ooyala/pulse/LogItem$Event;

    iget-object v5, p0, Lcom/ooyala/adtech/Request$2;->e:Lcom/ooyala/adtech/Request;

    iget-object v5, v5, Lcom/ooyala/adtech/Request;->b:Ljava/util/List;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_0
    sget-object v1, Lcom/ooyala/adtech/Request;->e:Lcom/ooyala/adtech/Request$RequestLog;

    iget-object v2, p0, Lcom/ooyala/adtech/Request$2;->b:Lcom/ooyala/adtech/Request$RequestLog;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ooyala/adtech/Request$2;->c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ooyala/adtech/Request$2;->e:Lcom/ooyala/adtech/Request;

    invoke-static {v1}, Lcom/ooyala/adtech/Request;->b(Lcom/ooyala/adtech/Request;)Lcom/ooyala/adtech/HTTPRequest$LogItem;

    move-result-object v1

    iput-object v0, v1, Lcom/ooyala/adtech/HTTPRequest$LogItem;->error:Lcom/ooyala/adtech/Error;

    :cond_1
    iget-object v1, p0, Lcom/ooyala/adtech/Request$2;->d:Lcom/ooyala/adtech/HTTPRequest$b;

    invoke-interface {v1, v0}, Lcom/ooyala/adtech/HTTPRequest$b;->a(Lcom/ooyala/adtech/Error;)V

    sget-object v0, Lcom/ooyala/adtech/Request;->e:Lcom/ooyala/adtech/Request$RequestLog;

    iget-object v1, p0, Lcom/ooyala/adtech/Request$2;->b:Lcom/ooyala/adtech/Request$RequestLog;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ooyala/adtech/Request$2;->c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ooyala/adtech/Request$2;->b:Lcom/ooyala/adtech/Request$RequestLog;

    iget-object v1, p0, Lcom/ooyala/adtech/Request$2;->c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/Request$RequestLog;->onRequestFinished(Lcom/ooyala/adtech/HTTPRequest$LogItem;)V

    :cond_2
    return-void
.end method
