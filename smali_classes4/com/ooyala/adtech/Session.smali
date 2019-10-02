.class public Lcom/ooyala/adtech/Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/Trackable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/InsertionPoint;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/ooyala/adtech/TrackingEvents;

.field e:J

.field f:J

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvents;

    invoke-direct {v0}, Lcom/ooyala/adtech/TrackingEvents;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/Session;->d:Lcom/ooyala/adtech/TrackingEvents;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/adtech/Session;->g:Z

    return-void
.end method


# virtual methods
.method final a()J
    .locals 4

    iget-wide v0, p0, Lcom/ooyala/adtech/Session;->e:J

    iget-wide v2, p0, Lcom/ooyala/adtech/Session;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method final b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Ad;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/InsertionPoint;

    iget-object v2, v2, Lcom/ooyala/adtech/InsertionPoint;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ooyala/adtech/Slot;

    iget-object v3, v3, Lcom/ooyala/adtech/Slot;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ooyala/adtech/Ad;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Session;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertionPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/InsertionPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Session;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Session;->d:Lcom/ooyala/adtech/TrackingEvents;

    return-object v0
.end method

.method public isPartOfOngoingRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ooyala/adtech/Session;->g:Z

    return v0
.end method
