.class final Lcom/ooyala/adtech/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/AdRequester$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/g;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;Ljava/lang/String;Lcom/ooyala/adtech/AdRequester$SessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/Session;

.field final synthetic b:Lcom/ooyala/adtech/AdRequester$SessionListener;

.field final synthetic c:Lcom/ooyala/adtech/g;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/g;Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/g$1;->c:Lcom/ooyala/adtech/g;

    iput-object p2, p0, Lcom/ooyala/adtech/g$1;->a:Lcom/ooyala/adtech/Session;

    iput-object p3, p0, Lcom/ooyala/adtech/g$1;->b:Lcom/ooyala/adtech/AdRequester$SessionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/ooyala/adtech/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/g$1;->b:Lcom/ooyala/adtech/AdRequester$SessionListener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    return-void
.end method

.method public final onSuccess(Lcom/ooyala/adtech/Session;)V
    .locals 4

    invoke-virtual {p1}, Lcom/ooyala/adtech/Session;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/adtech/g$1;->a:Lcom/ooyala/adtech/Session;

    invoke-virtual {v1}, Lcom/ooyala/adtech/Session;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/ooyala/adtech/Error;

    sget-object v0, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_RESPONSE:I

    const-string v2, "The extension session id does not match the original session id."

    invoke-direct {p1, v0, v1, v2}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ooyala/adtech/g$1;->c:Lcom/ooyala/adtech/g;

    iget-object v0, v0, Lcom/ooyala/adtech/g;->logger:Lcom/ooyala/adtech/d;

    new-instance v1, Lcom/ooyala/adtech/LogItem;

    sget-object v2, Lcom/ooyala/pulse/LogItem$Source;->SESSION:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v3, Lcom/ooyala/pulse/LogItem$Event;->GENERAL_ERROR:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v1, v2, v3, p1}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    iget-object v0, p0, Lcom/ooyala/adtech/g$1;->b:Lcom/ooyala/adtech/AdRequester$SessionListener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/g$1;->a:Lcom/ooyala/adtech/Session;

    invoke-static {p1, v0}, Lcom/ooyala/adtech/g;->a(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/Session;)V

    iget-object p1, p0, Lcom/ooyala/adtech/g$1;->b:Lcom/ooyala/adtech/AdRequester$SessionListener;

    iget-object v0, p0, Lcom/ooyala/adtech/g$1;->a:Lcom/ooyala/adtech/Session;

    invoke-interface {p1, v0}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onSuccess(Lcom/ooyala/adtech/Session;)V

    return-void
.end method
