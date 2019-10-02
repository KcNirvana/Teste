.class final Lcom/ooyala/adtech/AdRequester$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/AdRequester;->requestThirdParty(Lcom/ooyala/adtech/InsertionPoint;Lcom/ooyala/adtech/AdRequester$InsertionPointListener;)Lcom/ooyala/adtech/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/ooyala/adtech/InsertionPoint;

.field final synthetic c:Lcom/ooyala/adtech/AdRequester$InsertionPointListener;

.field final synthetic d:Lcom/ooyala/adtech/AdRequester;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/AdRequester;Ljava/util/List;Lcom/ooyala/adtech/InsertionPoint;Lcom/ooyala/adtech/AdRequester$InsertionPointListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/AdRequester$3;->d:Lcom/ooyala/adtech/AdRequester;

    iput-object p2, p0, Lcom/ooyala/adtech/AdRequester$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/ooyala/adtech/AdRequester$3;->b:Lcom/ooyala/adtech/InsertionPoint;

    iput-object p4, p0, Lcom/ooyala/adtech/AdRequester$3;->c:Lcom/ooyala/adtech/AdRequester$InsertionPointListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/adtech/Ad;

    iput-boolean v2, v1, Lcom/ooyala/adtech/Ad;->y:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$3;->b:Lcom/ooyala/adtech/InsertionPoint;

    iput-boolean v2, v0, Lcom/ooyala/adtech/InsertionPoint;->d:Z

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$3;->c:Lcom/ooyala/adtech/AdRequester$InsertionPointListener;

    iget-object v1, p0, Lcom/ooyala/adtech/AdRequester$3;->b:Lcom/ooyala/adtech/InsertionPoint;

    invoke-interface {v0, v1}, Lcom/ooyala/adtech/AdRequester$InsertionPointListener;->onSuccess(Lcom/ooyala/adtech/InsertionPoint;)V

    return-void
.end method

.method public final a(Lcom/ooyala/adtech/Error;)V
    .locals 3

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/adtech/Ad;

    iput-boolean v2, v1, Lcom/ooyala/adtech/Ad;->y:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$3;->b:Lcom/ooyala/adtech/InsertionPoint;

    iput-boolean v2, v0, Lcom/ooyala/adtech/InsertionPoint;->d:Z

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$3;->c:Lcom/ooyala/adtech/AdRequester$InsertionPointListener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$InsertionPointListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    return-void
.end method
