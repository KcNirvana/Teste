.class final Lcom/ooyala/adtech/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/HTTPRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;FJLcom/ooyala/adtech/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/Ad;

.field final synthetic b:Lcom/ooyala/adtech/h$a;

.field final synthetic c:F

.field final synthetic d:J

.field final synthetic e:Lcom/ooyala/adtech/h;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/h;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/h$a;FJ)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/h$4;->e:Lcom/ooyala/adtech/h;

    iput-object p2, p0, Lcom/ooyala/adtech/h$4;->a:Lcom/ooyala/adtech/Ad;

    iput-object p3, p0, Lcom/ooyala/adtech/h$4;->b:Lcom/ooyala/adtech/h$a;

    iput p4, p0, Lcom/ooyala/adtech/h$4;->c:F

    iput-wide p5, p0, Lcom/ooyala/adtech/h$4;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ooyala/adtech/Error;)V
    .locals 3

    sget-object v0, Lcom/ooyala/adtech/TrackingError$a;->j:Lcom/ooyala/adtech/TrackingError$a;

    iget-object v1, p0, Lcom/ooyala/adtech/h$4;->e:Lcom/ooyala/adtech/h;

    iget-boolean v1, v1, Lcom/ooyala/adtech/h;->cancelled:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/ooyala/adtech/TrackingError$a;->z:Lcom/ooyala/adtech/TrackingError$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ooyala/adtech/Error;->getCode()I

    move-result v1

    sget v2, Lcom/ooyala/pulse/Error$Request;->TIMED_OUT:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/ooyala/adtech/Error;->getDomain()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ooyala/pulse/Error$Domain;->REQUEST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ooyala/adtech/TrackingError$a;->k:Lcom/ooyala/adtech/TrackingError$a;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ooyala/adtech/h$4;->a:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v1}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingError$a;)V

    iget-object v1, p0, Lcom/ooyala/adtech/h$4;->b:Lcom/ooyala/adtech/h$a;

    iget-object v2, p0, Lcom/ooyala/adtech/h$4;->a:Lcom/ooyala/adtech/Ad;

    invoke-interface {v1, v2, p1, v0}, Lcom/ooyala/adtech/h$a;->a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Error;Lcom/ooyala/adtech/TrackingError$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/ooyala/adtech/VASTParser;

    invoke-direct {v1}, Lcom/ooyala/adtech/VASTParser;-><init>()V

    sget-boolean v1, Lcom/ooyala/adtech/h;->g:Z

    invoke-static {p1, v1}, Lcom/ooyala/adtech/VASTParser;->a(Ljava/lang/String;Z)Lcom/ooyala/adtech/Ad;

    move-result-object v3
    :try_end_0
    .catch Lcom/ooyala/adtech/a; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, v3, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    if-ne p1, v1, :cond_0

    invoke-virtual {v3}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p1

    iget-object v1, p0, Lcom/ooyala/adtech/h$4;->a:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v1}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvents;)V

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->m:Lcom/ooyala/adtech/TrackingError$a;

    invoke-virtual {p1, v1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingError$a;)V

    sget-object p1, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingError$PulseError;->NO_VAST_RESPONSE_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    iget-object v2, p0, Lcom/ooyala/adtech/h$4;->a:Lcom/ooyala/adtech/Ad;

    iget-object v4, p0, Lcom/ooyala/adtech/h$4;->a:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v4}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v4

    invoke-virtual {p1, v1, v2, v4}, Lcom/ooyala/adtech/Tracker;->reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V

    new-instance p1, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->NO_AD_RESPONSE:I

    const-string v4, "No ads in VAST response."

    invoke-direct {p1, v1, v2, v4}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/ooyala/adtech/h$4;->e:Lcom/ooyala/adtech/h;

    iget-object v1, v1, Lcom/ooyala/adtech/h;->logger:Lcom/ooyala/adtech/d;

    new-instance v2, Lcom/ooyala/adtech/LogItem;

    sget-object v4, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v5, Lcom/ooyala/pulse/LogItem$Event;->NO_AD_RESPONSE:Lcom/ooyala/pulse/LogItem$Event;

    iget-object v6, p0, Lcom/ooyala/adtech/h$4;->e:Lcom/ooyala/adtech/h;

    iget-object v6, v6, Lcom/ooyala/adtech/h;->b:Ljava/util/List;

    invoke-direct {v2, v4, v5, p1, v6}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    iget-object v1, p0, Lcom/ooyala/adtech/h$4;->b:Lcom/ooyala/adtech/h$a;

    invoke-interface {v1, v3, p1, v0}, Lcom/ooyala/adtech/h$a;->a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Error;Lcom/ooyala/adtech/TrackingError$a;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ooyala/adtech/h$4;->a:Lcom/ooyala/adtech/Ad;

    const/4 v0, 0x0

    invoke-static {p1, v3, v0}, Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Ad;Z)V

    iget-object v2, p0, Lcom/ooyala/adtech/h$4;->e:Lcom/ooyala/adtech/h;

    iget v4, p0, Lcom/ooyala/adtech/h$4;->c:F

    iget-wide v5, p0, Lcom/ooyala/adtech/h$4;->d:J

    iget-object v7, p0, Lcom/ooyala/adtech/h$4;->b:Lcom/ooyala/adtech/h$a;

    invoke-virtual/range {v2 .. v7}, Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;FJLcom/ooyala/adtech/h$a;)V

    return-void

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/ooyala/adtech/h$4;->e:Lcom/ooyala/adtech/h;

    iget-object v1, v1, Lcom/ooyala/adtech/h;->logger:Lcom/ooyala/adtech/d;

    new-instance v2, Lcom/ooyala/adtech/LogItem;

    sget-object v3, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v4, Lcom/ooyala/pulse/LogItem$Event;->INVALID_RESPONSE:Lcom/ooyala/pulse/LogItem$Event;

    iget-object v5, p1, Lcom/ooyala/adtech/a;->a:Lcom/ooyala/adtech/Error;

    iget-object v6, p0, Lcom/ooyala/adtech/h$4;->e:Lcom/ooyala/adtech/h;

    iget-object v6, v6, Lcom/ooyala/adtech/h;->b:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    iget-object v1, p0, Lcom/ooyala/adtech/h$4;->a:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v1}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v1

    sget-object v2, Lcom/ooyala/adtech/TrackingError$a;->b:Lcom/ooyala/adtech/TrackingError$a;

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingError$a;)V

    sget-object v1, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    sget-object v2, Lcom/ooyala/adtech/TrackingError$PulseError;->XML_PARSING_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    iget-object v3, p0, Lcom/ooyala/adtech/h$4;->a:Lcom/ooyala/adtech/Ad;

    iget-object v4, p0, Lcom/ooyala/adtech/h$4;->a:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v4}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ooyala/adtech/Tracker;->reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V

    iget-object v1, p0, Lcom/ooyala/adtech/h$4;->b:Lcom/ooyala/adtech/h$a;

    iget-object v2, p0, Lcom/ooyala/adtech/h$4;->a:Lcom/ooyala/adtech/Ad;

    iget-object p1, p1, Lcom/ooyala/adtech/a;->a:Lcom/ooyala/adtech/Error;

    invoke-interface {v1, v2, p1, v0}, Lcom/ooyala/adtech/h$a;->a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Error;Lcom/ooyala/adtech/TrackingError$a;)V

    return-void
.end method
