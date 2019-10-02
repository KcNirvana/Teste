.class Lcom/google/ads/interactivemedia/v3/internal/le$b;
.super Lcom/google/ads/interactivemedia/v3/internal/le;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/le<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/internal/le;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/le;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/le$b;->c:Lcom/google/ads/interactivemedia/v3/internal/le;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/le;-><init>()V

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/le$b;->a:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/le$b;->b:I

    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/ads/interactivemedia/v3/internal/le;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/ads/interactivemedia/v3/internal/le<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/le$b;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/kv;->a(III)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/le$b;->c:Lcom/google/ads/interactivemedia/v3/internal/le;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/le$b;->a:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/le$b;->a:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/le;->a(II)Lcom/google/ads/interactivemedia/v3/internal/le;

    move-result-object p1

    return-object p1
.end method

.method c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/le$b;->b:I

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kv;->a(II)I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/le$b;->c:Lcom/google/ads/interactivemedia/v3/internal/le;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/le$b;->a:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/le;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/le$b;->b:I

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/le$b;->a(II)Lcom/google/ads/interactivemedia/v3/internal/le;

    move-result-object p1

    return-object p1
.end method
