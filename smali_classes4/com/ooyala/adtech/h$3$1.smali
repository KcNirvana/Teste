.class final Lcom/ooyala/adtech/h$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/AdRequester$AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/h$3;->a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Error;Lcom/ooyala/adtech/TrackingError$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/Error;

.field final synthetic b:Lcom/ooyala/adtech/h$3;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/h$3;Lcom/ooyala/adtech/Error;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/h$3$1;->b:Lcom/ooyala/adtech/h$3;

    iput-object p2, p0, Lcom/ooyala/adtech/h$3$1;->a:Lcom/ooyala/adtech/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/ooyala/adtech/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/h$3$1;->b:Lcom/ooyala/adtech/h$3;

    iget-object v0, v0, Lcom/ooyala/adtech/h$3;->c:Lcom/ooyala/adtech/AdRequester$AdListener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$AdListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    return-void
.end method

.method public final onSuccess(Lcom/ooyala/adtech/Ad;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/h$3$1;->b:Lcom/ooyala/adtech/h$3;

    iget-object v0, v0, Lcom/ooyala/adtech/h$3;->g:Lcom/ooyala/adtech/h;

    iget-boolean v0, v0, Lcom/ooyala/adtech/h;->cancelled:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ooyala/adtech/h$3$1;->b:Lcom/ooyala/adtech/h$3;

    iget-object p1, p1, Lcom/ooyala/adtech/h$3;->c:Lcom/ooyala/adtech/AdRequester$AdListener;

    iget-object v0, p0, Lcom/ooyala/adtech/h$3$1;->a:Lcom/ooyala/adtech/Error;

    invoke-interface {p1, v0}, Lcom/ooyala/adtech/AdRequester$AdListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/h$3$1;->b:Lcom/ooyala/adtech/h$3;

    iget-object v0, v0, Lcom/ooyala/adtech/h$3;->c:Lcom/ooyala/adtech/AdRequester$AdListener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$AdListener;->onSuccess(Lcom/ooyala/adtech/Ad;)V

    return-void
.end method
