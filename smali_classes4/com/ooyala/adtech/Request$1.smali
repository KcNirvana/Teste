.class final Lcom/ooyala/adtech/Request$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/HTTPRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/Request;->a(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/HTTPRequest$b;

.field final synthetic b:Lcom/ooyala/adtech/Request$RequestLog;

.field final synthetic c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

.field final synthetic d:Lcom/ooyala/adtech/Request;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/Request;Lcom/ooyala/adtech/HTTPRequest$b;Lcom/ooyala/adtech/Request$RequestLog;Lcom/ooyala/adtech/HTTPRequest$LogItem;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/Request$1;->d:Lcom/ooyala/adtech/Request;

    iput-object p2, p0, Lcom/ooyala/adtech/Request$1;->a:Lcom/ooyala/adtech/HTTPRequest$b;

    iput-object p3, p0, Lcom/ooyala/adtech/Request$1;->b:Lcom/ooyala/adtech/Request$RequestLog;

    iput-object p4, p0, Lcom/ooyala/adtech/Request$1;->c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ooyala/adtech/Error;)V
    .locals 5

    sget-object v0, Lcom/ooyala/adtech/Request;->e:Lcom/ooyala/adtech/Request$RequestLog;

    iget-object v1, p0, Lcom/ooyala/adtech/Request$1;->b:Lcom/ooyala/adtech/Request$RequestLog;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/Request$1;->c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/Request$1;->c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    iput-object p1, v0, Lcom/ooyala/adtech/HTTPRequest$LogItem;->error:Lcom/ooyala/adtech/Error;

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/Request$1;->d:Lcom/ooyala/adtech/Request;

    iget-object v0, v0, Lcom/ooyala/adtech/Request;->logger:Lcom/ooyala/adtech/d;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ooyala/adtech/Error;->getCode()I

    move-result v0

    sget v1, Lcom/ooyala/pulse/Error$Request;->TIMED_OUT:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ooyala/adtech/Error;->getDomain()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->REQUEST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/adtech/Request$1;->d:Lcom/ooyala/adtech/Request;

    iget-object v0, v0, Lcom/ooyala/adtech/Request;->logger:Lcom/ooyala/adtech/d;

    new-instance v1, Lcom/ooyala/adtech/LogItem;

    iget-object v2, p0, Lcom/ooyala/adtech/Request$1;->d:Lcom/ooyala/adtech/Request;

    invoke-static {v2}, Lcom/ooyala/adtech/Request;->a(Lcom/ooyala/adtech/Request;)Lcom/ooyala/pulse/LogItem$Source;

    move-result-object v2

    sget-object v3, Lcom/ooyala/pulse/LogItem$Event;->REQUEST_TIMEOUT:Lcom/ooyala/pulse/LogItem$Event;

    iget-object v4, p0, Lcom/ooyala/adtech/Request$1;->d:Lcom/ooyala/adtech/Request;

    iget-object v4, v4, Lcom/ooyala/adtech/Request;->b:Ljava/util/List;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ooyala/adtech/Request$1;->d:Lcom/ooyala/adtech/Request;

    iget-object v0, v0, Lcom/ooyala/adtech/Request;->logger:Lcom/ooyala/adtech/d;

    new-instance v1, Lcom/ooyala/adtech/LogItem;

    iget-object v2, p0, Lcom/ooyala/adtech/Request$1;->d:Lcom/ooyala/adtech/Request;

    invoke-static {v2}, Lcom/ooyala/adtech/Request;->a(Lcom/ooyala/adtech/Request;)Lcom/ooyala/pulse/LogItem$Source;

    move-result-object v2

    sget-object v3, Lcom/ooyala/pulse/LogItem$Event;->REQUEST_FAILED:Lcom/ooyala/pulse/LogItem$Event;

    iget-object v4, p0, Lcom/ooyala/adtech/Request$1;->d:Lcom/ooyala/adtech/Request;

    iget-object v4, v4, Lcom/ooyala/adtech/Request;->b:Ljava/util/List;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ooyala/adtech/Request$1;->a:Lcom/ooyala/adtech/HTTPRequest$b;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/HTTPRequest$b;->a(Lcom/ooyala/adtech/Error;)V

    sget-object p1, Lcom/ooyala/adtech/Request;->e:Lcom/ooyala/adtech/Request$RequestLog;

    iget-object v0, p0, Lcom/ooyala/adtech/Request$1;->b:Lcom/ooyala/adtech/Request$RequestLog;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/ooyala/adtech/Request$1;->c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ooyala/adtech/Request$1;->b:Lcom/ooyala/adtech/Request$RequestLog;

    iget-object v0, p0, Lcom/ooyala/adtech/Request$1;->c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-virtual {p1, v0}, Lcom/ooyala/adtech/Request$RequestLog;->onRequestFinished(Lcom/ooyala/adtech/HTTPRequest$LogItem;)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Request$1;->a:Lcom/ooyala/adtech/HTTPRequest$b;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/HTTPRequest$b;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/ooyala/adtech/Request;->e:Lcom/ooyala/adtech/Request$RequestLog;

    iget-object v0, p0, Lcom/ooyala/adtech/Request$1;->b:Lcom/ooyala/adtech/Request$RequestLog;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ooyala/adtech/Request$1;->c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ooyala/adtech/Request$1;->b:Lcom/ooyala/adtech/Request$RequestLog;

    iget-object v0, p0, Lcom/ooyala/adtech/Request$1;->c:Lcom/ooyala/adtech/HTTPRequest$LogItem;

    invoke-virtual {p1, v0}, Lcom/ooyala/adtech/Request$RequestLog;->onRequestFinished(Lcom/ooyala/adtech/HTTPRequest$LogItem;)V

    :cond_0
    return-void
.end method
