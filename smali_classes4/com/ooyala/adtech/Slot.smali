.class public Lcom/ooyala/adtech/Slot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/Trackable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Ad;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/ooyala/adtech/InsertionPoint;

.field final c:Lcom/ooyala/adtech/TrackingEvents;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ooyala/adtech/TrackingEvents;

    invoke-direct {v0}, Lcom/ooyala/adtech/TrackingEvents;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/Slot;->c:Lcom/ooyala/adtech/TrackingEvents;

    return-void
.end method


# virtual methods
.method public getAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Ad;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/Slot;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParentInsertionPoint()Lcom/ooyala/adtech/InsertionPoint;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Slot;->b:Lcom/ooyala/adtech/InsertionPoint;

    return-object v0
.end method

.method public getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Slot;->c:Lcom/ooyala/adtech/TrackingEvents;

    return-object v0
.end method
