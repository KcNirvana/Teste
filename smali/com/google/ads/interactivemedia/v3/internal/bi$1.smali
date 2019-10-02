.class Lcom/google/ads/interactivemedia/v3/internal/bi$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/bi;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:F

.field final synthetic e:Lcom/google/ads/interactivemedia/v3/internal/bi;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/bi;IIIF)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$1;->e:Lcom/google/ads/interactivemedia/v3/internal/bi;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$1;->a:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$1;->b:I

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$1;->c:I

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$1;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$1;->e:Lcom/google/ads/interactivemedia/v3/internal/bi;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a(Lcom/google/ads/interactivemedia/v3/internal/bi;)Lcom/google/ads/interactivemedia/v3/internal/bi$a;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$1;->a:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$1;->b:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$1;->c:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$1;->d:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/bi$a;->a(IIIF)V

    return-void
.end method
