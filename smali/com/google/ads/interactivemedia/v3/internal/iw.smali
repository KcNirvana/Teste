.class public final Lcom/google/ads/interactivemedia/v3/internal/iw;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/CuePoint;


# instance fields
.field private final a:D

.field private final b:D

.field private final c:Z


# direct methods
.method constructor <init>(DDZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iw;->a:D

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/iw;->b:D

    iput-boolean p5, p0, Lcom/google/ads/interactivemedia/v3/internal/iw;->c:Z

    return-void
.end method


# virtual methods
.method public getEndTime()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iw;->b:D

    return-wide v0
.end method

.method public getStartTime()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iw;->a:D

    return-wide v0
.end method

.method public isPlayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iw;->c:Z

    return v0
.end method
