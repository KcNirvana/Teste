.class abstract Lcom/google/ads/interactivemedia/v3/internal/hc$c;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/ads/interactivemedia/v3/internal/hc$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/hc$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/ads/interactivemedia/v3/internal/hc$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/hc$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/google/ads/interactivemedia/v3/internal/hc;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->e:Lcom/google/ads/interactivemedia/v3/internal/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->e:Lcom/google/ads/interactivemedia/v3/internal/hc;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->e:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/hc$d;->d:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->b:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->c:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->e:Lcom/google/ads/interactivemedia/v3/internal/hc;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->d:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->d:I

    return-void
.end method


# virtual methods
.method final b()Lcom/google/ads/interactivemedia/v3/internal/hc$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/hc$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->b:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->e:Lcom/google/ads/interactivemedia/v3/internal/hc;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/hc;->e:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->e:Lcom/google/ads/interactivemedia/v3/internal/hc;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/hc;->d:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc$d;->d:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->b:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->c:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->b:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->e:Lcom/google/ads/interactivemedia/v3/internal/hc;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/hc;->e:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->c:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->e:Lcom/google/ads/interactivemedia/v3/internal/hc;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->c:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/hc;->a(Lcom/google/ads/interactivemedia/v3/internal/hc$d;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->c:Lcom/google/ads/interactivemedia/v3/internal/hc$d;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->e:Lcom/google/ads/interactivemedia/v3/internal/hc;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->d:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hc$c;->d:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
