.class final Lcom/google/ads/interactivemedia/v3/internal/hu$25;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/gq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/hu;->a(Lcom/google/ads/interactivemedia/v3/internal/hw;Lcom/google/ads/interactivemedia/v3/internal/gp;)Lcom/google/ads/interactivemedia/v3/internal/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/hw;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/internal/gp;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/hw;Lcom/google/ads/interactivemedia/v3/internal/gp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hu$25;->a:Lcom/google/ads/interactivemedia/v3/internal/hw;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/hu$25;->b:Lcom/google/ads/interactivemedia/v3/internal/gp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/fz;Lcom/google/ads/interactivemedia/v3/internal/hw;)Lcom/google/ads/interactivemedia/v3/internal/gp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/internal/fz;",
            "Lcom/google/ads/interactivemedia/v3/internal/hw<",
            "TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/gp<",
            "TT;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hu$25;->a:Lcom/google/ads/interactivemedia/v3/internal/hw;

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/hw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hu$25;->b:Lcom/google/ads/interactivemedia/v3/internal/gp;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
