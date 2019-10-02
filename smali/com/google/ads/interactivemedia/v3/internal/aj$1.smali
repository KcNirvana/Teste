.class Lcom/google/ads/interactivemedia/v3/internal/aj$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/aj;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/aj;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aj$1;->a:Lcom/google/ads/interactivemedia/v3/internal/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aj$1;->a:Lcom/google/ads/interactivemedia/v3/internal/aj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aj;->a(Lcom/google/ads/interactivemedia/v3/internal/aj;)Lcom/google/ads/interactivemedia/v3/internal/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ai;->a()V

    return-void
.end method
