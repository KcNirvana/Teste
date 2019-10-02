.class Lcom/google/ads/interactivemedia/v3/internal/bi$3;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/bi;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/internal/bi;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/bi;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$3;->c:Lcom/google/ads/interactivemedia/v3/internal/bi;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$3;->a:I

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$3;->c:Lcom/google/ads/interactivemedia/v3/internal/bi;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a(Lcom/google/ads/interactivemedia/v3/internal/bi;)Lcom/google/ads/interactivemedia/v3/internal/bi$a;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$3;->a:I

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi$3;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/bi$a;->a(IJ)V

    return-void
.end method
