.class final Lcom/ooyala/pulse/PauseInsertionPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/PauseAd$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/PauseInsertionPoint$Listener;
    }
.end annotation


# instance fields
.field a:Lcom/ooyala/adtech/Ad;

.field b:Lcom/ooyala/pulse/PauseAd;

.field c:Lcom/ooyala/pulse/Pulse;

.field d:Lcom/ooyala/adtech/Tracker;

.field e:Lcom/ooyala/pulse/PauseInsertionPoint$Listener;

.field f:Lcom/ooyala/adtech/InsertionPoint;

.field g:Z


# direct methods
.method public constructor <init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/adtech/InsertionPoint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->g:Z

    iput-object p1, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->c:Lcom/ooyala/pulse/Pulse;

    iget-object p1, p1, Lcom/ooyala/pulse/Pulse;->b:Lcom/ooyala/adtech/Tracker;

    iput-object p1, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->d:Lcom/ooyala/adtech/Tracker;

    iput-object p2, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->f:Lcom/ooyala/adtech/InsertionPoint;

    invoke-virtual {p2}, Lcom/ooyala/adtech/InsertionPoint;->getSlots()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ooyala/adtech/Slot;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Slot;->getAds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ooyala/adtech/Ad;

    iput-object p1, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->a:Lcom/ooyala/adtech/Ad;

    iput-boolean v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->g:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->a:Lcom/ooyala/adtech/Ad;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->a:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getType()Lcom/ooyala/adtech/Ad$Type;

    move-result-object v1

    sget-object v2, Lcom/ooyala/adtech/Ad$Type;->STANDARD_SPLASH:Lcom/ooyala/adtech/Ad$Type;

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/Ad$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/ooyala/pulse/PauseAd;

    iget-object v2, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->c:Lcom/ooyala/pulse/Pulse;

    invoke-direct {v1, v2, p0, v0}, Lcom/ooyala/pulse/PauseAd;-><init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/pulse/PauseInsertionPoint;Lcom/ooyala/adtech/Ad;)V

    iput-object v1, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->b:Lcom/ooyala/pulse/PauseAd;

    iget-object v1, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->b:Lcom/ooyala/pulse/PauseAd;

    invoke-virtual {v1}, Lcom/ooyala/pulse/PauseAd;->b()Lcom/ooyala/pulse/StaticResource;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->b:Lcom/ooyala/pulse/PauseAd;

    iput-object p0, v0, Lcom/ooyala/pulse/PauseAd;->h:Lcom/ooyala/pulse/PauseAd$Listener;

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->b:Lcom/ooyala/pulse/PauseAd;

    iget-object v1, v0, Lcom/ooyala/pulse/PauseAd;->h:Lcom/ooyala/pulse/PauseAd$Listener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ooyala/pulse/PauseAd;->h:Lcom/ooyala/pulse/PauseAd$Listener;

    invoke-interface {v1, v0}, Lcom/ooyala/pulse/PauseAd$Listener;->startAdDisplay(Lcom/ooyala/pulse/PulsePauseAd;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->d:Lcom/ooyala/adtech/Tracker;

    sget-object v2, Lcom/ooyala/adtech/TrackingError;->CREATIVE_NO_SUPPORTED_MEDIA_FILE_FOUND:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/Trackable;

    invoke-virtual {v1, v2, v0}, Lcom/ooyala/adtech/Tracker;->reportError(Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/Trackable;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getType()Lcom/ooyala/adtech/Ad$Type;

    move-result-object v1

    sget-object v2, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/Ad$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->d:Lcom/ooyala/adtech/Tracker;

    sget-object v2, Lcom/ooyala/adtech/TrackingError;->AD_NO_AD:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v1, v2, v0}, Lcom/ooyala/adtech/Tracker;->reportError(Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/Trackable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->a:Lcom/ooyala/adtech/Ad;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->d:Lcom/ooyala/adtech/Tracker;

    sget-object v2, Lcom/ooyala/adtech/TrackingError;->AD_TYPE_NOT_SUPPORTED:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v1, v2, v0}, Lcom/ooyala/adtech/Tracker;->reportError(Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/Trackable;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->g:Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->e:Lcom/ooyala/pulse/PauseInsertionPoint$Listener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->e:Lcom/ooyala/pulse/PauseInsertionPoint$Listener;

    invoke-interface {v0}, Lcom/ooyala/pulse/PauseInsertionPoint$Listener;->pauseInsertionPointEnded()V

    :cond_5
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->b:Lcom/ooyala/pulse/PauseAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->b:Lcom/ooyala/pulse/PauseAd;

    invoke-virtual {v0}, Lcom/ooyala/pulse/PauseAd;->a()V

    :cond_0
    return-void
.end method

.method public final illegalOperationOccurred(Lcom/ooyala/pulse/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->e:Lcom/ooyala/pulse/PauseInsertionPoint$Listener;

    invoke-interface {v0, p1}, Lcom/ooyala/pulse/PauseInsertionPoint$Listener;->illegalOperationOccurred(Lcom/ooyala/pulse/Error;)V

    return-void
.end method

.method public final pauseAdEnded()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->b:Lcom/ooyala/pulse/PauseAd;

    iput-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->a:Lcom/ooyala/adtech/Ad;

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->e:Lcom/ooyala/pulse/PauseInsertionPoint$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->e:Lcom/ooyala/pulse/PauseInsertionPoint$Listener;

    invoke-interface {v0}, Lcom/ooyala/pulse/PauseInsertionPoint$Listener;->pauseInsertionPointEnded()V

    :cond_0
    return-void
.end method

.method public final startAdDisplay(Lcom/ooyala/pulse/PulsePauseAd;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->e:Lcom/ooyala/pulse/PauseInsertionPoint$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/PauseInsertionPoint;->e:Lcom/ooyala/pulse/PauseInsertionPoint$Listener;

    invoke-interface {v0, p1}, Lcom/ooyala/pulse/PauseInsertionPoint$Listener;->startAdDisplay(Lcom/ooyala/pulse/PulsePauseAd;)V

    :cond_0
    return-void
.end method
