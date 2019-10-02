.class final Lcom/google/ads/interactivemedia/v3/internal/cw$e;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cw$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fp;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cv$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$e;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$e;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$e;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$e;->a:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$e;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$e;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$e;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$e;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$e;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$e;->a:I

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cw$e;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
