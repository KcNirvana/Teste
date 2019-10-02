.class final Lcom/ooyala/pulse/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/PauseInsertionPoint$Listener;
.implements Lcom/ooyala/pulse/PulseSession;
.implements Lcom/ooyala/pulse/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/j$a;,
        Lcom/ooyala/pulse/j$b;
    }
.end annotation


# instance fields
.field a:Lcom/ooyala/pulse/PulseSessionListener;

.field b:Lcom/ooyala/pulse/PulseSessionExtensionListener;

.field c:Lcom/ooyala/pulse/Pulse;

.field d:Lcom/ooyala/adtech/AdRequester;

.field e:Lcom/ooyala/adtech/Tracker;

.field f:Lcom/ooyala/adtech/Request;

.field g:Lcom/ooyala/pulse/j$b;

.field h:I

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ooyala/pulse/h;",
            ">;"
        }
    .end annotation
.end field

.field j:Lcom/ooyala/adtech/Session;

.field k:Lcom/ooyala/pulse/a;

.field l:Lcom/ooyala/pulse/PauseInsertionPoint;

.field m:Z

.field n:Lcom/ooyala/pulse/h;

.field o:Lcom/ooyala/pulse/h;

.field p:Lcom/ooyala/pulse/h;

.field q:Lcom/ooyala/pulse/f;

.field r:Lcom/ooyala/pulse/c;

.field s:Z

.field t:Lcom/ooyala/adtech/Error;


# direct methods
.method protected constructor <init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;Lcom/ooyala/pulse/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ooyala/pulse/j$b;->a:Lcom/ooyala/pulse/j$b;

    iput-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget v0, Lcom/ooyala/pulse/j$a;->a:I

    iput v0, p0, Lcom/ooyala/pulse/j;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/pulse/j;->m:Z

    iput-boolean v0, p0, Lcom/ooyala/pulse/j;->s:Z

    iput-object p1, p0, Lcom/ooyala/pulse/j;->c:Lcom/ooyala/pulse/Pulse;

    iget-object v0, p1, Lcom/ooyala/pulse/Pulse;->a:Lcom/ooyala/adtech/AdRequester;

    iput-object v0, p0, Lcom/ooyala/pulse/j;->d:Lcom/ooyala/adtech/AdRequester;

    iget-object p1, p1, Lcom/ooyala/pulse/Pulse;->b:Lcom/ooyala/adtech/Tracker;

    iput-object p1, p0, Lcom/ooyala/pulse/j;->e:Lcom/ooyala/adtech/Tracker;

    new-instance p1, Lcom/ooyala/pulse/f;

    invoke-direct {p1}, Lcom/ooyala/pulse/f;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/j;->q:Lcom/ooyala/pulse/f;

    iput-object p4, p0, Lcom/ooyala/pulse/j;->r:Lcom/ooyala/pulse/c;

    new-instance p1, Lcom/ooyala/adtech/Error;

    const-string p4, "SessionCancelled"

    invoke-direct {p1, p4}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ooyala/pulse/j;->t:Lcom/ooyala/adtech/Error;

    sget-object p1, Lcom/ooyala/pulse/j$b;->a:Lcom/ooyala/pulse/j$b;

    iput-object p1, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/j;->i:Ljava/util/ArrayList;

    new-instance p1, Lcom/ooyala/pulse/h;

    sget p4, Lcom/ooyala/pulse/h$a;->a:I

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/ooyala/pulse/h;-><init>(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;ILcom/ooyala/pulse/PulseSessionExtensionListener;)V

    iput-object p1, p0, Lcom/ooyala/pulse/j;->n:Lcom/ooyala/pulse/h;

    invoke-direct {p0, p2, p3}, Lcom/ooyala/pulse/j;->a(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;)V

    return-void
.end method

.method private a(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/j;->j:Lcom/ooyala/adtech/Session;

    new-instance v1, Lcom/ooyala/pulse/h;

    invoke-direct {v1}, Lcom/ooyala/pulse/h;-><init>()V

    iput-object v1, p0, Lcom/ooyala/pulse/j;->p:Lcom/ooyala/pulse/h;

    iget-object v1, p0, Lcom/ooyala/pulse/j;->p:Lcom/ooyala/pulse/h;

    new-instance v2, Lcom/ooyala/pulse/h;

    sget v3, Lcom/ooyala/pulse/h$a;->a:I

    invoke-direct {v2, p1, p2, v3, v0}, Lcom/ooyala/pulse/h;-><init>(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;ILcom/ooyala/pulse/PulseSessionExtensionListener;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/pulse/h;->b(Lcom/ooyala/pulse/h;)V

    iget-object v1, p0, Lcom/ooyala/pulse/j;->d:Lcom/ooyala/adtech/AdRequester;

    new-instance v2, Lcom/ooyala/pulse/j$1;

    invoke-direct {v2, p0}, Lcom/ooyala/pulse/j$1;-><init>(Lcom/ooyala/pulse/j;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/ooyala/adtech/AdRequester;->requestSession(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;Lcom/ooyala/adtech/AdRequester$SessionListener;)Lcom/ooyala/adtech/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/ooyala/pulse/j;->f:Lcom/ooyala/adtech/Request;

    iget-boolean p1, p0, Lcom/ooyala/pulse/j;->s:Z

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/ooyala/pulse/j;->f:Lcom/ooyala/adtech/Request;

    :cond_0
    return-void
.end method

.method private a(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;ILcom/ooyala/pulse/PulseSessionExtensionListener;)V
    .locals 2

    new-instance v0, Lcom/ooyala/pulse/h;

    invoke-direct {v0}, Lcom/ooyala/pulse/h;-><init>()V

    new-instance v1, Lcom/ooyala/pulse/h;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/ooyala/pulse/h;-><init>(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;ILcom/ooyala/pulse/PulseSessionExtensionListener;)V

    invoke-virtual {v0, v1}, Lcom/ooyala/pulse/h;->b(Lcom/ooyala/pulse/h;)V

    iget-object p1, p0, Lcom/ooyala/pulse/j;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/ooyala/pulse/j;->g()V

    return-void
.end method

.method private a(Lcom/ooyala/pulse/a;)V
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/j$b;->f:Lcom/ooyala/pulse/j$b;

    iput-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    iput-object p1, p0, Lcom/ooyala/pulse/j;->k:Lcom/ooyala/pulse/a;

    iget-object v0, p0, Lcom/ooyala/pulse/j;->k:Lcom/ooyala/pulse/a;

    iput-object p0, v0, Lcom/ooyala/pulse/a;->f:Lcom/ooyala/pulse/a$a;

    iget-object v0, p0, Lcom/ooyala/pulse/j;->k:Lcom/ooyala/pulse/a;

    invoke-virtual {v0}, Lcom/ooyala/pulse/a;->a()V

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    invoke-interface {v0, p1}, Lcom/ooyala/pulse/PulseSessionListener;->startAdBreak(Lcom/ooyala/pulse/PulseAdBreak;)V

    :cond_0
    iget-object p1, p0, Lcom/ooyala/pulse/j;->k:Lcom/ooyala/pulse/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ooyala/pulse/j;->k:Lcom/ooyala/pulse/a;

    invoke-virtual {p1}, Lcom/ooyala/pulse/a;->c()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/ooyala/pulse/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/ooyala/pulse/j;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ooyala/pulse/j$3;->a:[I

    iget-object v1, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    invoke-virtual {v1}, Lcom/ooyala/pulse/j$b;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    invoke-virtual {p1}, Lcom/ooyala/pulse/j$b;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    const-string p1, "after session completed."

    goto :goto_0

    :pswitch_1
    const-string p1, "While content is paused."

    goto :goto_0

    :pswitch_2
    const-string p1, "while inside an ad break"

    goto :goto_0

    :pswitch_3
    const-string p1, "while content is playing."

    goto :goto_0

    :pswitch_4
    const-string p1, "while waiting for content to start."

    goto :goto_0

    :pswitch_5
    const-string p1, "while waiting for the session response from the server."

    goto :goto_0

    :pswitch_6
    const-string p1, "before starting a content session."

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->INTERNAL_ERROR:I

    invoke-direct {v0, v1, v2, p1}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    invoke-interface {p1, v0}, Lcom/ooyala/pulse/PulseSessionListener;->illegalOperationOccurred(Lcom/ooyala/pulse/Error;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/ooyala/pulse/j;->j:Lcom/ooyala/adtech/Session;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/pulse/j;->q:Lcom/ooyala/pulse/f;

    iget-object v1, p0, Lcom/ooyala/pulse/j;->c:Lcom/ooyala/pulse/Pulse;

    iget-wide v1, v1, Lcom/ooyala/pulse/Pulse;->c:J

    iput-wide v1, v0, Lcom/ooyala/pulse/f;->a:J

    iget-object v0, p0, Lcom/ooyala/pulse/j;->r:Lcom/ooyala/pulse/c;

    iget-object v1, p0, Lcom/ooyala/pulse/j;->q:Lcom/ooyala/pulse/f;

    invoke-interface {v0, v1}, Lcom/ooyala/pulse/c;->a(Lcom/ooyala/pulse/f;)Lcom/ooyala/pulse/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/j;->a(Lcom/ooyala/pulse/a;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ooyala/pulse/j;->d()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ooyala/pulse/j;->d()V

    return-void
.end method

.method static synthetic b(Lcom/ooyala/pulse/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/ooyala/pulse/j;->g()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/j;->l:Lcom/ooyala/pulse/PauseInsertionPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/j;->l:Lcom/ooyala/pulse/PauseInsertionPoint;

    invoke-virtual {v0}, Lcom/ooyala/pulse/PauseInsertionPoint;->b()V

    invoke-virtual {p0}, Lcom/ooyala/pulse/j;->pauseInsertionPointEnded()V

    invoke-direct {p0}, Lcom/ooyala/pulse/j;->f()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/j$b;->c:Lcom/ooyala/pulse/j$b;

    iput-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    invoke-interface {v0}, Lcom/ooyala/pulse/PulseSessionListener;->startContentPlayback()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/j$b;->g:Lcom/ooyala/pulse/j$b;

    iput-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    invoke-interface {v0}, Lcom/ooyala/pulse/PulseSessionListener;->sessionEnded()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    iget-boolean v0, p0, Lcom/ooyala/pulse/j;->m:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ooyala/adtech/RequestSettings;

    invoke-direct {v0}, Lcom/ooyala/adtech/RequestSettings;-><init>()V

    iget-object v1, p0, Lcom/ooyala/pulse/j;->p:Lcom/ooyala/pulse/h;

    iget-object v1, v1, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/j;->p:Lcom/ooyala/pulse/h;

    iget-object v0, v0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setLinearPlaybackPositions(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setNonlinearPlaybackPositions(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_PAUSE:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setInsertionPointFilter(Ljava/util/List;)V

    iget-object v1, p0, Lcom/ooyala/pulse/j;->p:Lcom/ooyala/pulse/h;

    iget-object v1, v1, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    sget v2, Lcom/ooyala/pulse/h$a;->a:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/ooyala/pulse/j;->a(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;ILcom/ooyala/pulse/PulseSessionExtensionListener;)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 6

    iget-object v0, p0, Lcom/ooyala/pulse/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/j;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/pulse/h;

    iget-object v2, p0, Lcom/ooyala/pulse/j;->j:Lcom/ooyala/adtech/Session;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ooyala/pulse/j;->j:Lcom/ooyala/adtech/Session;

    invoke-virtual {v2}, Lcom/ooyala/adtech/Session;->isPartOfOngoingRequest()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ooyala/pulse/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ooyala/pulse/j;->d:Lcom/ooyala/adtech/AdRequester;

    iget-object v2, p0, Lcom/ooyala/pulse/j;->j:Lcom/ooyala/adtech/Session;

    iget-object v3, v0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    iget-object v4, v0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    new-instance v5, Lcom/ooyala/pulse/j$2;

    invoke-direct {v5, p0, v0}, Lcom/ooyala/pulse/j$2;-><init>(Lcom/ooyala/pulse/j;Lcom/ooyala/pulse/h;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ooyala/adtech/AdRequester;->requestSessionExtension(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;Lcom/ooyala/adtech/AdRequester$SessionListener;)Lcom/ooyala/adtech/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/pulse/j;->f:Lcom/ooyala/adtech/Request;

    iget-boolean v0, p0, Lcom/ooyala/pulse/j;->s:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/j;->f:Lcom/ooyala/adtech/Request;

    :cond_1
    return-void

    :cond_2
    iget-object v1, v0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    iget-object v0, v0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-direct {p0, v1, v0}, Lcom/ooyala/pulse/j;->a(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/j;->k:Lcom/ooyala/pulse/a;

    iget v0, p0, Lcom/ooyala/pulse/j;->h:I

    sget v1, Lcom/ooyala/pulse/j$a;->c:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ooyala/pulse/j;->d()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ooyala/pulse/j;->e()V

    return-void
.end method

.method public final a(Lcom/ooyala/adtech/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    invoke-interface {v0, p1}, Lcom/ooyala/pulse/PulseSessionListener;->illegalOperationOccurred(Lcom/ooyala/pulse/Error;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/ooyala/pulse/PulseVideoAd;F)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    invoke-interface {v0, p1, p2}, Lcom/ooyala/pulse/PulseSessionListener;->startAdPlayback(Lcom/ooyala/pulse/PulseVideoAd;F)V

    :cond_0
    return-void
.end method

.method public final contentFinished()V
    .locals 3

    iget-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget-object v1, Lcom/ooyala/pulse/j$b;->d:Lcom/ooyala/pulse/j$b;

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect content to finish playing "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/j;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    sget v0, Lcom/ooyala/pulse/j$a;->c:I

    iput v0, p0, Lcom/ooyala/pulse/j;->h:I

    iget-object v0, p0, Lcom/ooyala/pulse/j;->q:Lcom/ooyala/pulse/f;

    iget-object v1, p0, Lcom/ooyala/pulse/j;->c:Lcom/ooyala/pulse/Pulse;

    iget-wide v1, v1, Lcom/ooyala/pulse/Pulse;->c:J

    iput-wide v1, v0, Lcom/ooyala/pulse/f;->a:J

    iget-object v0, p0, Lcom/ooyala/pulse/j;->r:Lcom/ooyala/pulse/c;

    iget-object v1, p0, Lcom/ooyala/pulse/j;->q:Lcom/ooyala/pulse/f;

    invoke-interface {v0, v1}, Lcom/ooyala/pulse/c;->c(Lcom/ooyala/pulse/f;)Lcom/ooyala/pulse/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/j;->a(Lcom/ooyala/pulse/a;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ooyala/pulse/j;->e()V

    return-void
.end method

.method public final contentPaused()V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget-object v1, Lcom/ooyala/pulse/j$b;->f:Lcom/ooyala/pulse/j$b;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget-object v1, Lcom/ooyala/pulse/j$b;->d:Lcom/ooyala/pulse/j$b;

    if-eq v0, v1, :cond_1

    const-string v0, "Did not expect content to pause "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/j;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ooyala/pulse/j;->r:Lcom/ooyala/pulse/c;

    invoke-interface {v0}, Lcom/ooyala/pulse/c;->a()Lcom/ooyala/pulse/PauseInsertionPoint;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/ooyala/pulse/j$b;->e:Lcom/ooyala/pulse/j$b;

    iput-object v1, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    iput-object v0, p0, Lcom/ooyala/pulse/j;->l:Lcom/ooyala/pulse/PauseInsertionPoint;

    iget-object v0, p0, Lcom/ooyala/pulse/j;->l:Lcom/ooyala/pulse/PauseInsertionPoint;

    iput-object p0, v0, Lcom/ooyala/pulse/PauseInsertionPoint;->e:Lcom/ooyala/pulse/PauseInsertionPoint$Listener;

    iget-object v0, p0, Lcom/ooyala/pulse/j;->l:Lcom/ooyala/pulse/PauseInsertionPoint;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/pulse/j;->m:Z

    iget-object v0, p0, Lcom/ooyala/pulse/j;->l:Lcom/ooyala/pulse/PauseInsertionPoint;

    invoke-virtual {v0}, Lcom/ooyala/pulse/PauseInsertionPoint;->a()V

    :cond_2
    return-void
.end method

.method public final contentPositionChanged(F)V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget-object v1, Lcom/ooyala/pulse/j$b;->d:Lcom/ooyala/pulse/j$b;

    if-eq v0, v1, :cond_0

    const-string p1, "Did not expect content to progress "

    invoke-direct {p0, p1}, Lcom/ooyala/pulse/j;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/j;->q:Lcom/ooyala/pulse/f;

    iput p1, v0, Lcom/ooyala/pulse/f;->b:F

    iget-object p1, p0, Lcom/ooyala/pulse/j;->q:Lcom/ooyala/pulse/f;

    iget-object v0, p0, Lcom/ooyala/pulse/j;->c:Lcom/ooyala/pulse/Pulse;

    iget-wide v0, v0, Lcom/ooyala/pulse/Pulse;->c:J

    iput-wide v0, p1, Lcom/ooyala/pulse/f;->a:J

    iget-object p1, p0, Lcom/ooyala/pulse/j;->r:Lcom/ooyala/pulse/c;

    iget-object v0, p0, Lcom/ooyala/pulse/j;->q:Lcom/ooyala/pulse/f;

    invoke-interface {p1, v0}, Lcom/ooyala/pulse/c;->b(Lcom/ooyala/pulse/f;)Lcom/ooyala/pulse/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/ooyala/pulse/j;->a(Lcom/ooyala/pulse/a;)V

    :cond_1
    return-void
.end method

.method public final contentStarted()V
    .locals 3

    iget-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget-object v1, Lcom/ooyala/pulse/j$b;->c:Lcom/ooyala/pulse/j$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget-object v1, Lcom/ooyala/pulse/j$b;->e:Lcom/ooyala/pulse/j$b;

    if-eq v0, v1, :cond_0

    const-string v0, "Did not expect content to start playing "

    invoke-direct {p0, v0}, Lcom/ooyala/pulse/j;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget-object v1, Lcom/ooyala/pulse/j$b;->c:Lcom/ooyala/pulse/j$b;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/ooyala/pulse/j$b;->d:Lcom/ooyala/pulse/j$b;

    iput-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    iget v0, p0, Lcom/ooyala/pulse/j;->h:I

    sget v1, Lcom/ooyala/pulse/j$a;->a:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ooyala/pulse/j;->j:Lcom/ooyala/adtech/Session;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/pulse/j;->e:Lcom/ooyala/adtech/Tracker;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->SESSION_CONTENT_START:Lcom/ooyala/adtech/TrackingEvent;

    iget-object v2, p0, Lcom/ooyala/pulse/j;->j:Lcom/ooyala/adtech/Session;

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/Tracker;->trackEvent(Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/Trackable;)V

    :cond_1
    sget v0, Lcom/ooyala/pulse/j$a;->b:I

    iput v0, p0, Lcom/ooyala/pulse/j;->h:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget-object v1, Lcom/ooyala/pulse/j$b;->e:Lcom/ooyala/pulse/j$b;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/ooyala/pulse/j$b;->d:Lcom/ooyala/pulse/j$b;

    iput-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    iget-object v0, p0, Lcom/ooyala/pulse/j;->l:Lcom/ooyala/pulse/PauseInsertionPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ooyala/pulse/j;->l:Lcom/ooyala/pulse/PauseInsertionPoint;

    iget-boolean v0, v0, Lcom/ooyala/pulse/PauseInsertionPoint;->g:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/ooyala/pulse/j;->c()V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/ooyala/pulse/j;->m:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/ooyala/pulse/j;->f()V

    :cond_4
    return-void
.end method

.method public final extendSession(Lcom/ooyala/pulse/ContentMetadata;Lcom/ooyala/pulse/RequestSettings;Lcom/ooyala/pulse/PulseSessionExtensionListener;)V
    .locals 3

    iput-object p3, p0, Lcom/ooyala/pulse/j;->b:Lcom/ooyala/pulse/PulseSessionExtensionListener;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/ooyala/pulse/RequestSettings;->b()Lcom/ooyala/adtech/RequestSettings;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ooyala/pulse/ContentMetadata;->a()Lcom/ooyala/adtech/ContentMetadata;

    move-result-object v0

    :cond_1
    new-instance p1, Lcom/ooyala/pulse/h;

    sget v1, Lcom/ooyala/pulse/h$a;->b:I

    invoke-direct {p1, v0, p2, v1, p3}, Lcom/ooyala/pulse/h;-><init>(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;ILcom/ooyala/pulse/PulseSessionExtensionListener;)V

    iput-object p1, p0, Lcom/ooyala/pulse/j;->o:Lcom/ooyala/pulse/h;

    iget-object p1, p0, Lcom/ooyala/pulse/j;->p:Lcom/ooyala/pulse/h;

    iget-object p1, p1, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ooyala/pulse/j;->p:Lcom/ooyala/pulse/h;

    iget-object p1, p1, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ooyala/pulse/j;->p:Lcom/ooyala/pulse/h;

    new-instance p3, Lcom/ooyala/pulse/h;

    iget-object v1, p0, Lcom/ooyala/pulse/j;->o:Lcom/ooyala/pulse/h;

    iget v1, v1, Lcom/ooyala/pulse/h;->c:I

    iget-object v2, p0, Lcom/ooyala/pulse/j;->o:Lcom/ooyala/pulse/h;

    iget-object v2, v2, Lcom/ooyala/pulse/h;->d:Lcom/ooyala/pulse/PulseSessionExtensionListener;

    invoke-direct {p3, v0, p2, v1, v2}, Lcom/ooyala/pulse/h;-><init>(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;ILcom/ooyala/pulse/PulseSessionExtensionListener;)V

    invoke-virtual {p1, p3}, Lcom/ooyala/pulse/h;->a(Lcom/ooyala/pulse/h;)Lcom/ooyala/pulse/h;

    move-result-object p1

    iput-object p1, p0, Lcom/ooyala/pulse/j;->o:Lcom/ooyala/pulse/h;

    :cond_2
    iget-object p1, p0, Lcom/ooyala/pulse/j;->o:Lcom/ooyala/pulse/h;

    iget-object p1, p1, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    iget-object p2, p0, Lcom/ooyala/pulse/j;->o:Lcom/ooyala/pulse/h;

    iget-object p2, p2, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    sget p3, Lcom/ooyala/pulse/h$a;->b:I

    iget-object v0, p0, Lcom/ooyala/pulse/j;->o:Lcom/ooyala/pulse/h;

    iget-object v0, v0, Lcom/ooyala/pulse/h;->d:Lcom/ooyala/pulse/PulseSessionExtensionListener;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ooyala/pulse/j;->a(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;ILcom/ooyala/pulse/PulseSessionExtensionListener;)V

    return-void
.end method

.method public final illegalOperationOccurred(Lcom/ooyala/pulse/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    invoke-interface {v0, p1}, Lcom/ooyala/pulse/PulseSessionListener;->illegalOperationOccurred(Lcom/ooyala/pulse/Error;)V

    :cond_0
    return-void
.end method

.method public final pauseInsertionPointEnded()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/j;->l:Lcom/ooyala/pulse/PauseInsertionPoint;

    return-void
.end method

.method public final startAdDisplay(Lcom/ooyala/pulse/PulsePauseAd;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    invoke-interface {v0, p1}, Lcom/ooyala/pulse/PulseSessionListener;->showPauseAd(Lcom/ooyala/pulse/PulsePauseAd;)V

    :cond_0
    return-void
.end method

.method public final startSession(Lcom/ooyala/pulse/PulseSessionListener;)V
    .locals 1

    iput-object p1, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    iget-object p1, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget-object v0, Lcom/ooyala/pulse/j$b;->a:Lcom/ooyala/pulse/j$b;

    if-eq p1, v0, :cond_0

    const-string p1, "Did not expect to session start after session has already started."

    invoke-direct {p0, p1}, Lcom/ooyala/pulse/j;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ooyala/pulse/j;->f:Lcom/ooyala/adtech/Request;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/ooyala/pulse/j$b;->b:Lcom/ooyala/pulse/j$b;

    iput-object p1, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ooyala/pulse/j;->b()V

    return-void
.end method

.method public final stopSession()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/pulse/j;->a:Lcom/ooyala/pulse/PulseSessionListener;

    iget-object v0, p0, Lcom/ooyala/pulse/j;->k:Lcom/ooyala/pulse/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/j;->k:Lcom/ooyala/pulse/a;

    invoke-virtual {v0}, Lcom/ooyala/pulse/a;->b()V

    invoke-virtual {p0}, Lcom/ooyala/pulse/j;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/ooyala/pulse/j;->c()V

    iget-object v0, p0, Lcom/ooyala/pulse/j;->f:Lcom/ooyala/adtech/Request;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/pulse/j;->f:Lcom/ooyala/adtech/Request;

    iget-object v1, p0, Lcom/ooyala/pulse/j;->t:Lcom/ooyala/adtech/Error;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/Request;->cancel(Lcom/ooyala/adtech/Error;)V

    :cond_1
    sget-object v0, Lcom/ooyala/pulse/j$b;->g:Lcom/ooyala/pulse/j$b;

    iput-object v0, p0, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    return-void
.end method
