.class public Lcom/ooyala/adtech/Creative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/Trackable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field g:I

.field h:Ljava/lang/String;

.field i:Lcom/ooyala/adtech/Ad;

.field j:Lcom/ooyala/adtech/UniversalAdId;

.field final k:Lcom/ooyala/adtech/TrackingEvents;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ooyala/adtech/TrackingEvents;

    invoke-direct {v0}, Lcom/ooyala/adtech/TrackingEvents;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/Creative;->k:Lcom/ooyala/adtech/TrackingEvents;

    return-void
.end method


# virtual methods
.method public getParentAd()Lcom/ooyala/adtech/Ad;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Creative;->i:Lcom/ooyala/adtech/Ad;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/Creative;->g:I

    return v0
.end method

.method public getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Creative;->k:Lcom/ooyala/adtech/TrackingEvents;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Creative;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getUniversalAdId()Lcom/ooyala/adtech/UniversalAdId;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Creative;->j:Lcom/ooyala/adtech/UniversalAdId;

    return-object v0
.end method
