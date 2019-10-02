.class public Lcom/ooyala/adtech/Tracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Lcom/ooyala/adtech/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ooyala/adtech/d;

    invoke-direct {v0}, Lcom/ooyala/adtech/d;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/Tracker;->a:Lcom/ooyala/adtech/d;

    return-void
.end method

.method private a()V
    .locals 5

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->INVALID_TRACKABLE:I

    const-string v3, "Not a valid trackable object"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/ooyala/adtech/Tracker;->a:Lcom/ooyala/adtech/d;

    new-instance v2, Lcom/ooyala/adtech/LogItem;

    sget-object v3, Lcom/ooyala/pulse/LogItem$Source;->TRACKER:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v4, Lcom/ooyala/pulse/LogItem$Event;->INVALID_ARGUMENT:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v2, v3, v4, v0}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    return-void
.end method

.method private a(Lcom/ooyala/adtech/Ad;)V
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->h:Lcom/ooyala/adtech/TrackingEvent;

    iget-object p1, p1, Lcom/ooyala/adtech/Ad;->i:Lcom/ooyala/adtech/Slot;

    invoke-direct {p0, v0, p1}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void
.end method

.method private a(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V
    .locals 2

    sget-object v0, Lcom/ooyala/adtech/TrackingError$a;->a:Lcom/ooyala/adtech/TrackingError$a;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;Lcom/ooyala/adtech/TrackingError$a;Z)V

    return-void
.end method

.method private a(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;Lcom/ooyala/adtech/TrackingError$a;Z)V
    .locals 2

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/ooyala/adtech/Creative;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/ooyala/adtech/Creative;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Creative;->getParentAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-interface {v0}, Lcom/ooyala/adtech/Trackable;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;)Lcom/ooyala/adtech/i;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/ooyala/adtech/i;->c:Z

    if-nez v1, :cond_2

    iget-boolean p1, p1, Lcom/ooyala/adtech/TrackingEvent;->b:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/ooyala/adtech/i;->c:Z

    :cond_1
    invoke-direct {p0, v0, p3, p4}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/i;Lcom/ooyala/adtech/TrackingError$a;Z)V

    return-void

    :cond_2
    if-eqz p4, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->d(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/ooyala/adtech/i;Lcom/ooyala/adtech/TrackingError$a;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/ooyala/adtech/i;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    new-instance v1, Lcom/ooyala/adtech/k;

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/ooyala/adtech/Tracker;->a:Lcom/ooyala/adtech/d;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v1, v0, p2, v2}, Lcom/ooyala/adtech/k;-><init>(Ljava/net/URL;Lcom/ooyala/adtech/TrackingError$a;Lcom/ooyala/adtech/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 5

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->AD_NOT_READY:I

    const-string v3, "Cannot track events or reports errors on an ad that is not ready."

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/ooyala/adtech/Tracker;->a:Lcom/ooyala/adtech/d;

    new-instance v2, Lcom/ooyala/adtech/LogItem;

    sget-object v3, Lcom/ooyala/pulse/LogItem$Source;->TRACKER:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v4, Lcom/ooyala/pulse/LogItem$Event;->ILLEGAL_OPERATION:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v2, v3, v4, v0}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    return-void
.end method

.method private b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V
    .locals 2

    sget-object v0, Lcom/ooyala/adtech/TrackingError$a;->a:Lcom/ooyala/adtech/TrackingError$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;Lcom/ooyala/adtech/TrackingError$a;Z)V

    return-void
.end method

.method private c()V
    .locals 5

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->REPORTED_ERROR_AFTER_TRACKING_IMPRESSION:I

    const-string v3, "Cannot report error on Ad after tracking AD_IMPRESSION."

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/ooyala/adtech/Tracker;->a:Lcom/ooyala/adtech/d;

    new-instance v2, Lcom/ooyala/adtech/LogItem;

    sget-object v3, Lcom/ooyala/pulse/LogItem$Source;->TRACKER:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v4, Lcom/ooyala/pulse/LogItem$Event;->ILLEGAL_OPERATION:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v2, v3, v4, v0}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    return-void
.end method

.method private c(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V
    .locals 6

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->CANNOT_TRACK_AFTER_ERROR:I

    const-string v3, "Cannot track event %s on %s after an error has been reported."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/ooyala/adtech/TrackingEvent;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ooyala/adtech/Tracker;->a:Lcom/ooyala/adtech/d;

    new-instance p2, Lcom/ooyala/adtech/LogItem;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Source;->TRACKER:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v2, Lcom/ooyala/pulse/LogItem$Event;->ILLEGAL_OPERATION:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p2, v1, v2, v0}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    return-void
.end method

.method private d(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V
    .locals 6

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->ALREADY_TRACKED_EVENT:I

    const-string v3, "Cannot track event %s more than once on %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/ooyala/adtech/TrackingEvent;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ooyala/adtech/Tracker;->a:Lcom/ooyala/adtech/d;

    new-instance p2, Lcom/ooyala/adtech/LogItem;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Source;->TRACKER:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v2, Lcom/ooyala/pulse/LogItem$Event;->ILLEGAL_OPERATION:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p2, v1, v2, v0}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    return-void
.end method


# virtual methods
.method public addLogListener(Lcom/ooyala/adtech/LogListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Tracker;->a:Lcom/ooyala/adtech/d;

    invoke-virtual {v0, p1}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogListener;)V

    return-void
.end method

.method public reportError(Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/Trackable;)V
    .locals 7

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/TrackingError;->a(Lcom/ooyala/adtech/Trackable;)Lcom/ooyala/adtech/TrackingError$a;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->a:Lcom/ooyala/adtech/TrackingError$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v3, Lcom/ooyala/pulse/Error$Core;->INVALID_TRACKING_ERROR:I

    const-string v4, "Error type %s not supported for %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/ooyala/adtech/TrackingError;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v3, p1}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ooyala/adtech/Tracker;->a:Lcom/ooyala/adtech/d;

    new-instance p2, Lcom/ooyala/adtech/LogItem;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Source;->TRACKER:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v2, Lcom/ooyala/pulse/LogItem$Event;->INVALID_ARGUMENT:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p2, v1, v2, v0}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    return-void

    :cond_0
    invoke-interface {p2}, Lcom/ooyala/adtech/Trackable;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p1

    instance-of v1, p2, Lcom/ooyala/adtech/Ad;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Lcom/ooyala/adtech/Ad;

    invoke-virtual {v1}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/ooyala/adtech/Ad;->getType()Lcom/ooyala/adtech/Ad$Type;

    move-result-object v3

    sget-object v4, Lcom/ooyala/adtech/Ad$Type;->UNKNOWN:Lcom/ooyala/adtech/Ad$Type;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {p1, v3}, Lcom/ooyala/adtech/TrackingEvents;->c(Lcom/ooyala/adtech/TrackingEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/ooyala/adtech/Tracker;->c()V

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/Ad;)V

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;Lcom/ooyala/adtech/TrackingError$a;Z)V

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/ooyala/adtech/Tracker;->b()V

    return-void

    :cond_4
    instance-of p1, p2, Lcom/ooyala/adtech/Creative;

    if-eqz p1, :cond_6

    move-object p1, p2

    check-cast p1, Lcom/ooyala/adtech/Creative;

    iget-object p1, p1, Lcom/ooyala/adtech/Creative;->i:Lcom/ooyala/adtech/Ad;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v1

    sget-object v3, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v1, v3}, Lcom/ooyala/adtech/TrackingEvents;->c(Lcom/ooyala/adtech/TrackingEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/ooyala/adtech/Tracker;->c()V

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/Ad;)V

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;Lcom/ooyala/adtech/TrackingError$a;Z)V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/ooyala/adtech/Tracker;->a()V

    return-void
.end method

.method public reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V
    .locals 3

    invoke-virtual {p2}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->j:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->hasEvent(Lcom/ooyala/adtech/TrackingEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ooyala/adtech/TrackingError$PulseError;->UNDEFINED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    :goto_0
    invoke-virtual {p2}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->j:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;)Lcom/ooyala/adtech/i;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/ooyala/adtech/i;->c:Z

    if-nez v1, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/ooyala/adtech/i;->c:Z

    invoke-virtual {v0}, Lcom/ooyala/adtech/i;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    new-instance v1, Lcom/ooyala/adtech/k;

    iget-object v2, p0, Lcom/ooyala/adtech/Tracker;->a:Lcom/ooyala/adtech/d;

    invoke-direct {v1, v0, p1, p3, v2}, Lcom/ooyala/adtech/k;-><init>(Ljava/net/URL;Lcom/ooyala/adtech/TrackingError$PulseError;ILcom/ooyala/adtech/d;)V

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->j:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->d(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    :cond_3
    return-void
.end method

.method public trackCustomEvent(Ljava/lang/String;Lcom/ooyala/adtech/Trackable;)V
    .locals 1

    invoke-interface {p2}, Lcom/ooyala/adtech/Trackable;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ooyala/adtech/TrackingEvents;->a(Ljava/lang/String;)Lcom/ooyala/adtech/i;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ooyala/adtech/TrackingError$a;->a:Lcom/ooyala/adtech/TrackingError$a;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/i;Lcom/ooyala/adtech/TrackingError$a;Z)V

    :cond_0
    return-void
.end method

.method public trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V
    .locals 3

    instance-of v0, p2, Lcom/ooyala/adtech/Session;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void

    :cond_0
    instance-of v0, p2, Lcom/ooyala/adtech/Ad;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getType()Lcom/ooyala/adtech/Ad$Type;

    move-result-object v1

    sget-object v2, Lcom/ooyala/adtech/Ad$Type;->UNKNOWN:Lcom/ooyala/adtech/Ad$Type;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/ooyala/adtech/Trackable;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v1

    sget-object v2, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/TrackingEvents;->c(Lcom/ooyala/adtech/TrackingEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->c(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/Ad;)V

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/ooyala/adtech/Tracker;->b()V

    return-void

    :cond_4
    instance-of v0, p2, Lcom/ooyala/adtech/Creative;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/ooyala/adtech/Creative;

    iget-object v0, v0, Lcom/ooyala/adtech/Creative;->i:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->c(Lcom/ooyala/adtech/TrackingEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->c(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void

    :cond_5
    iget-boolean v0, p1, Lcom/ooyala/adtech/TrackingEvent;->c:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->g:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, v0, p2}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_COMPLETE:Lcom/ooyala/adtech/TrackingEvent;

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_THIRD_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_MID_POINT:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_FIRST_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_START:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void

    :cond_7
    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_THIRD_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    if-ne p1, v0, :cond_8

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_MID_POINT:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_FIRST_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_START:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void

    :cond_8
    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_MID_POINT:Lcom/ooyala/adtech/TrackingEvent;

    if-ne p1, v0, :cond_9

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_FIRST_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_START:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void

    :cond_9
    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_FIRST_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    if-ne p1, v0, :cond_a

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_START:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->b(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    :cond_a
    return-void

    :cond_b
    instance-of v0, p2, Lcom/ooyala/adtech/AdVerification;

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/ooyala/adtech/Tracker;->a()V

    return-void
.end method

.method public trackProgress(FLcom/ooyala/adtech/LinearCreative;)V
    .locals 12

    iget-object v0, p2, Lcom/ooyala/adtech/LinearCreative;->i:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->c(Lcom/ooyala/adtech/TrackingEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->f:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->c(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void

    :cond_0
    iget v0, p2, Lcom/ooyala/adtech/LinearCreative;->a:F

    invoke-virtual {p2}, Lcom/ooyala/adtech/LinearCreative;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p2

    iget-object v1, p2, Lcom/ooyala/adtech/TrackingEvents;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/j;

    iget-object v3, v2, Lcom/ooyala/adtech/j;->c:Lcom/ooyala/adtech/TrackingEvent;

    sget-object v4, Lcom/ooyala/adtech/TrackingEvent;->f:Lcom/ooyala/adtech/TrackingEvent;

    if-ne v3, v4, :cond_1

    iget-object v3, p2, Lcom/ooyala/adtech/TrackingEvents;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ooyala/adtech/i;

    iget-boolean v4, v3, Lcom/ooyala/adtech/i;->c:Z

    if-nez v4, :cond_1

    check-cast v2, Lcom/ooyala/adtech/f;

    iget v4, v2, Lcom/ooyala/adtech/f;->a:I

    sget v5, Lcom/ooyala/adtech/f$a;->a:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-lez v4, :cond_3

    float-to-double v4, p1

    iget v2, v2, Lcom/ooyala/adtech/f;->b:F

    float-to-double v8, v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    float-to-double v10, v0

    mul-double v8, v8, v10

    cmpl-double v2, v4, v8

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_2
    iget v2, v2, Lcom/ooyala/adtech/f;->b:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3

    :goto_1
    const/4 v6, 0x1

    :cond_3
    if-eqz v6, :cond_1

    iput-boolean v7, v3, Lcom/ooyala/adtech/i;->c:Z

    sget-object v2, Lcom/ooyala/adtech/TrackingError$a;->a:Lcom/ooyala/adtech/TrackingError$a;

    invoke-direct {p0, v3, v2, v7}, Lcom/ooyala/adtech/Tracker;->a(Lcom/ooyala/adtech/i;Lcom/ooyala/adtech/TrackingError$a;Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public trackTimeSpent(FLcom/ooyala/adtech/Creative;)V
    .locals 4

    iget-object v0, p2, Lcom/ooyala/adtech/Creative;->i:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->c(Lcom/ooyala/adtech/TrackingEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/ooyala/adtech/TrackingEvent;->f:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/Tracker;->c(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/ooyala/adtech/Creative;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p2

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->e:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;)Lcom/ooyala/adtech/i;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/ooyala/adtech/i;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :catch_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\[c\\]|%5Bc%5D"

    float-to-int v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/ooyala/adtech/k;

    sget-object v2, Lcom/ooyala/adtech/TrackingError$a;->a:Lcom/ooyala/adtech/TrackingError$a;

    iget-object v3, p0, Lcom/ooyala/adtech/Tracker;->a:Lcom/ooyala/adtech/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/k;-><init>(Ljava/net/URL;Lcom/ooyala/adtech/TrackingError$a;Lcom/ooyala/adtech/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method
