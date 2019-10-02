.class final Lcom/ooyala/pulse/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/PulseAdBreak;
.implements Lcom/ooyala/pulse/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/ooyala/pulse/k;

.field b:Lcom/ooyala/pulse/Pulse;

.field c:Lcom/ooyala/adtech/Tracker;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ooyala/pulse/b;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Condition;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/ooyala/pulse/a$a;

.field g:I

.field h:I

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/adtech/InsertionPoint;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/a;->b:Lcom/ooyala/pulse/Pulse;

    iget-object v0, p1, Lcom/ooyala/pulse/Pulse;->b:Lcom/ooyala/adtech/Tracker;

    iput-object v0, p0, Lcom/ooyala/pulse/a;->c:Lcom/ooyala/adtech/Tracker;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/pulse/a;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/pulse/a;->i:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ooyala/adtech/InsertionPoint;->getSlots()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/Slot;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Slot;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/Ad;

    invoke-virtual {v2}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/ooyala/adtech/Ad;->getType()Lcom/ooyala/adtech/Ad$Type;

    move-result-object v3

    sget-object v5, Lcom/ooyala/adtech/Ad$Type;->STANDARD_SPOT:Lcom/ooyala/adtech/Ad$Type;

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/ooyala/pulse/a;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lcom/ooyala/pulse/a;->d:Ljava/util/ArrayList;

    new-instance v4, Lcom/ooyala/pulse/b;

    iget-object v5, p1, Lcom/ooyala/pulse/Pulse;->a:Lcom/ooyala/adtech/AdRequester;

    invoke-direct {v4, v2, v5}, Lcom/ooyala/pulse/b;-><init>(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/AdRequester;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ooyala/pulse/a;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/ooyala/pulse/a;->h:I

    iput p1, p0, Lcom/ooyala/pulse/a;->g:I

    invoke-virtual {p2}, Lcom/ooyala/adtech/InsertionPoint;->getConditions()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ooyala/pulse/a;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ooyala/pulse/a;Lcom/ooyala/adtech/Ad;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getType()Lcom/ooyala/adtech/Ad$Type;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->STANDARD_SPOT:Lcom/ooyala/adtech/Ad$Type;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/Ad$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ooyala/pulse/k;

    iget-object v1, p0, Lcom/ooyala/pulse/a;->b:Lcom/ooyala/pulse/Pulse;

    invoke-direct {v0, v1, p1}, Lcom/ooyala/pulse/k;-><init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/adtech/Ad;)V

    iput-object v0, p0, Lcom/ooyala/pulse/a;->a:Lcom/ooyala/pulse/k;

    iget-object p1, p0, Lcom/ooyala/pulse/a;->a:Lcom/ooyala/pulse/k;

    iput-object p0, p1, Lcom/ooyala/pulse/k;->d:Lcom/ooyala/pulse/g;

    iget-object p0, p0, Lcom/ooyala/pulse/a;->a:Lcom/ooyala/pulse/k;

    invoke-virtual {p0}, Lcom/ooyala/pulse/k;->a()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getType()Lcom/ooyala/adtech/Ad$Type;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/Ad$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/pulse/a;->c:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->AD_NO_AD:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v0, v1, p1}, Lcom/ooyala/adtech/Tracker;->reportError(Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/a;->c:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->NO_VAST_RESPONSE_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ooyala/adtech/Tracker;->reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ooyala/pulse/a;->c:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->AD_TYPE_NOT_SUPPORTED:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v0, v1, p1}, Lcom/ooyala/adtech/Tracker;->reportError(Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/Trackable;)V

    iget-object v0, p0, Lcom/ooyala/pulse/a;->c:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->AD_TYPE_NOT_SUPPORTED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ooyala/adtech/Tracker;->reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V

    :goto_0
    iget-object v0, p0, Lcom/ooyala/pulse/a;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ooyala/pulse/a;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/ooyala/pulse/a;->g:I

    invoke-virtual {p0}, Lcom/ooyala/pulse/a;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/pulse/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/pulse/b;

    invoke-virtual {v1}, Lcom/ooyala/pulse/b;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/ooyala/adtech/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/a;->f:Lcom/ooyala/pulse/a$a;

    invoke-interface {v0, p1}, Lcom/ooyala/pulse/a$a;->a(Lcom/ooyala/adtech/Error;)V

    return-void
.end method

.method public final a(Lcom/ooyala/pulse/PulseVideoAd;F)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/a;->f:Lcom/ooyala/pulse/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/a;->f:Lcom/ooyala/pulse/a$a;

    invoke-interface {v0, p1, p2}, Lcom/ooyala/pulse/a$a;->a(Lcom/ooyala/pulse/PulseVideoAd;F)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/a;->f:Lcom/ooyala/pulse/a$a;

    iget-object v0, p0, Lcom/ooyala/pulse/a;->a:Lcom/ooyala/pulse/k;

    invoke-virtual {v0}, Lcom/ooyala/pulse/k;->b()V

    return-void
.end method

.method final c()V
    .locals 3

    iget-object v0, p0, Lcom/ooyala/pulse/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ooyala/pulse/a;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/pulse/b;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ooyala/pulse/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v1, Lcom/ooyala/pulse/a$1;

    invoke-direct {v1, p0}, Lcom/ooyala/pulse/a$1;-><init>(Lcom/ooyala/pulse/a;)V

    invoke-virtual {v0, v1}, Lcom/ooyala/pulse/b;->a(Lcom/ooyala/pulse/b$a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/a;->f:Lcom/ooyala/pulse/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/pulse/a;->f:Lcom/ooyala/pulse/a$a;

    invoke-interface {v0}, Lcom/ooyala/pulse/a$a;->a()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ooyala/pulse/a;->f:Lcom/ooyala/pulse/a$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ooyala/pulse/a;->f:Lcom/ooyala/pulse/a$a;

    invoke-interface {v0}, Lcom/ooyala/pulse/a$a;->a()V

    :cond_3
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/pulse/a;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/ooyala/pulse/a;->a:Lcom/ooyala/pulse/k;

    invoke-virtual {v1}, Lcom/ooyala/pulse/k;->getCoreAd()Lcom/ooyala/adtech/Ad;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ooyala/pulse/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ooyala/pulse/a;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/a;->a:Lcom/ooyala/pulse/k;

    invoke-virtual {p0}, Lcom/ooyala/pulse/a;->c()V

    return-void
.end method

.method public final getPlayableAdsRemaining()I
    .locals 1

    iget v0, p0, Lcom/ooyala/pulse/a;->g:I

    return v0
.end method

.method public final getPlayableAdsTotal()I
    .locals 1

    iget v0, p0, Lcom/ooyala/pulse/a;->h:I

    return v0
.end method

.method public final stopAdBreak()V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/pulse/a;->a:Lcom/ooyala/pulse/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/a;->a:Lcom/ooyala/pulse/k;

    invoke-virtual {v0}, Lcom/ooyala/pulse/k;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/a;->a:Lcom/ooyala/pulse/k;

    iget-object v1, p0, Lcom/ooyala/pulse/a;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/ooyala/pulse/a;->g:I

    iget-object v1, p0, Lcom/ooyala/pulse/a;->f:Lcom/ooyala/pulse/a$a;

    invoke-interface {v1}, Lcom/ooyala/pulse/a$a;->a()V

    iput-object v0, p0, Lcom/ooyala/pulse/a;->f:Lcom/ooyala/pulse/a$a;

    return-void
.end method
