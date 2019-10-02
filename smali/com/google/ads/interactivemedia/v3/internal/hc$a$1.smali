.class Lcom/google/ads/interactivemedia/v3/internal/hc$a$1;
.super Lcom/google/ads/interactivemedia/v3/internal/hc$c;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/hc$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/hc$c<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/hc$a;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/hc$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$a$1;->a:Lcom/google/ads/interactivemedia/v3/internal/hc$a;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/hc$a;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/hc$c;-><init>(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/hc$a$1;->b()Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/hc$a$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
