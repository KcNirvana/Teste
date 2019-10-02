.class Lcom/google/ads/interactivemedia/v3/internal/be$3;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/be;->a(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/ads/interactivemedia/v3/internal/be;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/be;IJJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/be$3;->d:Lcom/google/ads/interactivemedia/v3/internal/be;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/be$3;->a:I

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/be$3;->b:J

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/internal/be$3;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/be$3;->d:Lcom/google/ads/interactivemedia/v3/internal/be;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/be;->a(Lcom/google/ads/interactivemedia/v3/internal/be;)Lcom/google/ads/interactivemedia/v3/internal/be$a;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/be$3;->a:I

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/be$3;->b:J

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/be$3;->c:J

    invoke-interface/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/be$a;->a(IJJ)V

    return-void
.end method
