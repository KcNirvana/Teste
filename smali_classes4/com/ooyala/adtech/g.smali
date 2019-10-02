.class final Lcom/ooyala/adtech/g;
.super Lcom/ooyala/adtech/Request;
.source "SourceFile"


# instance fields
.field f:Lcom/ooyala/adtech/h;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/d;)V
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/LogItem$Source;->SESSION:Lcom/ooyala/pulse/LogItem$Source;

    invoke-direct {p0, p1, v0}, Lcom/ooyala/adtech/Request;-><init>(Lcom/ooyala/adtech/d;Lcom/ooyala/pulse/LogItem$Source;)V

    return-void
.end method

.method static a(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/Session;)V
    .locals 9

    invoke-virtual {p0}, Lcom/ooyala/adtech/Session;->a()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/ooyala/adtech/Session;->e:J

    iget-wide v0, p0, Lcom/ooyala/adtech/Session;->f:J

    iput-wide v0, p1, Lcom/ooyala/adtech/Session;->f:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/InsertionPoint;

    invoke-virtual {v2}, Lcom/ooyala/adtech/InsertionPoint;->getConditions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/Condition;

    instance-of v3, v2, Lcom/ooyala/adtech/PropertyCondition;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/ooyala/adtech/Condition;->getType()Lcom/ooyala/adtech/Condition$Type;

    move-result-object v3

    sget-object v4, Lcom/ooyala/adtech/Condition$Type;->PLAYBACK_POSITION:Lcom/ooyala/adtech/Condition$Type;

    if-ne v3, v4, :cond_0

    check-cast v2, Lcom/ooyala/adtech/PropertyCondition;

    invoke-virtual {v2}, Lcom/ooyala/adtech/PropertyCondition;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iget-object p0, p0, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/InsertionPoint;

    invoke-virtual {v2}, Lcom/ooyala/adtech/InsertionPoint;->getConditions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ooyala/adtech/Condition;

    invoke-virtual {v4}, Lcom/ooyala/adtech/Condition;->getType()Lcom/ooyala/adtech/Condition$Type;

    move-result-object v5

    sget-object v6, Lcom/ooyala/adtech/Condition$Type;->PLAYBACK_POSITION:Lcom/ooyala/adtech/Condition$Type;

    if-ne v5, v6, :cond_4

    check-cast v4, Lcom/ooyala/adtech/PropertyCondition;

    invoke-virtual {v4}, Lcom/ooyala/adtech/PropertyCondition;->getValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_4

    :cond_4
    iget-object v5, p1, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ooyala/adtech/InsertionPoint;

    invoke-virtual {v6}, Lcom/ooyala/adtech/InsertionPoint;->getConditions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ooyala/adtech/Condition;

    invoke-virtual {v4}, Lcom/ooyala/adtech/Condition;->getType()Lcom/ooyala/adtech/Condition$Type;

    move-result-object v8

    invoke-virtual {v7}, Lcom/ooyala/adtech/Condition;->getType()Lcom/ooyala/adtech/Condition$Type;

    move-result-object v7

    if-ne v8, v7, :cond_5

    invoke-virtual {v4}, Lcom/ooyala/adtech/Condition;->getType()Lcom/ooyala/adtech/Condition$Type;

    move-result-object v4

    sget-object v5, Lcom/ooyala/adtech/Condition$Type;->ON_PAUSE:Lcom/ooyala/adtech/Condition$Type;

    if-ne v4, v5, :cond_6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iput-object v1, p1, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/net/URL;Lcom/ooyala/adtech/AdRequester$SessionListener;Z)V
    .locals 2

    sget v0, Lcom/ooyala/adtech/Request;->a:F

    new-instance v1, Lcom/ooyala/adtech/g$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/ooyala/adtech/g$2;-><init>(Lcom/ooyala/adtech/g;Lcom/ooyala/adtech/AdRequester$SessionListener;Z)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/ooyala/adtech/g;->a(Ljava/net/URL;FLcom/ooyala/adtech/HTTPRequest$b;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;)V
    .locals 2

    new-instance v0, Lcom/ooyala/adtech/h;

    iget-object v1, p0, Lcom/ooyala/adtech/g;->logger:Lcom/ooyala/adtech/d;

    invoke-direct {v0, p1, p2, v1}, Lcom/ooyala/adtech/h;-><init>(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;Lcom/ooyala/adtech/d;)V

    iput-object v0, p0, Lcom/ooyala/adtech/g;->f:Lcom/ooyala/adtech/h;

    return-void
.end method

.method final a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;Ljava/lang/String;Lcom/ooyala/adtech/AdRequester$SessionListener;)V
    .locals 6
    .param p4    # Lcom/ooyala/adtech/Session;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p5, :cond_0

    :try_start_0
    invoke-virtual {p5}, Lcom/ooyala/adtech/ContentMetadata;->validate()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Lcom/ooyala/adtech/RequestSettings;->a()V
    :try_end_0
    .catch Lcom/ooyala/adtech/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v0, v0, Lcom/ooyala/adtech/a;->a:Lcom/ooyala/adtech/Error;

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/ooyala/adtech/g;->logger:Lcom/ooyala/adtech/d;

    new-instance p2, Lcom/ooyala/adtech/LogItem;

    sget-object p3, Lcom/ooyala/pulse/LogItem$Source;->SESSION:Lcom/ooyala/pulse/LogItem$Source;

    sget-object p4, Lcom/ooyala/pulse/LogItem$Event;->INVALID_ARGUMENT:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {p2, p3, p4, v0}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p1, p2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    invoke-interface {p8, v0}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    return-void

    :cond_2
    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move-object v3, p6

    move-object v4, p5

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/ooyala/adtech/c;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/adtech/RequestSettings;Lcom/ooyala/adtech/ContentMetadata;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p4, :cond_4

    if-eqz p6, :cond_3

    invoke-virtual {p6}, Lcom/ooyala/adtech/RequestSettings;->isCacheBustingEnforced()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_4

    :cond_3
    const/4 p2, 0x0

    :goto_4
    invoke-direct {p0, p1, p8, p2}, Lcom/ooyala/adtech/g;->a(Ljava/net/URL;Lcom/ooyala/adtech/AdRequester$SessionListener;Z)V

    return-void

    :cond_4
    new-instance p5, Lcom/ooyala/adtech/g$1;

    invoke-direct {p5, p0, p4, p8}, Lcom/ooyala/adtech/g$1;-><init>(Lcom/ooyala/adtech/g;Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;)V

    if-eqz p6, :cond_5

    invoke-virtual {p6}, Lcom/ooyala/adtech/RequestSettings;->isCacheBustingEnforced()Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    :goto_5
    invoke-direct {p0, p1, p5, p2}, Lcom/ooyala/adtech/g;->a(Ljava/net/URL;Lcom/ooyala/adtech/AdRequester$SessionListener;Z)V

    return-void
.end method

.method public final cancel(Lcom/ooyala/adtech/Error;)V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/g;->f:Lcom/ooyala/adtech/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/g;->f:Lcom/ooyala/adtech/h;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ooyala/adtech/h;->logger:Lcom/ooyala/adtech/d;

    iget-object v0, p0, Lcom/ooyala/adtech/g;->f:Lcom/ooyala/adtech/h;

    invoke-virtual {v0, p1}, Lcom/ooyala/adtech/h;->cancel(Lcom/ooyala/adtech/Error;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/ooyala/adtech/Request;->cancel(Lcom/ooyala/adtech/Error;)V

    return-void
.end method
