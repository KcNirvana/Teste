.class final Lcom/ooyala/pulse/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/AdRequester$AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/pulse/k;->adFailed(Lcom/ooyala/pulse/PulseAdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/pulse/k;


# direct methods
.method constructor <init>(Lcom/ooyala/pulse/k;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/k$1;->a:Lcom/ooyala/pulse/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/ooyala/adtech/Error;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ooyala/adtech/Error;->getDomain()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->REQUEST:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ooyala/adtech/Error;->getCode()I

    move-result p1

    sget v0, Lcom/ooyala/pulse/Error$Request;->TIMED_OUT:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ooyala/pulse/k$1;->a:Lcom/ooyala/pulse/k;

    iget-object p1, p1, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ooyala/pulse/k$1;->a:Lcom/ooyala/pulse/k;

    iget-object p1, p1, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    invoke-interface {p1}, Lcom/ooyala/pulse/g;->d()V

    :cond_0
    iget-object p1, p0, Lcom/ooyala/pulse/k$1;->a:Lcom/ooyala/pulse/k;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    :cond_1
    return-void
.end method

.method public final onSuccess(Lcom/ooyala/adtech/Ad;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getType()Lcom/ooyala/adtech/Ad$Type;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->STANDARD_SPOT:Lcom/ooyala/adtech/Ad$Type;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/Ad$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ooyala/pulse/k$1;->a:Lcom/ooyala/pulse/k;

    invoke-virtual {p1}, Lcom/ooyala/pulse/k;->a()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getType()Lcom/ooyala/adtech/Ad$Type;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/Ad$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/pulse/k$1;->a:Lcom/ooyala/pulse/k;

    iget-object v0, v0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->AD_NO_AD:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v0, v1, p1}, Lcom/ooyala/adtech/Tracker;->reportError(Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/k$1;->a:Lcom/ooyala/pulse/k;

    iget-object v0, v0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->NO_VAST_RESPONSE_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ooyala/adtech/Tracker;->reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ooyala/pulse/k$1;->a:Lcom/ooyala/pulse/k;

    iget-object v0, v0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->AD_TYPE_NOT_SUPPORTED:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v0, v1, p1}, Lcom/ooyala/adtech/Tracker;->reportError(Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/k$1;->a:Lcom/ooyala/pulse/k;

    iget-object v0, v0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->AD_TYPE_NOT_SUPPORTED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ooyala/adtech/Tracker;->reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V

    :goto_0
    iget-object p1, p0, Lcom/ooyala/pulse/k$1;->a:Lcom/ooyala/pulse/k;

    iget-object p1, p1, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ooyala/pulse/k$1;->a:Lcom/ooyala/pulse/k;

    iget-object p1, p1, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    invoke-interface {p1}, Lcom/ooyala/pulse/g;->d()V

    :cond_2
    return-void
.end method
