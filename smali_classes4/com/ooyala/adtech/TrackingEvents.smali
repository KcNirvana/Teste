.class public Lcom/ooyala/adtech/TrackingEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ooyala/adtech/j;",
            "Lcom/ooyala/adtech/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/TrackingEvents;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/ooyala/adtech/j;)Lcom/ooyala/adtech/i;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/TrackingEvents;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ooyala/adtech/i;

    return-object p1
.end method


# virtual methods
.method final a(Lcom/ooyala/adtech/TrackingEvent;)Lcom/ooyala/adtech/i;
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/TrackingEvents;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/ooyala/adtech/j;

    invoke-direct {v1, p1}, Lcom/ooyala/adtech/j;-><init>(Lcom/ooyala/adtech/TrackingEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ooyala/adtech/i;

    return-object p1
.end method

.method final a(Ljava/lang/String;)Lcom/ooyala/adtech/i;
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/TrackingEvents;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/ooyala/adtech/b;

    invoke-direct {v1, p1}, Lcom/ooyala/adtech/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ooyala/adtech/i;

    return-object p1
.end method

.method final a(Lcom/ooyala/adtech/TrackingError$a;)V
    .locals 5

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {p0, v0}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;)Lcom/ooyala/adtech/i;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/ooyala/adtech/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, v0, Lcom/ooyala/adtech/i;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/ooyala/adtech/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    invoke-static {v4, p1}, Lcom/ooyala/adtech/l;->a(Ljava/net/URL;Lcom/ooyala/adtech/TrackingError$a;)Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V
    .locals 1

    new-instance v0, Lcom/ooyala/adtech/j;

    invoke-direct {v0, p1}, Lcom/ooyala/adtech/j;-><init>(Lcom/ooyala/adtech/TrackingEvent;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/j;Ljava/net/URL;Z)V

    return-void
.end method

.method final a(Lcom/ooyala/adtech/TrackingEvents;)V
    .locals 2

    iget-object v0, p1, Lcom/ooyala/adtech/TrackingEvents;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/adtech/j;

    invoke-virtual {p0, p1, v1, v1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvents;Lcom/ooyala/adtech/j;Lcom/ooyala/adtech/j;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Lcom/ooyala/adtech/TrackingEvents;Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/TrackingEvent;)V
    .locals 1

    new-instance v0, Lcom/ooyala/adtech/j;

    invoke-direct {v0, p2}, Lcom/ooyala/adtech/j;-><init>(Lcom/ooyala/adtech/TrackingEvent;)V

    new-instance p2, Lcom/ooyala/adtech/j;

    invoke-direct {p2, p3}, Lcom/ooyala/adtech/j;-><init>(Lcom/ooyala/adtech/TrackingEvent;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvents;Lcom/ooyala/adtech/j;Lcom/ooyala/adtech/j;)V

    return-void
.end method

.method final a(Lcom/ooyala/adtech/TrackingEvents;Lcom/ooyala/adtech/j;Lcom/ooyala/adtech/j;)V
    .locals 1

    invoke-direct {p1, p2}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/j;)Lcom/ooyala/adtech/i;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p3}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/j;)Lcom/ooyala/adtech/i;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/ooyala/adtech/i;

    invoke-direct {p2}, Lcom/ooyala/adtech/i;-><init>()V

    iget-object v0, p0, Lcom/ooyala/adtech/TrackingEvents;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p3, p2, Lcom/ooyala/adtech/i;->a:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/ooyala/adtech/i;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p2, Lcom/ooyala/adtech/i;->b:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/ooyala/adtech/i;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method final a(Lcom/ooyala/adtech/j;Ljava/net/URL;Z)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/TrackingEvents;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ooyala/adtech/i;

    invoke-direct {v0}, Lcom/ooyala/adtech/i;-><init>()V

    iget-object v1, p0, Lcom/ooyala/adtech/TrackingEvents;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, v0, Lcom/ooyala/adtech/i;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object p1, v0, Lcom/ooyala/adtech/i;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/net/URL;Z)V
    .locals 1

    new-instance v0, Lcom/ooyala/adtech/b;

    invoke-direct {v0, p1}, Lcom/ooyala/adtech/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/j;Ljava/net/URL;Z)V

    return-void
.end method

.method final b(Lcom/ooyala/adtech/TrackingEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/TrackingEvents;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/ooyala/adtech/j;

    invoke-direct {v1, p1}, Lcom/ooyala/adtech/j;-><init>(Lcom/ooyala/adtech/TrackingEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final c(Lcom/ooyala/adtech/TrackingEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;)Lcom/ooyala/adtech/i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/ooyala/adtech/i;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final d(Lcom/ooyala/adtech/TrackingEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;)Lcom/ooyala/adtech/i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/ooyala/adtech/i;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public getTrackingURLs(Lcom/ooyala/adtech/TrackingEvent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ooyala/adtech/TrackingEvent;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;)Lcom/ooyala/adtech/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;)Lcom/ooyala/adtech/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ooyala/adtech/i;->a()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public hasCustomEvent(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ooyala/adtech/TrackingEvents;->a(Ljava/lang/String;)Lcom/ooyala/adtech/i;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasEvent(Lcom/ooyala/adtech/TrackingEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;)Lcom/ooyala/adtech/i;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
