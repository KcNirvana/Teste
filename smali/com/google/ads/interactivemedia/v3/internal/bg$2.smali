.class Lcom/google/ads/interactivemedia/v3/internal/bg$2;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Landroid/media/MediaCodec$CryptoException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaCodec$CryptoException;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/internal/bg;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/bg;Landroid/media/MediaCodec$CryptoException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$2;->b:Lcom/google/ads/interactivemedia/v3/internal/bg;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$2;->a:Landroid/media/MediaCodec$CryptoException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$2;->b:Lcom/google/ads/interactivemedia/v3/internal/bg;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Lcom/google/ads/interactivemedia/v3/internal/bg;)Lcom/google/ads/interactivemedia/v3/internal/bg$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$2;->a:Landroid/media/MediaCodec$CryptoException;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bg$b;->a(Landroid/media/MediaCodec$CryptoException;)V

    return-void
.end method
