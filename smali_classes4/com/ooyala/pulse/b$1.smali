.class final Lcom/ooyala/pulse/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/AdRequester$AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/pulse/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/pulse/b;


# direct methods
.method constructor <init>(Lcom/ooyala/pulse/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/b$1;->a:Lcom/ooyala/pulse/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/ooyala/adtech/Error;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected internal failure."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onSuccess(Lcom/ooyala/adtech/Ad;)V
    .locals 3

    iget-object p1, p0, Lcom/ooyala/pulse/b$1;->a:Lcom/ooyala/pulse/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestThirdParty succeeded for ad:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ooyala/pulse/b;->a:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ooyala/pulse/b;->b:Lcom/ooyala/adtech/Request;

    iget-object v0, p1, Lcom/ooyala/pulse/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/pulse/b$a;

    iget-object v2, p1, Lcom/ooyala/pulse/b;->a:Lcom/ooyala/adtech/Ad;

    invoke-interface {v1, v2}, Lcom/ooyala/pulse/b$a;->a(Lcom/ooyala/adtech/Ad;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/ooyala/pulse/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
