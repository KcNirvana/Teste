.class Lcom/google/ads/interactivemedia/v3/internal/hc$b$1;
.super Lcom/google/ads/interactivemedia/v3/internal/hc$c;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/hc$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/hc$c<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/hc$b;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/hc$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$b$1;->a:Lcom/google/ads/interactivemedia/v3/internal/hc$b;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/hc$b;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/hc$c;-><init>(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/hc$b$1;->b()Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/hc$d;->f:Ljava/lang/Object;

    return-object v0
.end method
