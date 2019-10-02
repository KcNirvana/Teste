.class final Lcom/ooyala/adtech/VASTParser$VASTHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VASTHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/VASTParser$VASTHandler$b;,
        Lcom/ooyala/adtech/VASTParser$VASTHandler$a;,
        Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field a:Lcom/ooyala/pulse/LogListener;

.field b:Z

.field c:Lcom/ooyala/adtech/Ad;

.field private d:I

.field private e:Ljava/lang/StringBuilder;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/ooyala/adtech/AdSystem;

.field private o:Lcom/ooyala/adtech/AdVerification;

.field private p:Lcom/ooyala/adtech/AdSurvey;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Lcom/ooyala/adtech/LinearCreative;

.field private v:Lcom/ooyala/adtech/AdCategory;

.field private w:Lcom/ooyala/adtech/UniversalAdId;

.field private x:Lcom/ooyala/adtech/AdPricing;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Creative;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/MediaFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$1;

    invoke-direct {v0, p0}, Lcom/ooyala/adtech/VASTParser$VASTHandler$1;-><init>(Lcom/ooyala/adtech/VASTParser$VASTHandler;)V

    iput-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a:Lcom/ooyala/pulse/LogListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    iput-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->k:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->y:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->z:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->E:Ljava/util/LinkedList;

    iput-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->b:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-direct {v0, v1, p1}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Z)Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    if-eqz p2, :cond_3

    iget p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->g:I

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    sget v3, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->c:I

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_3

    const-string p2, "(\\[CACHEBUSTING\\])|(%5BCACHEBUSTING%5D)"

    invoke-virtual {v0, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "?"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "&"

    goto :goto_0

    :cond_2
    const-string p2, "?"

    :goto_0
    const-string v3, "%s%s%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object p2, v4, v1

    const/4 p2, 0x2

    const-string v0, "rnd=%5BCACHEBUSTING%5D"

    aput-object v0, v4, p2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    new-instance p2, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-direct {p2, v0, p1}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->h:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->i:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object v0, v0, Lcom/ooyala/adtech/Ad;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object v0, v0, Lcom/ooyala/adtech/Ad;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v2, "Invalid VAST. Ads with multiple linear creatives are not supported."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->D:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object v0, v0, Lcom/ooyala/adtech/Ad;->w:Ljava/net/URL;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->hasEvent(Lcom/ooyala/adtech/TrackingEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ooyala/adtech/Ad;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    iput-object v1, v0, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;)Lcom/ooyala/adtech/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ooyala/adtech/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v2}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v2

    sget-object v3, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->b(Lcom/ooyala/adtech/TrackingEvent;)V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object v0, v0, Lcom/ooyala/adtech/Ad;->w:Ljava/net/URL;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v2, "Wrapper with no third party URL is invalid."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object v0, v0, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    if-eq v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->m:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v3, "Ad has no AdTitle tag"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v1, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    new-instance v2, Lcom/ooyala/adtech/LogItem;

    sget-object v3, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v4, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v2, v3, v4, v0}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_6
    iget-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->l:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v3, "Ad has no AdSystem tag."

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v1, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    new-instance v2, Lcom/ooyala/adtech/LogItem;

    sget-object v3, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v4, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v2, v3, v4, v0}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_7
    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->hasEvent(Lcom/ooyala/adtech/TrackingEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getCreatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/adtech/Creative;

    check-cast v1, Lcom/ooyala/adtech/LinearCreative;

    invoke-virtual {v1}, Lcom/ooyala/adtech/LinearCreative;->getDuration()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/ooyala/adtech/LinearCreative;->getMediaFiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget v2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->g:I

    sget v3, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->d:I

    if-ne v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez v2, :cond_8

    iget-object v1, v1, Lcom/ooyala/adtech/LinearCreative;->j:Lcom/ooyala/adtech/UniversalAdId;

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v2, "Creative has no UniversalAdId tag."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v2, "Creative has no media files."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v2, "Creative has no duration."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c
    return-void

    :cond_d
    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v2, "Ad has no impression tracking."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v2, "Ad has no creatives."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_f
    return-void

    :cond_10
    new-instance v0, Lcom/ooyala/adtech/Ad;

    invoke-direct {v0}, Lcom/ooyala/adtech/Ad;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    iput-object v1, v0, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    return-void

    :cond_11
    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_RESPONSE:I

    const-string v2, "VAST root missing."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_RESPONSE:I

    const-string v2, "Empty ticket."

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final endDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->E:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a()V

    return-void

    :cond_0
    new-instance v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_MALFORMED_XML:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received malformed xml ticket. The "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->E:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " element was not closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->E:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-ne p2, p1, :cond_2b

    iget p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    const/4 p2, 0x1

    if-lez p1, :cond_0

    iget p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    return-void

    :cond_0
    sget-object p1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    iget p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    sub-int/2addr p3, p2

    aget p1, p1, p3

    const/4 p3, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->o:Lcom/ooyala/adtech/AdVerification;

    const-string p2, "AdVerification javaScriptResources tag has malformed URL."

    invoke-direct {p0, p2, v0}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdVerification;->setJavaScriptResource(Ljava/net/URL;)V

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->o:Lcom/ooyala/adtech/AdVerification;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdVerification;->setJavaScriptApiFramework(Ljava/lang/String;)V

    :cond_1
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->q:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_1
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->o:Lcom/ooyala/adtech/AdVerification;

    const-string p2, "AdVerification flashResources tag has malformed URL."

    invoke-direct {p0, p2, v0}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdVerification;->setFlashResource(Ljava/net/URL;)V

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->o:Lcom/ooyala/adtech/AdVerification;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdVerification;->setFlashApiFramework(Ljava/lang/String;)V

    :cond_2
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->q:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_2
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->J:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    if-eqz p1, :cond_2a

    new-instance p1, Lcom/ooyala/adtech/Error;

    sget-object p2, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget p3, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v0, "MediaFiles on wrapper is not allowed."

    invoke-direct {p1, p2, p3, v0}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sget-object p2, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    new-instance p3, Lcom/ooyala/adtech/LogItem;

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p3, v0, v1, p1}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p2, p3}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string p3, "width"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_a

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string v1, "height"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_9

    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string v2, "bitrate"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "0"

    :cond_4
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string v3, "type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string v4, "delivery"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v4, "progressive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    sget-object p2, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;->PROGRESSIVE:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    goto :goto_0

    :cond_5
    const-string v4, "streaming"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    sget-object p2, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;->STREAMING:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    :goto_0
    iget-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string v3, "apiFramework"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/ooyala/adtech/MediaFile;

    invoke-direct {v3}, Lcom/ooyala/adtech/MediaFile;-><init>()V

    const-string v4, "Media file has malformed URI."

    invoke-direct {p0, v4}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ooyala/adtech/MediaFile;->setUri(Ljava/net/URI;)V

    invoke-virtual {v3, p1}, Lcom/ooyala/adtech/MediaFile;->setWidth(I)V

    invoke-virtual {v3, p3}, Lcom/ooyala/adtech/MediaFile;->setHeight(I)V

    invoke-virtual {v3, v1}, Lcom/ooyala/adtech/MediaFile;->setBitRate(I)V

    invoke-virtual {v3, v2}, Lcom/ooyala/adtech/MediaFile;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/ooyala/adtech/MediaFile;->setDeliveryMethod(Lcom/ooyala/pulse/MediaFile$DeliveryMethod;)V

    invoke-virtual {v3, v0}, Lcom/ooyala/adtech/MediaFile;->setApiFramework(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->z:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p3, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_ATTRIBUTE_VALUE:I

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v3, p2, v0

    const-string v0, "Media file has unrecognized delivery method \"%s\"."

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_ATTRIBUTE_VALUE:I

    const-string p3, "Media file is missing delivery method."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_ATTRIBUTE_VALUE:I

    const-string p3, "Media file is missing MIME-type."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_ATTRIBUTE_VALUE:I

    const-string p3, "Media file has illegal bitrate."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_ATTRIBUTE_VALUE:I

    const-string p3, "Media file has illegal height."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_ATTRIBUTE_VALUE:I

    const-string p3, "Media file is missing height."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_2
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_ATTRIBUTE_VALUE:I

    const-string p3, "Media file has illegal width."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_ATTRIBUTE_VALUE:I

    const-string p3, "Media file is missing width."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :pswitch_3
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    iget-object p1, p1, Lcom/ooyala/adtech/LinearCreative;->k:Lcom/ooyala/adtech/TrackingEvents;

    sget-object p3, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_CLICK_THROUGH:Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "Creative clickthrough tracking has malformed URL."

    invoke-direct {p0, v1, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p1, p3, p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->G:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_4
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    if-nez p1, :cond_b

    new-instance p1, Lcom/ooyala/adtech/LinearCreative;

    invoke-direct {p1}, Lcom/ooyala/adtech/LinearCreative;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    :cond_b
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/ooyala/adtech/LinearCreative;->l:Ljava/lang/String;

    :cond_c
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->u:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_5
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->k:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    invoke-static {p1}, Lcom/ooyala/adtech/e;->b(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingEvent;

    move-result-object p1

    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p3, p3, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    const-string v1, "viewableUndetermined tag has malformed URL."

    invoke-direct {p0, v1, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p3, p1, p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    goto :goto_1

    :cond_d
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->k:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    invoke-static {p1}, Lcom/ooyala/adtech/e;->b(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingEvent;

    move-result-object p1

    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->o:Lcom/ooyala/adtech/AdVerification;

    invoke-virtual {p3}, Lcom/ooyala/adtech/AdVerification;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p3

    const-string v1, "viewableUndetermined tag under AdVerification has malformed URL."

    invoke-direct {p0, v1, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p3, p1, p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    :cond_e
    :goto_1
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->l:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_6
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->k:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    invoke-static {p1}, Lcom/ooyala/adtech/e;->b(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingEvent;

    move-result-object p1

    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p3, p3, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    const-string v1, "NotViewable tag has malformed URL."

    invoke-direct {p0, v1, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p3, p1, v1, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    :cond_f
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->k:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    invoke-static {p1}, Lcom/ooyala/adtech/e;->b(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingEvent;

    move-result-object p1

    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->o:Lcom/ooyala/adtech/AdVerification;

    invoke-virtual {p3}, Lcom/ooyala/adtech/AdVerification;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p3

    const-string v1, "NotViewable tag under AdVerification has malformed URL."

    invoke-direct {p0, v1, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p3, p1, p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    :cond_10
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->l:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_7
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->k:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    invoke-static {p1}, Lcom/ooyala/adtech/e;->b(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingEvent;

    move-result-object p1

    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p3, p3, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    const-string v1, "Viewable tag has malformed URL."

    invoke-direct {p0, v1, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p3, p1, p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    goto :goto_2

    :cond_11
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->k:Z

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    invoke-static {p1}, Lcom/ooyala/adtech/e;->b(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingEvent;

    move-result-object p1

    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->o:Lcom/ooyala/adtech/AdVerification;

    invoke-virtual {p3}, Lcom/ooyala/adtech/AdVerification;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p3

    const-string v1, "Viewable tag under AdVerification has malformed URL."

    invoke-direct {p0, v1, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p3, p1, p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    :cond_12
    :goto_2
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->l:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    const-string p2, "Creative has malformed clickthrough URL."

    invoke-direct {p0, p2, v0}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    iput-object p2, p1, Lcom/ooyala/adtech/LinearCreative;->c:Ljava/net/URL;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->G:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    invoke-static {p1}, Lcom/ooyala/adtech/e;->b(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingEvent;

    move-result-object p1

    sget-object p3, Lcom/ooyala/adtech/TrackingEvent;->d:Lcom/ooyala/adtech/TrackingEvent;

    if-ne p1, p3, :cond_13

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    iget-object p1, p1, Lcom/ooyala/adtech/LinearCreative;->k:Lcom/ooyala/adtech/TrackingEvents;

    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string v1, "Tracking event has malformed URL."

    invoke-direct {p0, v1, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p1, p3, p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Ljava/lang/String;Ljava/net/URL;Z)V

    goto :goto_4

    :cond_13
    sget-object p3, Lcom/ooyala/adtech/TrackingEvent;->f:Lcom/ooyala/adtech/TrackingEvent;

    if-ne p1, p3, :cond_15

    sget p1, Lcom/ooyala/adtech/f$a;->b:I

    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->B:Ljava/lang/String;

    const-string v1, "%"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14

    sget p1, Lcom/ooyala/adtech/f$a;->a:I

    :try_start_3
    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->B:Ljava/lang/String;

    const-string v1, "%"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_ATTRIBUTE_VALUE:I

    const-string p3, "Progess event offset invalid."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_14
    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->B:Ljava/lang/String;

    invoke-static {p3}, Lcom/ooyala/adtech/e;->a(Ljava/lang/String;)F

    move-result p3

    :goto_3
    iget-object v1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    iget-object v1, v1, Lcom/ooyala/adtech/LinearCreative;->k:Lcom/ooyala/adtech/TrackingEvents;

    const-string v2, "Progress tracking event has malformed URL."

    invoke-direct {p0, v2, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    new-instance v2, Lcom/ooyala/adtech/f;

    invoke-direct {v2, p3, p1}, Lcom/ooyala/adtech/f;-><init>(FI)V

    invoke-virtual {v1, v2, p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/j;Ljava/net/URL;Z)V

    goto :goto_4

    :cond_15
    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    iget-object p3, p3, Lcom/ooyala/adtech/LinearCreative;->k:Lcom/ooyala/adtech/TrackingEvents;

    const-string v1, "Tracking event has malformed URL."

    invoke-direct {p0, v1, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p3, p1, p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    :goto_4
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->E:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->x:Lcom/ooyala/adtech/AdPricing;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdPricing;->setPricing(Ljava/lang/Float;)V

    :cond_16
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->x:Lcom/ooyala/adtech/AdPricing;

    invoke-virtual {p1}, Lcom/ooyala/adtech/AdPricing;->getModel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->x:Lcom/ooyala/adtech/AdPricing;

    invoke-virtual {p1}, Lcom/ooyala/adtech/AdPricing;->getCurrency()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->x:Lcom/ooyala/adtech/AdPricing;

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->D:Lcom/ooyala/adtech/AdPricing;

    goto :goto_5

    :cond_17
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iput-object p3, p1, Lcom/ooyala/adtech/Ad;->D:Lcom/ooyala/adtech/AdPricing;

    sget-object p1, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    if-eqz p1, :cond_18

    new-instance p1, Lcom/ooyala/adtech/Error;

    sget-object p2, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget p3, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v0, "Ad has invalid pricing value"

    invoke-direct {p1, p2, p3, v0}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sget-object p2, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    new-instance p3, Lcom/ooyala/adtech/LogItem;

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p3, v0, v1, p1}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p2, p3}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_18
    :goto_5
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_b
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->C:Ljava/lang/String;

    :cond_19
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_c
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->B:Ljava/lang/String;

    :cond_1a
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_d
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->v:Lcom/ooyala/adtech/AdCategory;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdCategory;->setCategory(Ljava/lang/String;)V

    :cond_1b
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->v:Lcom/ooyala/adtech/AdCategory;

    invoke-virtual {p1}, Lcom/ooyala/adtech/AdCategory;->getCategory()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->v:Lcom/ooyala/adtech/AdCategory;

    invoke-virtual {p1}, Lcom/ooyala/adtech/AdCategory;->getAuthority()Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_1c

    sget-object p1, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    if-eqz p1, :cond_1d

    new-instance p1, Lcom/ooyala/adtech/Error;

    sget-object p2, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "Ad has category tag but the authority is either missing or invalid."

    invoke-direct {p1, p2, v0, v1}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sget-object p2, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    new-instance v0, Lcom/ooyala/adtech/LogItem;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v2, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v0, v1, v2, p1}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p2, v0}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    goto :goto_6

    :cond_1c
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->v:Lcom/ooyala/adtech/AdCategory;

    invoke-virtual {p1}, Lcom/ooyala/adtech/AdCategory;->getCategory()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p1, p1, Lcom/ooyala/adtech/Ad;->A:Ljava/util/List;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->v:Lcom/ooyala/adtech/AdCategory;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_6
    iput-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->v:Lcom/ooyala/adtech/AdCategory;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_e
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-eqz p1, :cond_1e

    sget-object p1, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    if-eqz p1, :cond_1e

    new-instance p1, Lcom/ooyala/adtech/Error;

    sget-object p2, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget p3, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v0, "Duration on wrapper is not allowed."

    invoke-direct {p1, p2, p3, v0}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sget-object p2, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    new-instance p3, Lcom/ooyala/adtech/LogItem;

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p3, v0, v1, p1}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p2, p3}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_1e
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ooyala/adtech/e;->a(Ljava/lang/String;)F

    move-result p2

    iput p2, p1, Lcom/ooyala/adtech/LinearCreative;->a:F

    :cond_1f
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->C:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_f
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->p:Lcom/ooyala/adtech/AdSurvey;

    const-string p2, "Survey tag has malformed URL."

    invoke-direct {p0, p2, v0}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdSurvey;->setSurvey(Ljava/net/URL;)V

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getSurveys()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->p:Lcom/ooyala/adtech/AdSurvey;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->p:Lcom/ooyala/adtech/AdSurvey;

    :cond_20
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_10
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->w:Lcom/ooyala/adtech/UniversalAdId;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/UniversalAdId;->setIdentifier(Ljava/lang/String;)V

    :cond_21
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->B:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_11
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p1, p1, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    sget-object p3, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "Ad Impression tag has malformed URL."

    invoke-direct {p0, v1, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p1, p3, p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_12
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p1, p1, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    sget-object p3, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "Ad Error tag has malformed URL."

    invoke-direct {p0, v1, p2}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p1, p3, p2, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_13
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_22

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->b:Ljava/lang/String;

    :cond_22
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_14
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "videoplaza karbon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_23

    iput-boolean p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->D:Z

    :cond_23
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->n:Lcom/ooyala/adtech/AdSystem;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdSystem;->setName(Ljava/lang/String;)V

    :cond_24
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->n:Lcom/ooyala/adtech/AdSystem;

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->z:Lcom/ooyala/adtech/AdSystem;

    iput-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->n:Lcom/ooyala/adtech/AdSystem;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_15
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    const-string p2, "VAST Error tag has invalid URL."

    invoke-direct {p0, p2, v0}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p2

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->w:Ljava/net/URL;

    :cond_25
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_16
    new-instance p1, Lcom/ooyala/adtech/Ad;

    invoke-direct {p1}, Lcom/ooyala/adtech/Ad;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    sget-object p2, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p1, p1, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    sget-object p2, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    const-string p3, "VAST Error tag has invalid URL."

    invoke-direct {p0, p3, v0}, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->b:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_17
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-eqz p1, :cond_26

    sget-object p1, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    if-eqz p1, :cond_26

    new-instance p1, Lcom/ooyala/adtech/Error;

    sget-object p2, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget p3, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v0, "MediaFiles on wrapper is not allowed."

    invoke-direct {p1, p2, p3, v0}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sget-object p2, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    new-instance p3, Lcom/ooyala/adtech/LogItem;

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v1, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p3, v0, v1, p1}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p2, p3}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_26
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->C:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_18
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->C:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_19
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->C:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    goto :goto_7

    :pswitch_1a
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->y:Ljava/util/List;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->z:Ljava/util/List;

    iput-object p2, p1, Lcom/ooyala/adtech/LinearCreative;->b:Ljava/util/List;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->B:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_1b
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->B:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_1c
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->w:Lcom/ooyala/adtech/UniversalAdId;

    if-eqz p1, :cond_27

    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->w:Lcom/ooyala/adtech/UniversalAdId;

    iput-object p2, p1, Lcom/ooyala/adtech/LinearCreative;->j:Lcom/ooyala/adtech/UniversalAdId;

    :cond_27
    iput-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->A:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_1d
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_1e
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p1, p1, Lcom/ooyala/adtech/Ad;->E:Ljava/util/List;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->o:Lcom/ooyala/adtech/AdVerification;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->p:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_1f
    iput-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->k:Z

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_20
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->k:Z

    if-eqz p1, :cond_29

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->q:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_29
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_21
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->d:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_22
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->y:Ljava/util/List;

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->g:Ljava/util/List;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->b:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_23
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->a:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_24
    return-void

    :cond_2a
    :goto_7
    return-void

    :cond_2b
    new-instance p3, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_MALFORMED_XML:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received malformed xml ticket. The "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " element is getting closed instead of "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    iget-object v1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->a:Lcom/ooyala/pulse/LogListener;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogListener;)V

    sget v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->a:I

    iput v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->g:I

    sget v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->a:I

    iput v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    iput-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->h:Z

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->h:Z

    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->E:Ljava/util/LinkedList;

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    iget p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    const/4 v0, 0x1

    if-lez p3, :cond_0

    iget p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    return-void

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->e:Ljava/lang/StringBuilder;

    sget-object p3, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    iget v1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    sub-int/2addr v1, v0

    aget p3, p3, v1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const-string p1, "MediaFile"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string p2, "width"

    const-string p3, "width"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string p2, "height"

    const-string p3, "height"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string p2, "bitrate"

    const-string p3, "bitrate"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string p2, "type"

    const-string p3, "type"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string p2, "delivery"

    const-string p3, "delivery"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->C:Ljava/util/Map;

    const-string p2, "apiFramework"

    const-string p3, "apiFramework"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->K:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_1
    const-string p1, "ClickThrough"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->H:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_1
    const-string p1, "ClickTracking"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->I:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_2
    const-string p1, "Tracking"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string p1, "event"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    const-string p2, "progress"

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "offset"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->B:Ljava/lang/String;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->B:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_ATTRIBUTE_VALUE:I

    const-string p3, "Progress event has no offset."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->F:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_3
    const-string p1, "CreativeExtension"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->v:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_4
    :pswitch_4
    const-string p1, "Duration"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->D:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_5
    const-string p1, "TrackingEvents"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->E:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_6
    const-string p1, "VideoClicks"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->G:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_7
    const-string p1, "MediaFiles"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->J:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_5
    const-string p1, "Linear"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    if-nez p1, :cond_8

    new-instance p1, Lcom/ooyala/adtech/LinearCreative;

    invoke-direct {p1}, Lcom/ooyala/adtech/LinearCreative;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    :cond_8
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->q:Ljava/lang/String;

    iput-object p2, p1, Lcom/ooyala/adtech/LinearCreative;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->u:Lcom/ooyala/adtech/LinearCreative;

    iget p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->t:I

    iput p2, p1, Lcom/ooyala/adtech/LinearCreative;->g:I

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->C:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_9
    const-string p1, "NonLinearAds"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "CompanionAds"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->g:I

    sget p2, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->c:I

    if-eq p1, p2, :cond_b

    iget p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->g:I

    sget p2, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->d:I

    if-ne p1, p2, :cond_a

    goto :goto_1

    :cond_a
    iget p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    return-void

    :cond_b
    :goto_1
    const-string p1, "required"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string p2, "all"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "any"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_2

    :cond_c
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string p3, "Third party companion banners not supported, but ticket requires them to be displayed."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_d
    :goto_2
    iget p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    return-void

    :cond_e
    const-string p1, "UniversalAdId"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-nez p1, :cond_f

    new-instance p1, Lcom/ooyala/adtech/UniversalAdId;

    invoke-direct {p1}, Lcom/ooyala/adtech/UniversalAdId;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->w:Lcom/ooyala/adtech/UniversalAdId;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->w:Lcom/ooyala/adtech/UniversalAdId;

    const-string p2, "idRegistry"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/UniversalAdId;->setRegistry(Ljava/lang/String;)V

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->t:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_f
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string p3, "Creative inside Wrapper tag should not include UniversalAdId tag."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_10
    const-string p1, "CreativeExtensions"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->u:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_11
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string p3, "Third party nonlinear creatives are not supported."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :pswitch_6
    const-string p3, "Creative"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    const-string p2, "id"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->q:Ljava/lang/String;

    iget-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->q:Ljava/lang/String;

    if-nez p2, :cond_12

    const-string p2, ""

    iput-object p2, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->q:Ljava/lang/String;

    :cond_12
    const-string p2, "sequence"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->t:I

    if-eqz p2, :cond_13

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->t:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_13
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->B:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_7
    const-string p1, "ViewableImpression"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->l:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_14
    const-string p1, "FlashResource"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "apiFramework"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->r:Ljava/lang/String;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->r:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_15
    const-string p1, "JavaScriptResource"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string p1, "apiFramework"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->s:Ljava/lang/String;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->s:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_8
    const-string p1, "Verification"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    new-instance p1, Lcom/ooyala/adtech/AdVerification;

    invoke-direct {p1}, Lcom/ooyala/adtech/AdVerification;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->o:Lcom/ooyala/adtech/AdVerification;

    const-string p1, "vendor"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    :try_start_1
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->o:Lcom/ooyala/adtech/AdVerification;

    new-instance p2, Ljava/net/URL;

    const-string p3, "vendor"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdVerification;->setVendor(Ljava/net/URL;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    sget-object p1, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    if-eqz p1, :cond_16

    new-instance p1, Lcom/ooyala/adtech/Error;

    sget-object p2, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget p3, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string p4, "Ad verification tag has an invalid URL for its vendor property."

    invoke-direct {p1, p2, p3, p4}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sget-object p2, Lcom/ooyala/adtech/VASTParser;->a:Lcom/ooyala/adtech/d;

    new-instance p3, Lcom/ooyala/adtech/LogItem;

    sget-object p4, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v0, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p3, p4, v0, p1}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p2, p3}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_16
    :goto_3
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->q:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_9
    const-string p1, "Viewable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "Viewable"

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->m:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_17
    const-string p1, "NotViewable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "NotViewable"

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->n:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_18
    const-string p1, "ViewUndetermined"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string p1, "ViewUndetermined"

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->A:Ljava/lang/String;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->o:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_a
    const-string p1, "AdTitle"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iput-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->m:Z

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->g:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_19
    const-string p1, "AdSystem"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iput-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->l:Z

    new-instance p1, Lcom/ooyala/adtech/AdSystem;

    invoke-direct {p1}, Lcom/ooyala/adtech/AdSystem;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->n:Lcom/ooyala/adtech/AdSystem;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->n:Lcom/ooyala/adtech/AdSystem;

    const-string p2, "version"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdSystem;->setVersion(Ljava/lang/String;)V

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->f:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_1a
    const-string p1, "Error"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->x:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_1b
    const-string p1, "Impression"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->y:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_1c
    const-string p1, "Survey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    new-instance p1, Lcom/ooyala/adtech/AdSurvey;

    invoke-direct {p1}, Lcom/ooyala/adtech/AdSurvey;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->p:Lcom/ooyala/adtech/AdSurvey;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->p:Lcom/ooyala/adtech/AdSurvey;

    const-string p2, "type"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdSurvey;->setType(Ljava/lang/String;)V

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->z:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_1d
    iget-boolean p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    if-eqz p1, :cond_1e

    const-string p1, "VASTAdTagURI"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->w:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_1e
    const-string p1, "Category"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    new-instance p1, Lcom/ooyala/adtech/AdCategory;

    invoke-direct {p1}, Lcom/ooyala/adtech/AdCategory;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->v:Lcom/ooyala/adtech/AdCategory;

    :try_start_2
    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->v:Lcom/ooyala/adtech/AdCategory;

    new-instance p2, Ljava/net/URL;

    const-string p3, "authority"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdCategory;->setAuthority(Ljava/net/URL;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->h:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_1f
    const-string p1, "Description"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->i:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_20
    const-string p1, "Advertiser"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->j:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_21
    const-string p1, "Pricing"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    new-instance p1, Lcom/ooyala/adtech/AdPricing;

    invoke-direct {p1}, Lcom/ooyala/adtech/AdPricing;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->x:Lcom/ooyala/adtech/AdPricing;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->x:Lcom/ooyala/adtech/AdPricing;

    const-string p2, "model"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdPricing;->setModel(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->x:Lcom/ooyala/adtech/AdPricing;

    const-string p2, "currency"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/AdPricing;->setCurrency(Ljava/lang/String;)V

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->k:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_22
    const-string p1, "AdVerifications"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    iput-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->k:Z

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->p:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_23
    const-string p1, "ViewableImpression"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->l:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_24
    const-string p1, "Creatives"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->y:Ljava/util/List;

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->A:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_b
    const-string p1, "InLine"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_25
    const-string p1, "Wrapper"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    iput-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->j:Z

    return-void

    :pswitch_c
    const-string p1, "Ad"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    if-nez p1, :cond_29

    const-string p1, "id"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ooyala/adtech/Ad$Type;->STANDARD_SPOT:Lcom/ooyala/adtech/Ad$Type;

    if-nez p1, :cond_26

    const-string p1, ""

    sget-object p2, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    :cond_26
    new-instance p3, Lcom/ooyala/adtech/Ad;

    invoke-direct {p3}, Lcom/ooyala/adtech/Ad;-><init>()V

    iput-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iget-object p3, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iput-object p1, p3, Lcom/ooyala/adtech/Ad;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    iput-object p2, p1, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    iget p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->g:I

    sget p2, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->d:I

    if-ne p1, p2, :cond_27

    const-string p1, "conditionalAd"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    const-string p2, "conditionalAd"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/ooyala/adtech/Ad;->f:Z

    :cond_27
    const-string p1, "sequence"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->c:Lcom/ooyala/adtech/Ad;

    const-string p2, "sequence"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/ooyala/adtech/Ad;->e:I

    :cond_28
    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->d:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_29
    new-instance p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string p3, "Only one ad per ticket is allowed."

    invoke-direct {p1, p2, p3}, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2a
    const-string p1, "Error"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->c:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :pswitch_d
    const-string p1, "VAST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string p1, "version"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2d

    const-string p2, "4.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->d:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->g:I

    goto :goto_4

    :cond_2b
    const-string p2, "3.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->c:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->g:I

    goto :goto_4

    :cond_2c
    const-string p2, "2.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->b:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->g:I

    :cond_2d
    :goto_4
    iput-boolean v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->i:Z

    sget p1, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->b:I

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->d:I

    return-void

    :cond_2e
    :goto_5
    iget p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler;->f:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
