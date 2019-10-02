.class final Lcom/ooyala/pulse/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/PulseVideoAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/k$a;
    }
.end annotation


# instance fields
.field a:Lcom/ooyala/pulse/Pulse;

.field b:Lcom/ooyala/adtech/Tracker;

.field c:Lcom/ooyala/adtech/Ad;

.field d:Lcom/ooyala/pulse/g;

.field private e:I

.field private f:Lcom/ooyala/pulse/l;

.field private g:I

.field private h:Lcom/ooyala/adtech/LinearCreative;

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
.method protected constructor <init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/adtech/Ad;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/k;->a:Lcom/ooyala/pulse/Pulse;

    iget-object p1, p1, Lcom/ooyala/pulse/Pulse;->b:Lcom/ooyala/adtech/Tracker;

    iput-object p1, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    iput-object p2, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {p2}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ooyala/adtech/LinearCreative;

    iput-object p1, p0, Lcom/ooyala/pulse/k;->h:Lcom/ooyala/adtech/LinearCreative;

    new-instance p1, Lcom/ooyala/pulse/l;

    invoke-direct {p1}, Lcom/ooyala/pulse/l;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/k;->f:Lcom/ooyala/pulse/l;

    sget p1, Lcom/ooyala/pulse/k$a;->a:I

    iput p1, p0, Lcom/ooyala/pulse/k;->e:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/k;->i:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ooyala/adtech/Ad;->getCompanions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/ooyala/adtech/Ad;->getCompanions()Ljava/util/List;

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

    new-instance v0, Lcom/ooyala/pulse/i;

    iget-object v1, p0, Lcom/ooyala/pulse/k;->a:Lcom/ooyala/pulse/Pulse;

    iget-object v2, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    invoke-direct {v0, v1, v2, p2}, Lcom/ooyala/pulse/i;-><init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Companion;)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/i;->a()Lcom/ooyala/pulse/StaticResource;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ooyala/pulse/k;->i:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ooyala/pulse/k$2;->c:[I

    iget v1, p0, Lcom/ooyala/pulse/k;->e:I

    add-int/lit8 v1, v1, -0x1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    const-string p1, "after ad completed."

    goto :goto_0

    :pswitch_1
    const-string p1, "while ad is paused."

    goto :goto_0

    :pswitch_2
    const-string p1, "while ad is playing."

    goto :goto_0

    :pswitch_3
    const-string p1, "while waiting for ad to start."

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ooyala/adtech/Error;

    invoke-direct {v0, p1}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    invoke-interface {p1, v0}, Lcom/ooyala/pulse/g;->a(Lcom/ooyala/adtech/Error;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c()Lcom/ooyala/adtech/LinearCreative;
    .locals 2

    iget-object v0, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/LinearCreative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/LinearCreative;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/k;->h:Lcom/ooyala/adtech/LinearCreative;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    iget-object v1, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v1}, Lcom/ooyala/adtech/Ad;->getStartTimeout()F

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/ooyala/pulse/g;->a(Lcom/ooyala/pulse/PulseVideoAd;F)V

    :cond_0
    return-void
.end method

.method public final adClickThroughTriggered()V
    .locals 3

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->b:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->c:I

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect user click through "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_CLICK_THROUGH:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void
.end method

.method public final adFailed(Lcom/ooyala/pulse/PulseAdError;)V
    .locals 4

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->b:I

    if-eq v0, v1, :cond_0

    const-string p1, "Did not expect ad to fail "

    invoke-direct {p0, p1}, Lcom/ooyala/pulse/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad failed with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/pulse/m$1;->a:[I

    invoke-virtual {p1}, Lcom/ooyala/pulse/PulseAdError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->UNDEFINED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->MEDIA_FILE_DISPLAY_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->NO_SUPPORTED_MEDIA_FILE_FOUND_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->START_AD_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->LINEAR_MEDIA_FILE_NOT_FOUND_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    :goto_0
    iget-object v2, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    iget-object v3, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v3}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ooyala/adtech/Tracker;->reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V

    iget-object v0, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->hasPassback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/ooyala/pulse/m;->a(Lcom/ooyala/pulse/PulseAdError;)Lcom/ooyala/adtech/TrackingError;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/ooyala/pulse/k$2;->b:[I

    invoke-virtual {v0}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/Trackable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    new-instance v3, Lcom/ooyala/pulse/k$1;

    invoke-direct {v3, p0}, Lcom/ooyala/pulse/k$1;-><init>(Lcom/ooyala/pulse/k;)V

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/ooyala/adtech/Ad;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/ooyala/pulse/k;->a:Lcom/ooyala/pulse/Pulse;

    iget-object v0, v0, Lcom/ooyala/pulse/Pulse;->a:Lcom/ooyala/adtech/AdRequester;

    iget-object v1, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    invoke-static {p1}, Lcom/ooyala/pulse/m;->a(Lcom/ooyala/pulse/PulseAdError;)Lcom/ooyala/adtech/TrackingError;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v3}, Lcom/ooyala/adtech/AdRequester;->requestPassback(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/AdRequester$AdListener;)Lcom/ooyala/adtech/Request;

    return-void

    :cond_2
    instance-of v0, v0, Lcom/ooyala/adtech/Creative;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ooyala/pulse/k;->a:Lcom/ooyala/pulse/Pulse;

    iget-object v0, v0, Lcom/ooyala/pulse/Pulse;->a:Lcom/ooyala/adtech/AdRequester;

    iget-object v1, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v1}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/adtech/Creative;

    invoke-static {p1}, Lcom/ooyala/pulse/m;->a(Lcom/ooyala/pulse/PulseAdError;)Lcom/ooyala/adtech/TrackingError;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v3}, Lcom/ooyala/adtech/AdRequester;->requestPassback(Lcom/ooyala/adtech/Creative;Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/AdRequester$AdListener;)Lcom/ooyala/adtech/Request;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    invoke-static {p1}, Lcom/ooyala/pulse/m;->a(Lcom/ooyala/pulse/PulseAdError;)Lcom/ooyala/adtech/TrackingError;

    move-result-object p1

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/ooyala/adtech/Tracker;->reportError(Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/Trackable;)V

    iget-object p1, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    invoke-interface {p1}, Lcom/ooyala/pulse/g;->d()V

    :cond_4
    iput-object v1, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    invoke-static {p1}, Lcom/ooyala/pulse/m;->a(Lcom/ooyala/pulse/PulseAdError;)Lcom/ooyala/adtech/TrackingError;

    move-result-object p1

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/ooyala/adtech/Tracker;->reportError(Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/Trackable;)V

    iget-object p1, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    invoke-interface {p1}, Lcom/ooyala/pulse/g;->d()V

    :cond_7
    iput-object v1, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final adFinished()V
    .locals 3

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->b:I

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect ad to finish playing "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/LinearCreative;->getDuration()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/ooyala/adtech/LinearCreative;->getDuration()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ooyala/pulse/k;->adPositionChanged(F)V

    :cond_1
    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_COMPLETE:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/k;->a:Lcom/ooyala/pulse/Pulse;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/pulse/Pulse;->a(Ljava/util/Calendar;)V

    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    iget-object v1, p0, Lcom/ooyala/pulse/k;->f:Lcom/ooyala/pulse/l;

    invoke-virtual {v1}, Lcom/ooyala/pulse/l;->c()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackTimeSpent(FLcom/ooyala/adtech/Creative;)V

    sget v0, Lcom/ooyala/pulse/k$a;->d:I

    iput v0, p0, Lcom/ooyala/pulse/k;->e:I

    iget-object v0, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    invoke-interface {v0}, Lcom/ooyala/pulse/g;->d()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    iget-object v0, p0, Lcom/ooyala/pulse/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final adPaused()V
    .locals 5

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->b:I

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect user ad pause "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/k;->f:Lcom/ooyala/pulse/l;

    iget-boolean v1, v0, Lcom/ooyala/pulse/l;->c:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/ooyala/pulse/l;->a:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcom/ooyala/pulse/l;->b:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/ooyala/pulse/l;->b:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ooyala/pulse/l;->c:Z

    :cond_1
    sget v0, Lcom/ooyala/pulse/k$a;->c:I

    iput v0, p0, Lcom/ooyala/pulse/k;->e:I

    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_PAUSE:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void
.end method

.method public final adPositionChanged(F)V
    .locals 8

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->b:I

    if-eq v0, v1, :cond_0

    const-string p1, "Did not expect ad to progress "

    invoke-direct {p0, p1}, Lcom/ooyala/pulse/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    invoke-virtual {v1, p1, v0}, Lcom/ooyala/adtech/Tracker;->trackProgress(FLcom/ooyala/adtech/LinearCreative;)V

    invoke-virtual {v0}, Lcom/ooyala/adtech/LinearCreative;->getDuration()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    float-to-double v6, v1

    mul-double v4, v4, v6

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/ooyala/pulse/k;->g:I

    const/4 v1, 0x3

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v2, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_THIRD_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {p1, v2, v0}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    iput v1, p0, Lcom/ooyala/pulse/k;->g:I

    return-void

    :cond_1
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v6

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/ooyala/pulse/k;->g:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_2

    iget-object p1, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v2, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_MID_POINT:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {p1, v2, v0}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    iput v1, p0, Lcom/ooyala/pulse/k;->g:I

    return-void

    :cond_2
    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double v6, v6, v4

    cmpl-double p1, v2, v6

    if-ltz p1, :cond_3

    iget p1, p0, Lcom/ooyala/pulse/k;->g:I

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_FIRST_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {p1, v1, v0}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/ooyala/pulse/k;->g:I

    :cond_3
    return-void
.end method

.method public final adResumed()V
    .locals 3

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->c:I

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect user ad resume "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/k;->f:Lcom/ooyala/pulse/l;

    invoke-virtual {v0}, Lcom/ooyala/pulse/l;->b()V

    sget v0, Lcom/ooyala/pulse/k$a;->b:I

    iput v0, p0, Lcom/ooyala/pulse/k;->e:I

    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_RESUME:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void
.end method

.method public final adSkipped()V
    .locals 3

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->b:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->c:I

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect ad playback to skip "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_CLOSE:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_SKIP:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/k;->a:Lcom/ooyala/pulse/Pulse;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/pulse/Pulse;->a(Ljava/util/Calendar;)V

    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    iget-object v1, p0, Lcom/ooyala/pulse/k;->f:Lcom/ooyala/pulse/l;

    invoke-virtual {v1}, Lcom/ooyala/pulse/l;->c()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackTimeSpent(FLcom/ooyala/adtech/Creative;)V

    sget v0, Lcom/ooyala/pulse/k$a;->d:I

    iput v0, p0, Lcom/ooyala/pulse/k;->e:I

    iget-object v0, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    invoke-interface {v0}, Lcom/ooyala/pulse/g;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    return-void
.end method

.method public final adStarted()V
    .locals 3

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->a:I

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect ad to start playing "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    sget v0, Lcom/ooyala/pulse/k$a;->b:I

    iput v0, p0, Lcom/ooyala/pulse/k;->e:I

    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    iget-object v2, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_VIEW:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_START:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ooyala/pulse/k;->g:I

    iget-object v0, p0, Lcom/ooyala/pulse/k;->f:Lcom/ooyala/pulse/l;

    invoke-virtual {v0}, Lcom/ooyala/pulse/l;->a()V

    return-void
.end method

.method protected final b()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    iget-object v0, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->b:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ooyala/pulse/k;->e:I

    sget v1, Lcom/ooyala/pulse/k$a;->c:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/k;->b:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_CLOSE:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    :cond_1
    sget v0, Lcom/ooyala/pulse/k$a;->d:I

    iput v0, p0, Lcom/ooyala/pulse/k;->e:I

    :cond_2
    return-void
.end method

.method public final getAdPricing()Lcom/ooyala/pulse/AdPricing;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getAdPricing()Lcom/ooyala/adtech/AdPricing;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSystem()Lcom/ooyala/pulse/AdSystem;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

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

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

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

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCampaignIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCampaignIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCandidateNum()I
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

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

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

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

.method public final getClickthroughURL()Ljava/net/URL;
    .locals 1

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/LinearCreative;->getClickthroughURL()Ljava/net/URL;

    move-result-object v0

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

    iget-object v0, p0, Lcom/ooyala/pulse/k;->i:Ljava/util/List;

    return-object v0
.end method

.method public final getCoreAd()Lcom/ooyala/adtech/Ad;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/k;->c:Lcom/ooyala/adtech/Ad;

    return-object v0
.end method

.method public final getCustomCampaignIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCustomCampaignIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomGoalIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCustomGoalIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCustomIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGoalIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getGoalIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMaximumPreparationTime()F
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getMaximumPreparationTime()F

    move-result v0

    return v0
.end method

.method public final getMediaFiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/MediaFile;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/adtech/LinearCreative;->getMediaFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/MediaFile;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getSkipOffset()F
    .locals 1

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/LinearCreative;->getSkipOffset()F

    move-result v0

    return v0
.end method

.method public final getStartTimeout()F
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getStartTimeout()F

    move-result v0

    return v0
.end method

.method public final getSurvey()Ljava/net/URL;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

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

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

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

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVariant()Lcom/ooyala/pulse/PulseAd$Variant;
    .locals 2

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

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

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->hasPassback()Z

    move-result v0

    return v0
.end method

.method public final isConditionalAd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->isConditionalAd()Z

    move-result v0

    return v0
.end method

.method public final isPartOfAnExclusiveCampaign()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->isPartOfAnExclusiveCampaign()Z

    move-result v0

    return v0
.end method

.method public final isReady()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v0

    return v0
.end method

.method public final isSkippable()Z
    .locals 6

    sget-object v0, Lcom/ooyala/pulse/k$2;->a:[I

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/adtech/LinearCreative;->getSkipButtonMode()Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-float v0, v2

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ooyala/adtech/LinearCreative;->getLastCompletion()J

    move-result-wide v2

    div-long/2addr v2, v4

    long-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-direct {p0}, Lcom/ooyala/pulse/k;->c()Lcom/ooyala/adtech/LinearCreative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ooyala/adtech/LinearCreative;->getSkipResetTime()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    return v1

    :pswitch_1
    return v1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldShowCountdown()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->shouldShowCountdown()Z

    move-result v0

    return v0
.end method
