.class Lcom/google/ads/interactivemedia/v3/internal/bg$3;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/ads/interactivemedia/v3/internal/bg;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/bg;Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$3;->d:Lcom/google/ads/interactivemedia/v3/internal/bg;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$3;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$3;->b:J

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$3;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$3;->d:Lcom/google/ads/interactivemedia/v3/internal/bg;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Lcom/google/ads/interactivemedia/v3/internal/bg;)Lcom/google/ads/interactivemedia/v3/internal/bg$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$3;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$3;->b:J

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/bg$3;->c:J

    invoke-interface/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/bg$b;->a(Ljava/lang/String;JJ)V

    return-void
.end method
