.class public Lcom/google/ads/interactivemedia/v3/internal/v;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/w;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/w;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/x;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/x;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/w;-><init>(Lcom/google/ads/interactivemedia/v3/internal/u;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/v;->a:Lcom/google/ads/interactivemedia/v3/internal/w;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/interactivemedia/v3/internal/u;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/v;->a:Lcom/google/ads/interactivemedia/v3/internal/w;

    return-object v0
.end method
