.class final Lcom/ooyala/adtech/AdRequester$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/AdRequester$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/AdRequester;->requestSessionExtension(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;Lcom/ooyala/adtech/AdRequester$SessionListener;)Lcom/ooyala/adtech/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/Session;

.field final synthetic b:Lcom/ooyala/adtech/AdRequester$SessionListener;

.field final synthetic c:Lcom/ooyala/adtech/AdRequester;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/AdRequester;Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/AdRequester$1;->c:Lcom/ooyala/adtech/AdRequester;

    iput-object p2, p0, Lcom/ooyala/adtech/AdRequester$1;->a:Lcom/ooyala/adtech/Session;

    iput-object p3, p0, Lcom/ooyala/adtech/AdRequester$1;->b:Lcom/ooyala/adtech/AdRequester$SessionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/ooyala/adtech/Error;)V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$1;->a:Lcom/ooyala/adtech/Session;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ooyala/adtech/Session;->g:Z

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$1;->b:Lcom/ooyala/adtech/AdRequester$SessionListener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    return-void
.end method

.method public final onSuccess(Lcom/ooyala/adtech/Session;)V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$1;->a:Lcom/ooyala/adtech/Session;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ooyala/adtech/Session;->g:Z

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$1;->b:Lcom/ooyala/adtech/AdRequester$SessionListener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onSuccess(Lcom/ooyala/adtech/Session;)V

    return-void
.end method
