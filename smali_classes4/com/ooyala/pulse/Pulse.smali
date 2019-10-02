.class public Lcom/ooyala/pulse/Pulse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/Pulse$a;
    }
.end annotation


# instance fields
.field a:Lcom/ooyala/adtech/AdRequester;

.field b:Lcom/ooyala/adtech/Tracker;

.field c:J

.field d:Lcom/ooyala/pulse/LogListener;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ooyala/adtech/Tracker;

    invoke-direct {v0}, Lcom/ooyala/adtech/Tracker;-><init>()V

    iput-object v0, p0, Lcom/ooyala/pulse/Pulse;->b:Lcom/ooyala/adtech/Tracker;

    iget-object v0, p0, Lcom/ooyala/pulse/Pulse;->b:Lcom/ooyala/adtech/Tracker;

    new-instance v1, Lcom/ooyala/pulse/Pulse$1;

    invoke-direct {v1, p0}, Lcom/ooyala/pulse/Pulse$1;-><init>(Lcom/ooyala/pulse/Pulse;)V

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/Tracker;->addLogListener(Lcom/ooyala/adtech/LogListener;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, -0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ooyala/pulse/Pulse;->c:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ooyala/pulse/Pulse;-><init>()V

    return-void
.end method

.method public static createSession(Lcom/ooyala/pulse/ContentMetadata;Lcom/ooyala/pulse/RequestSettings;)Lcom/ooyala/pulse/PulseSession;
    .locals 3

    invoke-static {}, Lcom/ooyala/pulse/Pulse;->getInstance()Lcom/ooyala/pulse/Pulse;

    move-result-object v0

    iget-object v1, v0, Lcom/ooyala/pulse/Pulse;->a:Lcom/ooyala/adtech/AdRequester;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ooyala/pulse/RequestSettings;->b()Lcom/ooyala/adtech/RequestSettings;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->a()Lcom/ooyala/adtech/ContentMetadata;

    move-result-object v1

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Lcom/ooyala/adtech/RequestSettings;

    invoke-direct {p1}, Lcom/ooyala/adtech/RequestSettings;-><init>()V

    :cond_2
    invoke-virtual {p1}, Lcom/ooyala/adtech/RequestSettings;->setPulseIntegrationLevel()V

    new-instance p0, Lcom/ooyala/pulse/e;

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/e;-><init>(Lcom/ooyala/pulse/Pulse;)V

    new-instance v2, Lcom/ooyala/pulse/j;

    invoke-direct {v2, v0, v1, p1, p0}, Lcom/ooyala/pulse/j;-><init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;Lcom/ooyala/pulse/c;)V

    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Need to set Pulse host before creating a session."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance()Lcom/ooyala/pulse/Pulse;
    .locals 1

    invoke-static {}, Lcom/ooyala/pulse/Pulse$a;->a()Lcom/ooyala/pulse/Pulse;

    move-result-object v0

    return-object v0
.end method

.method public static setLogListener(Lcom/ooyala/pulse/LogListener;)V
    .locals 1

    invoke-static {}, Lcom/ooyala/pulse/Pulse;->getInstance()Lcom/ooyala/pulse/Pulse;

    move-result-object v0

    iput-object p0, v0, Lcom/ooyala/pulse/Pulse;->d:Lcom/ooyala/pulse/LogListener;

    return-void
.end method

.method public static setPulseHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ooyala/pulse/Pulse;->getInstance()Lcom/ooyala/pulse/Pulse;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/ooyala/adtech/AdRequester;

    invoke-direct {p0, v1, p1, p2}, Lcom/ooyala/adtech/AdRequester;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/ooyala/pulse/Pulse;->a:Lcom/ooyala/adtech/AdRequester;

    iget-object p0, v0, Lcom/ooyala/pulse/Pulse;->a:Lcom/ooyala/adtech/AdRequester;

    new-instance p1, Lcom/ooyala/pulse/Pulse$2;

    invoke-direct {p1, v0}, Lcom/ooyala/pulse/Pulse$2;-><init>(Lcom/ooyala/pulse/Pulse;)V

    invoke-virtual {p0, p1}, Lcom/ooyala/adtech/AdRequester;->addLogListener(Lcom/ooyala/adtech/LogListener;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method final a(Ljava/util/Calendar;)V
    .locals 4

    iget-wide v0, p0, Lcom/ooyala/pulse/Pulse;->c:J

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ooyala/pulse/Pulse;->c:J

    :cond_0
    return-void
.end method
