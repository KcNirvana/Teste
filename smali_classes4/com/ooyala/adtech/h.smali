.class final Lcom/ooyala/adtech/h;
.super Lcom/ooyala/adtech/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/h$a;,
        Lcom/ooyala/adtech/h$b;
    }
.end annotation


# static fields
.field static f:Lcom/ooyala/adtech/Tracker; = null

.field static g:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/AdRequester$AdListener;Lcom/ooyala/adtech/d;)V
    .locals 6

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p0, p3, v0}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    sget-object p3, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    if-nez p3, :cond_0

    new-instance p3, Lcom/ooyala/adtech/Tracker;

    invoke-direct {p3}, Lcom/ooyala/adtech/Tracker;-><init>()V

    sput-object p3, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    :cond_0
    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getMaximumPreparationTime()F

    move-result v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;FJLcom/ooyala/adtech/AdRequester$AdListener;)V

    return-void
.end method

.method constructor <init>(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;Lcom/ooyala/adtech/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ooyala/adtech/h;-><init>(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;Lcom/ooyala/adtech/d;Z)V

    return-void
.end method

.method constructor <init>(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;Lcom/ooyala/adtech/d;Z)V
    .locals 2

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p0, p3, v0}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    sput-boolean p4, Lcom/ooyala/adtech/h;->g:Z

    sget-object p3, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    if-nez p3, :cond_0

    new-instance p3, Lcom/ooyala/adtech/Tracker;

    invoke-direct {p3}, Lcom/ooyala/adtech/Tracker;-><init>()V

    sput-object p3, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/ooyala/adtech/Session;->b()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->hasPassback()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    if-nez p4, :cond_3

    invoke-interface {p2, p1}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onSuccess(Lcom/ooyala/adtech/Session;)V

    return-void

    :cond_3
    const/4 p4, 0x0

    new-instance v0, Lcom/ooyala/adtech/h$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ooyala/adtech/h$1;-><init>(Lcom/ooyala/adtech/h;Lcom/ooyala/adtech/AdRequester$SessionListener;Lcom/ooyala/adtech/Session;)V

    invoke-virtual {p0, p3, p4, v0}, Lcom/ooyala/adtech/h;->a(Ljava/util/List;ILcom/ooyala/adtech/h$b;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/ooyala/adtech/h$b;Lcom/ooyala/adtech/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Ad;",
            ">;",
            "Lcom/ooyala/adtech/h$b;",
            "Lcom/ooyala/adtech/d;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p0, p3, v0}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    sget-object p3, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    if-nez p3, :cond_0

    new-instance p3, Lcom/ooyala/adtech/Tracker;

    invoke-direct {p3}, Lcom/ooyala/adtech/Tracker;-><init>()V

    sput-object p3, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p2}, Lcom/ooyala/adtech/h$b;->a()V

    return-void

    :cond_1
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/ooyala/adtech/h;->a(Ljava/util/List;ILcom/ooyala/adtech/h$b;)V

    return-void
.end method

.method static a(FJ)F
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    long-to-float p1, v0

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static a(Lcom/ooyala/adtech/Ad;)V
    .locals 3

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/Ad;

    iget-object v1, p0, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ooyala/adtech/Ad;->w:Ljava/net/URL;

    if-nez v1, :cond_0

    invoke-static {v0, p0, v2}, Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Ad;Z)V

    invoke-static {v0, p0}, Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Ad;)V

    :cond_0
    iput-boolean v2, p0, Lcom/ooyala/adtech/Ad;->u:Z

    return-void
.end method

.method static a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Ad;)V
    .locals 6

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/ooyala/adtech/Ad;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    iput-object v0, p1, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->c:Lcom/ooyala/adtech/Ad$Variant;

    iput-object v0, p1, Lcom/ooyala/adtech/Ad;->c:Lcom/ooyala/adtech/Ad$Variant;

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->m:Ljava/lang/String;

    iput-object v0, p1, Lcom/ooyala/adtech/Ad;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->n:Ljava/lang/String;

    iput-object v0, p1, Lcom/ooyala/adtech/Ad;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->o:Ljava/lang/String;

    iput-object v0, p1, Lcom/ooyala/adtech/Ad;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->p:Ljava/lang/String;

    iput-object v0, p1, Lcom/ooyala/adtech/Ad;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->q:Ljava/lang/String;

    iput-object v0, p1, Lcom/ooyala/adtech/Ad;->q:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/ooyala/adtech/Ad;->r:Z

    iput-boolean v0, p1, Lcom/ooyala/adtech/Ad;->r:Z

    iget-boolean v0, p0, Lcom/ooyala/adtech/Ad;->s:Z

    iput-boolean v0, p1, Lcom/ooyala/adtech/Ad;->s:Z

    iget-boolean v0, p0, Lcom/ooyala/adtech/Ad;->t:Z

    iput-boolean v0, p1, Lcom/ooyala/adtech/Ad;->t:Z

    iget v0, p0, Lcom/ooyala/adtech/Ad;->l:I

    iput v0, p1, Lcom/ooyala/adtech/Ad;->l:I

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/LinearCreative;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ooyala/adtech/LinearCreative;

    iget-object v4, v2, Lcom/ooyala/adtech/LinearCreative;->d:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    iput-object v4, v3, Lcom/ooyala/adtech/LinearCreative;->d:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    iget-wide v4, v2, Lcom/ooyala/adtech/LinearCreative;->m:J

    iput-wide v4, v3, Lcom/ooyala/adtech/LinearCreative;->m:J

    iget v4, v2, Lcom/ooyala/adtech/LinearCreative;->f:F

    iput v4, v3, Lcom/ooyala/adtech/LinearCreative;->f:F

    iget v4, v2, Lcom/ooyala/adtech/LinearCreative;->e:F

    iput v4, v3, Lcom/ooyala/adtech/LinearCreative;->e:F

    iget-boolean v2, v2, Lcom/ooyala/adtech/LinearCreative;->n:Z

    iput-boolean v2, v3, Lcom/ooyala/adtech/LinearCreative;->n:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Ad;Z)V
    .locals 6

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->i:Lcom/ooyala/adtech/Slot;

    iput-object v0, p1, Lcom/ooyala/adtech/Ad;->i:Lcom/ooyala/adtech/Slot;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvents;)V

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getType()Lcom/ooyala/adtech/Ad$Type;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/LinearCreative;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    iput-object p1, v2, Lcom/ooyala/adtech/LinearCreative;->i:Lcom/ooyala/adtech/Ad;

    iget-object v3, p1, Lcom/ooyala/adtech/Ad;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ooyala/adtech/LinearCreative;

    invoke-virtual {v3}, Lcom/ooyala/adtech/LinearCreative;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ooyala/adtech/LinearCreative;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvents;)V

    iget-object v4, v3, Lcom/ooyala/adtech/LinearCreative;->b:Ljava/util/List;

    iget-object v5, v2, Lcom/ooyala/adtech/LinearCreative;->b:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_2

    invoke-virtual {v3, v2}, Lcom/ooyala/adtech/LinearCreative;->a(Lcom/ooyala/adtech/LinearCreative;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getCompanions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getCompanions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getCompanions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/Companion;

    iput-object p1, v2, Lcom/ooyala/adtech/Companion;->i:Lcom/ooyala/adtech/Ad;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/ooyala/adtech/Ad;->b:Ljava/lang/String;

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->b:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/ooyala/adtech/Ad;->f:Z

    iput-boolean p2, p1, Lcom/ooyala/adtech/Ad;->f:Z

    iget-object p2, p0, Lcom/ooyala/adtech/Ad;->z:Lcom/ooyala/adtech/AdSystem;

    if-eqz p2, :cond_5

    iget-object p2, p1, Lcom/ooyala/adtech/Ad;->z:Lcom/ooyala/adtech/AdSystem;

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getAdSystem()Lcom/ooyala/adtech/AdSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/AdSystem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ooyala/adtech/AdSystem;->setName(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/ooyala/adtech/Ad;->z:Lcom/ooyala/adtech/AdSystem;

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getAdSystem()Lcom/ooyala/adtech/AdSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/AdSystem;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ooyala/adtech/AdSystem;->setVersion(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getCategories()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getCategories()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/adtech/AdCategory;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lcom/ooyala/adtech/Ad;->B:Ljava/lang/String;

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->B:Ljava/lang/String;

    iget-object p2, p0, Lcom/ooyala/adtech/Ad;->C:Ljava/lang/String;

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->C:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getAdPricing()Lcom/ooyala/adtech/AdPricing;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p1, Lcom/ooyala/adtech/Ad;->D:Lcom/ooyala/adtech/AdPricing;

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->D:Lcom/ooyala/adtech/AdPricing;

    invoke-virtual {v0}, Lcom/ooyala/adtech/AdPricing;->getPricing()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ooyala/adtech/AdPricing;->setPricing(Ljava/lang/Float;)V

    iget-object p2, p1, Lcom/ooyala/adtech/Ad;->D:Lcom/ooyala/adtech/AdPricing;

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->D:Lcom/ooyala/adtech/AdPricing;

    invoke-virtual {v0}, Lcom/ooyala/adtech/AdPricing;->getCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ooyala/adtech/AdPricing;->setCurrency(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/ooyala/adtech/Ad;->D:Lcom/ooyala/adtech/AdPricing;

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->D:Lcom/ooyala/adtech/AdPricing;

    invoke-virtual {v0}, Lcom/ooyala/adtech/AdPricing;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ooyala/adtech/AdPricing;->setModel(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getAdVerifications()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getAdVerifications()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getAdVerifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/adtech/AdVerification;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getSurveys()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_9

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getSurveys()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getSurveys()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ooyala/adtech/AdSurvey;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    return-void
.end method


# virtual methods
.method final a(Lcom/ooyala/adtech/Ad;FJLcom/ooyala/adtech/AdRequester$AdListener;)V
    .locals 14

    move-object v2, p1

    iget-object v0, v2, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/ooyala/adtech/Ad;

    invoke-static/range {p2 .. p4}, Lcom/ooyala/adtech/h;->a(FJ)F

    move-result v0

    invoke-virtual {v9}, Lcom/ooyala/adtech/Ad;->getMaximumPreparationTime()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-static/range {p2 .. p4}, Lcom/ooyala/adtech/h;->a(FJ)F

    move-result v0

    invoke-virtual {v9}, Lcom/ooyala/adtech/Ad;->getMaximumPreparationTime()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    new-instance v13, Lcom/ooyala/adtech/h$3;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object v3, v9

    move-object/from16 v4, p5

    move/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/ooyala/adtech/h$3;-><init>(Lcom/ooyala/adtech/h;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/AdRequester$AdListener;FJZ)V

    move-object v2, p0

    move v4, v10

    move-wide v5, v11

    move-object v7, v13

    invoke-virtual/range {v2 .. v7}, Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;FJLcom/ooyala/adtech/h$a;)V

    return-void
.end method

.method final a(Lcom/ooyala/adtech/Ad;FJLcom/ooyala/adtech/h$a;)V
    .locals 10

    iget-object v0, p1, Lcom/ooyala/adtech/Ad;->w:Ljava/net/URL;

    if-nez v0, :cond_0

    invoke-interface {p5, p1}, Lcom/ooyala/adtech/h$a;->a(Lcom/ooyala/adtech/Ad;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/h;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/h;->b:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/ooyala/adtech/h;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/ooyala/adtech/Ad;->w:Ljava/net/URL;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/ooyala/adtech/Ad;->w:Ljava/net/URL;

    invoke-static {p2, p3, p4}, Lcom/ooyala/adtech/h;->a(FJ)F

    move-result v1

    new-instance v9, Lcom/ooyala/adtech/h$4;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p5

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/ooyala/adtech/h$4;-><init>(Lcom/ooyala/adtech/h;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/h$a;FJ)V

    invoke-virtual {p0, v0, v1, v9}, Lcom/ooyala/adtech/h;->a(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;)V

    return-void
.end method

.method final a(Ljava/util/List;ILcom/ooyala/adtech/h$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Ad;",
            ">;I",
            "Lcom/ooyala/adtech/h$b;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ooyala/adtech/Ad;

    invoke-virtual {v2}, Lcom/ooyala/adtech/Ad;->getMaximumPreparationTime()F

    move-result v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    new-instance v6, Lcom/ooyala/adtech/h$2;

    invoke-direct {v6, p0, p2, p1, p3}, Lcom/ooyala/adtech/h$2;-><init>(Lcom/ooyala/adtech/h;ILjava/util/List;Lcom/ooyala/adtech/h$b;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;FJLcom/ooyala/adtech/AdRequester$AdListener;)V

    return-void
.end method
