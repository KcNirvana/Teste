.class final Lcom/ooyala/adtech/AdRequester$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/AdRequester$AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/AdRequester;->a(Lcom/ooyala/adtech/Trackable;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/AdRequester$AdListener;)Lcom/ooyala/adtech/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/Ad;

.field final synthetic b:Lcom/ooyala/adtech/AdRequester$AdListener;

.field final synthetic c:Lcom/ooyala/adtech/AdRequester;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/AdRequester;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/AdRequester$AdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/AdRequester$4;->c:Lcom/ooyala/adtech/AdRequester;

    iput-object p2, p0, Lcom/ooyala/adtech/AdRequester$4;->a:Lcom/ooyala/adtech/Ad;

    iput-object p3, p0, Lcom/ooyala/adtech/AdRequester$4;->b:Lcom/ooyala/adtech/AdRequester$AdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/ooyala/adtech/Error;)V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$4;->a:Lcom/ooyala/adtech/Ad;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ooyala/adtech/Ad;->y:Z

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$4;->b:Lcom/ooyala/adtech/AdRequester$AdListener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$AdListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    return-void
.end method

.method public final onSuccess(Lcom/ooyala/adtech/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$4;->a:Lcom/ooyala/adtech/Ad;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ooyala/adtech/Ad;->y:Z

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester$4;->b:Lcom/ooyala/adtech/AdRequester$AdListener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$AdListener;->onSuccess(Lcom/ooyala/adtech/Ad;)V

    return-void
.end method
