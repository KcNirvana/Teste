.class final Lcom/ooyala/pulse/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/PulseCompanionAd;


# instance fields
.field a:Lcom/ooyala/adtech/Ad;

.field b:Lcom/ooyala/adtech/Companion;

.field c:Lcom/ooyala/adtech/Tracker;


# direct methods
.method constructor <init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Companion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ooyala/pulse/i;->a:Lcom/ooyala/adtech/Ad;

    iget-object p1, p1, Lcom/ooyala/pulse/Pulse;->b:Lcom/ooyala/adtech/Tracker;

    iput-object p1, p0, Lcom/ooyala/pulse/i;->c:Lcom/ooyala/adtech/Tracker;

    iput-object p3, p0, Lcom/ooyala/pulse/i;->b:Lcom/ooyala/adtech/Companion;

    return-void
.end method


# virtual methods
.method final a()Lcom/ooyala/pulse/StaticResource;
    .locals 3

    iget-object v0, p0, Lcom/ooyala/pulse/i;->b:Lcom/ooyala/adtech/Companion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/pulse/i;->b:Lcom/ooyala/adtech/Companion;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Companion;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/pulse/Resource;

    instance-of v2, v1, Lcom/ooyala/pulse/StaticResource;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/ooyala/pulse/StaticResource;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final adDisplayed()V
    .locals 3

    iget-object v0, p0, Lcom/ooyala/pulse/i;->c:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_VIEW:Lcom/ooyala/adtech/TrackingEvent;

    iget-object v2, p0, Lcom/ooyala/pulse/i;->b:Lcom/ooyala/adtech/Companion;

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void
.end method

.method public final getClickThroughURL()Ljava/net/URL;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/i;->a()Lcom/ooyala/pulse/StaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ooyala/pulse/i;->a()Lcom/ooyala/pulse/StaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/pulse/StaticResource;->getClickThrough()Ljava/net/URL;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCustomIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/i;->b:Lcom/ooyala/adtech/Companion;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Companion;->getCustomIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeight()I
    .locals 0

    :goto_0
    nop

    goto :goto_0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/i;->b:Lcom/ooyala/adtech/Companion;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Companion;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResourceType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/i;->a()Lcom/ooyala/pulse/StaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ooyala/pulse/i;->a()Lcom/ooyala/pulse/StaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/pulse/StaticResource;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResourceURL()Ljava/net/URL;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/i;->a()Lcom/ooyala/pulse/StaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ooyala/pulse/i;->a()Lcom/ooyala/pulse/StaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/pulse/StaticResource;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/i;->b:Lcom/ooyala/adtech/Companion;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Companion;->getWidth()I

    move-result v0

    return v0
.end method

.method public final getZoneIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/i;->b:Lcom/ooyala/adtech/Companion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/i;->b:Lcom/ooyala/adtech/Companion;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Companion;->getZoneIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
