.class public Lcom/ooyala/adtech/AdRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/AdRequester$InsertionPointListener;,
        Lcom/ooyala/adtech/AdRequester$AdListener;,
        Lcom/ooyala/adtech/AdRequester$SessionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Lcom/ooyala/adtech/Session;

.field b:Ljava/net/URL;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/ooyala/adtech/d;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/ooyala/adtech/AdRequester;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/adtech/AdRequester;->a:Lcom/ooyala/adtech/Session;

    new-instance v0, Lcom/ooyala/adtech/d;

    invoke-direct {v0}, Lcom/ooyala/adtech/d;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    iput-object p1, p0, Lcom/ooyala/adtech/AdRequester;->b:Ljava/net/URL;

    iput-object p2, p0, Lcom/ooyala/adtech/AdRequester;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/ooyala/adtech/AdRequester;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/ooyala/adtech/AdRequester;->b:Ljava/net/URL;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ooyala/adtech/AdRequester;->b:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ooyala/adtech/AdRequester;->b:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ooyala/adtech/AdRequester;->b:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Host may not specify a hash part."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Host may not specify a query string."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Host may not specify a path."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter host may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ILjava/lang/String;)Lcom/ooyala/adtech/Error;
    .locals 3

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    new-instance p2, Lcom/ooyala/adtech/LogItem;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v2, Lcom/ooyala/pulse/LogItem$Event;->ILLEGAL_OPERATION:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p2, v1, v2, v0}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    return-object v0
.end method

.method private a(Lcom/ooyala/adtech/Trackable;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/AdRequester$AdListener;)Lcom/ooyala/adtech/Request;
    .locals 4

    iget-boolean v0, p2, Lcom/ooyala/adtech/Ad;->y:Z

    if-nez v0, :cond_7

    invoke-virtual {p3, p1}, Lcom/ooyala/adtech/TrackingError;->a(Lcom/ooyala/adtech/Trackable;)Lcom/ooyala/adtech/TrackingError$a;

    move-result-object p3

    sget-object v0, Lcom/ooyala/adtech/TrackingError$a;->a:Lcom/ooyala/adtech/TrackingError$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_0

    new-instance p2, Lcom/ooyala/adtech/Error;

    sget-object p3, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v0, Lcom/ooyala/pulse/Error$Core;->INVALID_TRACKING_ERROR:I

    const-string v3, "Error type not supported for %s."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, v0, p1}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    new-instance p3, Lcom/ooyala/adtech/LogItem;

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Event;->INVALID_ARGUMENT:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p3, v0, v1, p2}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p1, p3}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    invoke-interface {p4, p2}, Lcom/ooyala/adtech/AdRequester$AdListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    new-instance p1, Lcom/ooyala/adtech/Request;

    iget-object p2, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    sget-object p3, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p2, 0x0

    instance-of p3, p1, Lcom/ooyala/adtech/Ad;

    if-eqz p3, :cond_1

    const-string p2, "An Ad object must be ready before failing it in requestPassback."

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/ooyala/adtech/Creative;

    if-eqz p1, :cond_2

    const-string p2, "The parent ad of a Creative object must be ready before failing it in requestPassback."

    :cond_2
    :goto_0
    new-instance p1, Lcom/ooyala/adtech/Error;

    sget-object p3, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v0, Lcom/ooyala/pulse/Error$Core;->REQUESTED_PASSBACK_BEFORE_THIRD_PARTY_READY:I

    invoke-direct {p1, p3, v0, p2}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    new-instance p3, Lcom/ooyala/adtech/LogItem;

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Event;->ILLEGAL_OPERATION:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p3, v0, v1, p1}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p2, p3}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    invoke-interface {p4, p1}, Lcom/ooyala/adtech/AdRequester$AdListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    new-instance p1, Lcom/ooyala/adtech/Request;

    iget-object p2, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    sget-object p3, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    return-object p1

    :cond_3
    invoke-interface {p1}, Lcom/ooyala/adtech/Trackable;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v3, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v3}, Lcom/ooyala/adtech/TrackingEvents;->c(Lcom/ooyala/adtech/TrackingEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p1, Lcom/ooyala/pulse/Error$Core;->REQUESTED_PASSBACK_AFTER_ERROR:I

    const-string p2, "Cannot request passback after reporting error."

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/AdRequester;->a(ILjava/lang/String;)Lcom/ooyala/adtech/Error;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ooyala/adtech/AdRequester$AdListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    new-instance p1, Lcom/ooyala/adtech/Request;

    iget-object p2, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    sget-object p3, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    return-object p1

    :cond_4
    invoke-interface {p1}, Lcom/ooyala/adtech/Trackable;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v3, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v3}, Lcom/ooyala/adtech/TrackingEvents;->c(Lcom/ooyala/adtech/TrackingEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p1, Lcom/ooyala/pulse/Error$Core;->REQUESTED_PASSBACK_AFTER_IMPRESSION:I

    const-string p2, "Cannot request passback after tracking impression."

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/AdRequester;->a(ILjava/lang/String;)Lcom/ooyala/adtech/Error;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ooyala/adtech/AdRequester$AdListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    new-instance p1, Lcom/ooyala/adtech/Request;

    iget-object p2, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    sget-object p3, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    return-object p1

    :cond_5
    invoke-virtual {p2}, Lcom/ooyala/adtech/Ad;->hasPassback()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance p2, Lcom/ooyala/adtech/Error;

    sget-object p3, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v0, Lcom/ooyala/pulse/Error$Core;->REQUESTED_PASSBACK_WHEN_NONE_AVAILABLE:I

    const-string v3, "Requested passback for %s, but none are available."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, v0, p1}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    new-instance p3, Lcom/ooyala/adtech/LogItem;

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Event;->ILLEGAL_OPERATION:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p3, v0, v1, p2}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p1, p3}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    invoke-interface {p4, p2}, Lcom/ooyala/adtech/AdRequester$AdListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    new-instance p1, Lcom/ooyala/adtech/Request;

    iget-object p2, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    sget-object p3, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    return-object p1

    :cond_6
    invoke-virtual {p2}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p1

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {p1, v0}, Lcom/ooyala/adtech/TrackingEvents;->b(Lcom/ooyala/adtech/TrackingEvent;)V

    invoke-virtual {p2}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p1

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {p1, v0}, Lcom/ooyala/adtech/TrackingEvents;->d(Lcom/ooyala/adtech/TrackingEvent;)V

    invoke-virtual {p2}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingError$a;)V

    invoke-virtual {p2}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p1

    iget-object p3, p2, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {p1, p3, v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvents;Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/TrackingEvent;)V

    iget-object p1, p2, Lcom/ooyala/adtech/Ad;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p2, Lcom/ooyala/adtech/Ad;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput-boolean v2, p2, Lcom/ooyala/adtech/Ad;->y:Z

    new-instance p1, Lcom/ooyala/adtech/h;

    new-instance p3, Lcom/ooyala/adtech/AdRequester$4;

    invoke-direct {p3, p0, p2, p4}, Lcom/ooyala/adtech/AdRequester$4;-><init>(Lcom/ooyala/adtech/AdRequester;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/AdRequester$AdListener;)V

    iget-object p4, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    invoke-direct {p1, p2, p3, p4}, Lcom/ooyala/adtech/h;-><init>(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/AdRequester$AdListener;Lcom/ooyala/adtech/d;)V

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The supplied ad, or creative\'s parent ad, is already part of an ongoing request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/RequestSettings$InsertionPointType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x5

    new-array p0, p0, [Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    const/4 v0, 0x0

    sget-object v1, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_BEFORE_CONTENT:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_PAUSE:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    aput-object v1, p0, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_CONTENT_END:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    aput-object v1, p0, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_POSITION:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    aput-object v1, p0, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_TIME:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    aput-object v1, p0, v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v1}, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, ", "

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addLogListener(Lcom/ooyala/adtech/LogListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    invoke-virtual {v0, p1}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogListener;)V

    return-void
.end method

.method public requestPassback(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/AdRequester$AdListener;)Lcom/ooyala/adtech/Request;
    .locals 0

    invoke-direct {p0, p1, p1, p2, p3}, Lcom/ooyala/adtech/AdRequester;->a(Lcom/ooyala/adtech/Trackable;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/AdRequester$AdListener;)Lcom/ooyala/adtech/Request;

    move-result-object p1

    return-object p1
.end method

.method public requestPassback(Lcom/ooyala/adtech/Creative;Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/AdRequester$AdListener;)Lcom/ooyala/adtech/Request;
    .locals 1

    invoke-virtual {p1}, Lcom/ooyala/adtech/Creative;->getParentAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ooyala/adtech/AdRequester;->a(Lcom/ooyala/adtech/Trackable;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/TrackingError;Lcom/ooyala/adtech/AdRequester$AdListener;)Lcom/ooyala/adtech/Request;

    move-result-object p1

    return-object p1
.end method

.method public requestSession(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;Lcom/ooyala/adtech/AdRequester$SessionListener;)Lcom/ooyala/adtech/Request;
    .locals 10
    .param p1    # Lcom/ooyala/adtech/ContentMetadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/ooyala/adtech/RequestSettings;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v9, Lcom/ooyala/adtech/g;

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    invoke-direct {v9, v0}, Lcom/ooyala/adtech/g;-><init>(Lcom/ooyala/adtech/d;)V

    iget-object v0, p0, Lcom/ooyala/adtech/AdRequester;->a:Lcom/ooyala/adtech/Session;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ooyala/adtech/AdRequester;->a:Lcom/ooyala/adtech/Session;

    invoke-virtual {v9, p1, p3}, Lcom/ooyala/adtech/g;->a(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ooyala/adtech/AdRequester;->a:Lcom/ooyala/adtech/Session;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ooyala/adtech/AdRequester;->b:Ljava/net/URL;

    iget-object v2, p0, Lcom/ooyala/adtech/AdRequester;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ooyala/adtech/AdRequester;->d:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/ooyala/adtech/g;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;Ljava/lang/String;Lcom/ooyala/adtech/AdRequester$SessionListener;)V

    :goto_0
    return-object v9
.end method

.method public requestSessionExtension(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;Lcom/ooyala/adtech/AdRequester$SessionListener;)Lcom/ooyala/adtech/Request;
    .locals 14
    .param p2    # Lcom/ooyala/adtech/ContentMetadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ooyala/adtech/RequestSettings;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v3, p4

    iget-boolean v4, v0, Lcom/ooyala/adtech/Session;->g:Z

    if-nez v4, :cond_17

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/ooyala/adtech/RequestSettings;->a()V
    :try_end_0
    .catch Lcom/ooyala/adtech/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    new-instance v4, Lcom/ooyala/adtech/LogItem;

    sget-object v5, Lcom/ooyala/pulse/LogItem$Source;->SESSION:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v6, Lcom/ooyala/pulse/LogItem$Event;->INVALID_ARGUMENT:Lcom/ooyala/pulse/LogItem$Event;

    iget-object v7, v2, Lcom/ooyala/adtech/a;->a:Lcom/ooyala/adtech/Error;

    invoke-direct {v4, v5, v6, v7}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v0, v4}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    iget-object v0, v2, Lcom/ooyala/adtech/a;->a:Lcom/ooyala/adtech/Error;

    invoke-interface {v3, v0}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    new-instance v0, Lcom/ooyala/adtech/Request;

    iget-object v2, v1, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    sget-object v3, Lcom/ooyala/pulse/LogItem$Source;->SESSION:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {v0, v2, v3}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    return-object v0

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    const/4 v4, 0x5

    new-array v4, v4, [Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    sget-object v7, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_BEFORE_CONTENT:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    aput-object v7, v4, v6

    sget-object v7, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_CONTENT_END:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    aput-object v7, v4, v5

    const/4 v7, 0x2

    sget-object v8, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_PAUSE:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    aput-object v8, v4, v7

    const/4 v7, 0x3

    sget-object v8, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_TIME:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    aput-object v8, v4, v7

    const/4 v7, 0x4

    sget-object v8, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_POSITION:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    aput-object v8, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/ooyala/adtech/RequestSettings;->copy()Lcom/ooyala/adtech/RequestSettings;

    move-result-object v2

    :goto_2
    move-object v8, v2

    goto :goto_3

    :cond_4
    new-instance v2, Lcom/ooyala/adtech/RequestSettings;

    invoke-direct {v2}, Lcom/ooyala/adtech/RequestSettings;-><init>()V

    goto :goto_2

    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v0, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ooyala/adtech/InsertionPoint;

    iget-object v10, v10, Lcom/ooyala/adtech/InsertionPoint;->a:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ooyala/adtech/Condition;

    invoke-virtual {v10}, Lcom/ooyala/adtech/Condition;->getType()Lcom/ooyala/adtech/Condition$Type;

    move-result-object v11

    sget-object v12, Lcom/ooyala/adtech/Condition$Type;->PLAYBACK_POSITION:Lcom/ooyala/adtech/Condition$Type;

    if-ne v11, v12, :cond_5

    check-cast v10, Lcom/ooyala/adtech/PropertyCondition;

    invoke-virtual {v10}, Lcom/ooyala/adtech/PropertyCondition;->getValue()F

    move-result v10

    invoke-virtual {v8}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v13, v12, v10

    if-nez v13, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v8}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v13, v12, v10

    if-nez v13, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_a

    new-instance v9, Lcom/ooyala/adtech/Error;

    sget-object v10, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v11, Lcom/ooyala/pulse/Error$Core;->REQUESTED_EXISTING_PLAYBACK_POSITIONS:I

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Some playback positions were excluded from the request as they already exist: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ", "

    invoke-static {v13, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v10, v11, v2}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, v1, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    new-instance v10, Lcom/ooyala/adtech/LogItem;

    sget-object v11, Lcom/ooyala/pulse/LogItem$Source;->SESSION:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v12, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v10, v11, v12, v9}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v2, v10}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_a
    invoke-virtual {v8}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v8}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v8}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v8}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_c

    const/4 v9, 0x1

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    :goto_7
    sget-object v10, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_POSITION:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    if-nez v2, :cond_d

    if-eqz v9, :cond_e

    :cond_d
    sget-object v2, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_POSITION:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    sget-object v2, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_PAUSE:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_PAUSE:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v0, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ooyala/adtech/InsertionPoint;

    invoke-virtual {v10}, Lcom/ooyala/adtech/InsertionPoint;->getConditions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ooyala/adtech/Condition;

    sget-object v11, Lcom/ooyala/adtech/AdRequester$5;->a:[I

    invoke-virtual {v10}, Lcom/ooyala/adtech/Condition;->getType()Lcom/ooyala/adtech/Condition$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ooyala/adtech/Condition$Type;->ordinal()I

    move-result v10

    aget v10, v11, v10

    packed-switch v10, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    sget-object v10, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_TIME:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    sget-object v10, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_TIME:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    sget-object v10, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_TIME:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :pswitch_1
    sget-object v10, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_CONTENT_END:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    sget-object v10, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_CONTENT_END:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    sget-object v10, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_CONTENT_END:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :pswitch_2
    sget-object v10, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_BEFORE_CONTENT:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    sget-object v10, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_BEFORE_CONTENT:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    sget-object v10, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_BEFORE_CONTENT:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    sget-object v6, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_BEFORE_CONTENT:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_BEFORE_CONTENT:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_BEFORE_CONTENT:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    sget-object v6, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_CONTENT_END:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_CONTENT_END:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    sget-object v6, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_CONTENT_END:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    sget-object v6, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_TIME:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_TIME:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    sget-object v4, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_TIME:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    new-instance v4, Lcom/ooyala/adtech/Error;

    sget-object v6, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v9, Lcom/ooyala/pulse/Error$Core;->REQUESTED_EXISTING_INSERTION_POINT_TYPES:I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Some insertion point types were excluded from the request as they already exist: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ooyala/adtech/AdRequester;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v6, v9, v2}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, v1, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    new-instance v6, Lcom/ooyala/adtech/LogItem;

    sget-object v9, Lcom/ooyala/pulse/LogItem$Source;->SESSION:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v10, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v6, v9, v10, v4}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v2, v6}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    iput-boolean v5, v0, Lcom/ooyala/adtech/Session;->g:Z

    invoke-virtual {v8, v7}, Lcom/ooyala/adtech/RequestSettings;->setInsertionPointFilter(Ljava/util/List;)V

    new-instance v11, Lcom/ooyala/adtech/g;

    iget-object v2, v1, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    invoke-direct {v11, v2}, Lcom/ooyala/adtech/g;-><init>(Lcom/ooyala/adtech/d;)V

    iget-object v4, v1, Lcom/ooyala/adtech/AdRequester;->b:Ljava/net/URL;

    iget-object v5, v1, Lcom/ooyala/adtech/AdRequester;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/ooyala/adtech/AdRequester;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Session;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/ooyala/adtech/AdRequester$1;

    invoke-direct {v10, p0, p1, v3}, Lcom/ooyala/adtech/AdRequester$1;-><init>(Lcom/ooyala/adtech/AdRequester;Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;)V

    move-object v2, v11

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v10}, Lcom/ooyala/adtech/g;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;Ljava/lang/String;Lcom/ooyala/adtech/AdRequester$SessionListener;)V

    return-object v11

    :cond_16
    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v2, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v4, Lcom/ooyala/pulse/Error$Core;->REQUESTED_EXISTING_INSERTION_POINT_TYPES:I

    const-string v5, "None of the provided insertion point types and/or playback positions can be requested again."

    invoke-direct {v0, v2, v4, v5}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, v1, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    new-instance v4, Lcom/ooyala/adtech/LogItem;

    sget-object v5, Lcom/ooyala/pulse/LogItem$Source;->SESSION:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v6, Lcom/ooyala/pulse/LogItem$Event;->ILLEGAL_OPERATION:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v4, v5, v6, v0}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v2, v4}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    invoke-interface {v3, v0}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    new-instance v0, Lcom/ooyala/adtech/Request;

    iget-object v2, v1, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    sget-object v3, Lcom/ooyala/pulse/LogItem$Source;->SESSION:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {v0, v2, v3}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The supplied session is already part of an ongoing request."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestThirdParty(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/AdRequester$AdListener;)Lcom/ooyala/adtech/Request;
    .locals 2

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Lcom/ooyala/adtech/AdRequester$AdListener;->onSuccess(Lcom/ooyala/adtech/Ad;)V

    new-instance p1, Lcom/ooyala/adtech/Request;

    iget-object p2, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p1, p2, v0}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    return-object p1

    :cond_0
    iget-boolean v0, p1, Lcom/ooyala/adtech/Ad;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ooyala/adtech/Ad;->y:Z

    new-instance v0, Lcom/ooyala/adtech/h;

    new-instance v1, Lcom/ooyala/adtech/AdRequester$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/ooyala/adtech/AdRequester$2;-><init>(Lcom/ooyala/adtech/AdRequester;Lcom/ooyala/adtech/AdRequester$AdListener;Lcom/ooyala/adtech/Ad;)V

    iget-object p2, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    invoke-direct {v0, p1, v1, p2}, Lcom/ooyala/adtech/h;-><init>(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/AdRequester$AdListener;Lcom/ooyala/adtech/d;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The supplied ad is already part of an ongoing request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestThirdParty(Lcom/ooyala/adtech/InsertionPoint;Lcom/ooyala/adtech/AdRequester$InsertionPointListener;)Lcom/ooyala/adtech/Request;
    .locals 5

    invoke-virtual {p1}, Lcom/ooyala/adtech/InsertionPoint;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Lcom/ooyala/adtech/AdRequester$InsertionPointListener;->onSuccess(Lcom/ooyala/adtech/InsertionPoint;)V

    new-instance p1, Lcom/ooyala/adtech/Request;

    iget-object p2, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p1, p2, v0}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    return-object p1

    :cond_0
    iget-boolean v0, p1, Lcom/ooyala/adtech/InsertionPoint;->d:Z

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/ooyala/adtech/InsertionPoint;->getSlots()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/Slot;

    invoke-virtual {v2}, Lcom/ooyala/adtech/Slot;->getAds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ooyala/adtech/Ad;

    invoke-virtual {v3}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, v3, Lcom/ooyala/adtech/Ad;->y:Z

    if-nez v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The supplied insertion point, or one of its ads, is already part of an ongoing request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/Ad;

    iput-boolean v3, v2, Lcom/ooyala/adtech/Ad;->y:Z

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p2, p1}, Lcom/ooyala/adtech/AdRequester$InsertionPointListener;->onSuccess(Lcom/ooyala/adtech/InsertionPoint;)V

    new-instance p1, Lcom/ooyala/adtech/Request;

    iget-object p2, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p1, p2, v0}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    return-object p1

    :cond_6
    iput-boolean v3, p1, Lcom/ooyala/adtech/InsertionPoint;->d:Z

    new-instance v1, Lcom/ooyala/adtech/h;

    new-instance v2, Lcom/ooyala/adtech/AdRequester$3;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/ooyala/adtech/AdRequester$3;-><init>(Lcom/ooyala/adtech/AdRequester;Ljava/util/List;Lcom/ooyala/adtech/InsertionPoint;Lcom/ooyala/adtech/AdRequester$InsertionPointListener;)V

    iget-object p1, p0, Lcom/ooyala/adtech/AdRequester;->e:Lcom/ooyala/adtech/d;

    invoke-direct {v1, v0, v2, p1}, Lcom/ooyala/adtech/h;-><init>(Ljava/util/List;Lcom/ooyala/adtech/h$b;Lcom/ooyala/adtech/d;)V

    return-object v1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The supplied insertion point, or one of its ads, is already part of an ongoing request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
