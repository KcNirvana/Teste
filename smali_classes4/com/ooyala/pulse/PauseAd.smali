.class final Lcom/ooyala/pulse/PauseAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/PulsePauseAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/PauseAd$Listener;,
        Lcom/ooyala/pulse/PauseAd$a;
    }
.end annotation


# instance fields
.field a:Lcom/ooyala/pulse/Pulse;

.field b:Lcom/ooyala/adtech/Tracker;

.field c:Lcom/ooyala/pulse/PauseInsertionPoint;

.field d:Lcom/ooyala/adtech/Ad;

.field e:I

.field f:Lcom/ooyala/pulse/l;

.field g:Lcom/ooyala/adtech/NonLinearCreative;

.field h:Lcom/ooyala/pulse/PauseAd$Listener;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/PulseCompanionAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/pulse/PauseInsertionPoint;Lcom/ooyala/adtech/Ad;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/PauseAd;->a:Lcom/ooyala/pulse/Pulse;

    iget-object p1, p1, Lcom/ooyala/pulse/Pulse;->b:Lcom/ooyala/adtech/Tracker;

    iput-object p1, p0, Lcom/ooyala/pulse/PauseAd;->b:Lcom/ooyala/adtech/Tracker;

    iput-object p2, p0, Lcom/ooyala/pulse/PauseAd;->c:Lcom/ooyala/pulse/PauseInsertionPoint;

    iput-object p3, p0, Lcom/ooyala/pulse/PauseAd;->d:Lcom/ooyala/adtech/Ad;

    invoke-virtual {p3}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ooyala/adtech/NonLinearCreative;

    iput-object p1, p0, Lcom/ooyala/pulse/PauseAd;->g:Lcom/ooyala/adtech/NonLinearCreative;

    new-instance p1, Lcom/ooyala/pulse/l;

    invoke-direct {p1}, Lcom/ooyala/pulse/l;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/PauseAd;->f:Lcom/ooyala/pulse/l;

    sget p1, Lcom/ooyala/pulse/PauseAd$a;->a:I

    iput p1, p0, Lcom/ooyala/pulse/PauseAd;->e:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/PauseAd;->i:Ljava/util/List;

    invoke-virtual {p3}, Lcom/ooyala/adtech/Ad;->getCompanions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/ooyala/adtech/Ad;->getCompanions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ooyala/adtech/Companion;

    new-instance p3, Lcom/ooyala/pulse/i;

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->a:Lcom/ooyala/pulse/Pulse;

    iget-object v1, p0, Lcom/ooyala/pulse/PauseAd;->d:Lcom/ooyala/adtech/Ad;

    invoke-direct {p3, v0, v1, p2}, Lcom/ooyala/pulse/i;-><init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Companion;)V

    invoke-virtual {p3}, Lcom/ooyala/pulse/i;->a()Lcom/ooyala/pulse/StaticResource;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ooyala/pulse/PauseAd;->i:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ooyala/pulse/PauseAd$1;->a:[I

    iget v1, p0, Lcom/ooyala/pulse/PauseAd;->e:I

    add-int/lit8 v1, v1, -0x1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    const-string p1, "after the ad was closed."

    goto :goto_0

    :pswitch_1
    const-string p1, "while ad is being displayed."

    goto :goto_0

    :pswitch_2
    const-string p1, "while waiting for ad to display."

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ooyala/pulse/Error;

    invoke-direct {v0, p1}, Lcom/ooyala/pulse/Error;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ooyala/pulse/PauseAd;->h:Lcom/ooyala/pulse/PauseAd$Listener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ooyala/pulse/PauseAd;->h:Lcom/ooyala/pulse/PauseAd$Listener;

    invoke-interface {p1, v0}, Lcom/ooyala/pulse/PauseAd$Listener;->illegalOperationOccurred(Lcom/ooyala/pulse/Error;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c()Lcom/ooyala/adtech/NonLinearCreative;
    .locals 2

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->d:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/NonLinearCreative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->d:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/NonLinearCreative;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->g:Lcom/ooyala/adtech/NonLinearCreative;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->d:Lcom/ooyala/adtech/Ad;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ooyala/pulse/PauseAd;->e:I

    sget v1, Lcom/ooyala/pulse/PauseAd$a;->b:I

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect ad to finish displaying "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/PauseAd;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->b:Lcom/ooyala/adtech/Tracker;

    iget-object v1, p0, Lcom/ooyala/pulse/PauseAd;->f:Lcom/ooyala/pulse/l;

    invoke-virtual {v1}, Lcom/ooyala/pulse/l;->c()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-direct {p0}, Lcom/ooyala/pulse/PauseAd;->c()Lcom/ooyala/adtech/NonLinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackTimeSpent(FLcom/ooyala/adtech/Creative;)V

    sget v0, Lcom/ooyala/pulse/PauseAd$a;->c:I

    iput v0, p0, Lcom/ooyala/pulse/PauseAd;->e:I

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->h:Lcom/ooyala/pulse/PauseAd$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->h:Lcom/ooyala/pulse/PauseAd$Listener;

    invoke-interface {v0}, Lcom/ooyala/pulse/PauseAd$Listener;->pauseAdEnded()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/PauseAd;->d:Lcom/ooyala/adtech/Ad;

    :cond_2
    return-void
.end method

.method public final adClickThroughTriggered()V
    .locals 3

    iget v0, p0, Lcom/ooyala/pulse/PauseAd;->e:I

    sget v1, Lcom/ooyala/pulse/PauseAd$a;->b:I

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect user click through"

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/PauseAd;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_CLICK_THROUGH:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0}, Lcom/ooyala/pulse/PauseAd;->c()Lcom/ooyala/adtech/NonLinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void
.end method

.method public final adClosed()V
    .locals 3

    iget v0, p0, Lcom/ooyala/pulse/PauseAd;->e:I

    sget v1, Lcom/ooyala/pulse/PauseAd$a;->b:I

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect ad to be closed "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/PauseAd;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_CLOSE:Lcom/ooyala/adtech/TrackingEvent;

    iget-object v2, p0, Lcom/ooyala/pulse/PauseAd;->g:Lcom/ooyala/adtech/NonLinearCreative;

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->b:Lcom/ooyala/adtech/Tracker;

    iget-object v1, p0, Lcom/ooyala/pulse/PauseAd;->f:Lcom/ooyala/pulse/l;

    invoke-virtual {v1}, Lcom/ooyala/pulse/l;->c()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-direct {p0}, Lcom/ooyala/pulse/PauseAd;->c()Lcom/ooyala/adtech/NonLinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackTimeSpent(FLcom/ooyala/adtech/Creative;)V

    sget v0, Lcom/ooyala/pulse/PauseAd$a;->c:I

    iput v0, p0, Lcom/ooyala/pulse/PauseAd;->e:I

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->h:Lcom/ooyala/pulse/PauseAd$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->h:Lcom/ooyala/pulse/PauseAd$Listener;

    invoke-interface {v0}, Lcom/ooyala/pulse/PauseAd$Listener;->pauseAdEnded()V

    :cond_1
    return-void
.end method

.method public final adDisplayed()V
    .locals 3

    iget v0, p0, Lcom/ooyala/pulse/PauseAd;->e:I

    sget v1, Lcom/ooyala/pulse/PauseAd$a;->a:I

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect ad to start displaying "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/PauseAd;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->c:Lcom/ooyala/pulse/PauseInsertionPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->c:Lcom/ooyala/pulse/PauseInsertionPoint;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ooyala/pulse/PauseInsertionPoint;->g:Z

    :cond_1
    sget v0, Lcom/ooyala/pulse/PauseAd$a;->b:I

    iput v0, p0, Lcom/ooyala/pulse/PauseAd;->e:I

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    iget-object v2, p0, Lcom/ooyala/pulse/PauseAd;->d:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_VIEW:Lcom/ooyala/adtech/TrackingEvent;

    iget-object v2, p0, Lcom/ooyala/pulse/PauseAd;->d:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->f:Lcom/ooyala/pulse/l;

    invoke-virtual {v0}, Lcom/ooyala/pulse/l;->a()V

    return-void
.end method

.method public final adFailed(Lcom/ooyala/pulse/PulseAdError;)V
    .locals 2

    iget v0, p0, Lcom/ooyala/pulse/PauseAd;->e:I

    sget v1, Lcom/ooyala/pulse/PauseAd$a;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ooyala/pulse/PauseAd;->e:I

    sget v1, Lcom/ooyala/pulse/PauseAd$a;->b:I

    if-eq v0, v1, :cond_0

    const-string p1, "Did not expect ad to fail "

    invoke-direct {p0, p1}, Lcom/ooyala/pulse/PauseAd;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad failed with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->b:Lcom/ooyala/adtech/Tracker;

    invoke-static {p1}, Lcom/ooyala/pulse/m;->a(Lcom/ooyala/pulse/PulseAdError;)Lcom/ooyala/adtech/TrackingError;

    move-result-object p1

    invoke-direct {p0}, Lcom/ooyala/pulse/PauseAd;->c()Lcom/ooyala/adtech/NonLinearCreative;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ooyala/adtech/Tracker;->reportError(Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/Trackable;)V

    iget-object p1, p0, Lcom/ooyala/pulse/PauseAd;->h:Lcom/ooyala/pulse/PauseAd$Listener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ooyala/pulse/PauseAd;->h:Lcom/ooyala/pulse/PauseAd$Listener;

    invoke-interface {p1}, Lcom/ooyala/pulse/PauseAd$Listener;->pauseAdEnded()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ooyala/pulse/PauseAd;->d:Lcom/ooyala/adtech/Ad;

    return-void
.end method

.method final b()Lcom/ooyala/pulse/StaticResource;
    .locals 2

    invoke-direct {p0}, Lcom/ooyala/pulse/PauseAd;->c()Lcom/ooyala/adtech/NonLinearCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/NonLinearCreative;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/pulse/Resource;

    instance-of v1, v0, Lcom/ooyala/pulse/StaticResource;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ooyala/pulse/StaticResource;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdPricing()Lcom/ooyala/pulse/AdPricing;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getAdPricing()Lcom/ooyala/adtech/AdPricing;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSystem()Lcom/ooyala/pulse/AdSystem;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getAdSystem()Lcom/ooyala/adtech/AdSystem;

    move-result-object v0

    return-object v0
.end method

.method public final getAdVerifications()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/AdVerification;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/adtech/Ad;->getAdVerifications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/AdVerification;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCampaignIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCampaignIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCandidateNum()I
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v0

    return v0
.end method

.method public final getCategories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/AdCategory;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/adtech/Ad;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/AdCategory;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getClickThroughURL()Ljava/net/URL;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->b()Lcom/ooyala/pulse/StaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->b()Lcom/ooyala/pulse/StaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/pulse/StaticResource;->getClickThrough()Ljava/net/URL;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCompanions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/PulseCompanionAd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->i:Ljava/util/List;

    return-object v0
.end method

.method public final getCoreAd()Lcom/ooyala/adtech/Ad;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/PauseAd;->d:Lcom/ooyala/adtech/Ad;

    return-object v0
.end method

.method public final getCustomCampaignIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCustomCampaignIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomGoalIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCustomGoalIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCustomIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGoalIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getGoalIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMaximumPreparationTime()F
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getMaximumPreparationTime()F

    move-result v0

    return v0
.end method

.method public final getResourceType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->b()Lcom/ooyala/pulse/StaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->b()Lcom/ooyala/pulse/StaticResource;

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

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->b()Lcom/ooyala/pulse/StaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->b()Lcom/ooyala/pulse/StaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/pulse/StaticResource;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStartTimeout()F
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getStartTimeout()F

    move-result v0

    return v0
.end method

.method public final getSurvey()Ljava/net/URL;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getSurvey()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getSurveys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/AdSurvey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/adtech/Ad;->getSurveys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/pulse/AdSurvey;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVariant()Lcom/ooyala/pulse/PulseAd$Variant;
    .locals 2

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getVariant()Lcom/ooyala/adtech/Ad$Variant;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/Ad$Variant;->VARIANT_SPONSOR:Lcom/ooyala/adtech/Ad$Variant;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/Ad$Variant;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ooyala/pulse/PulseAd$Variant;->VARIANT_SPONSOR:Lcom/ooyala/pulse/PulseAd$Variant;

    return-object v0

    :cond_0
    sget-object v0, Lcom/ooyala/pulse/PulseAd$Variant;->VARIANT_NORMAL:Lcom/ooyala/pulse/PulseAd$Variant;

    return-object v0
.end method

.method public final hasPassback()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->hasPassback()Z

    move-result v0

    return v0
.end method

.method public final isConditionalAd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->isConditionalAd()Z

    move-result v0

    return v0
.end method

.method public final isPartOfAnExclusiveCampaign()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->isPartOfAnExclusiveCampaign()Z

    move-result v0

    return v0
.end method

.method public final isReady()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v0

    return v0
.end method

.method public final shouldShowCountdown()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/PauseAd;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->shouldShowCountdown()Z

    move-result v0

    return v0
.end method
