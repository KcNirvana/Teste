.class final Lcom/google/ads/interactivemedia/v3/internal/lo$b;
.super Lcom/google/ads/interactivemedia/v3/internal/lg;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/lo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/lg<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/ads/interactivemedia/v3/internal/lf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/lf<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient b:Lcom/google/ads/interactivemedia/v3/internal/le;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/le<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/lf;Lcom/google/ads/interactivemedia/v3/internal/le;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/lf<",
            "TK;*>;",
            "Lcom/google/ads/interactivemedia/v3/internal/le<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/lg;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$b;->a:Lcom/google/ads/interactivemedia/v3/internal/lf;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$b;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/lo$b;->b()Lcom/google/ads/interactivemedia/v3/internal/le;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/le;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public a()Lcom/google/ads/interactivemedia/v3/internal/lr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/lr<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/lo$b;->b()Lcom/google/ads/interactivemedia/v3/internal/le;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/le;->a()Lcom/google/ads/interactivemedia/v3/internal/lr;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/ads/interactivemedia/v3/internal/le;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/le<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$b;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    return-object v0
.end method

.method c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$b;->a:Lcom/google/ads/interactivemedia/v3/internal/lf;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/lf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/lo$b;->a()Lcom/google/ads/interactivemedia/v3/internal/lr;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$b;->a:Lcom/google/ads/interactivemedia/v3/internal/lf;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/lf;->size()I

    move-result v0

    return v0
.end method
