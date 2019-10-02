.class public Lcom/google/ads/interactivemedia/v3/internal/ih;
.super Lcom/google/ads/interactivemedia/v3/internal/ji;
.source "IMASDK"


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;J)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ji;-><init>(J)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ih;->a:Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ih;->a:Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    return-object v0
.end method
