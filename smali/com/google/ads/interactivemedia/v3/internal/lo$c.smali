.class final Lcom/google/ads/interactivemedia/v3/internal/lo$c;
.super Lcom/google/ads/interactivemedia/v3/internal/le;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/lo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/le<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient a:[Ljava/lang/Object;

.field private final transient b:I

.field private final transient c:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/le;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$c;->a:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$c;->b:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$c;->c:I

    return-void
.end method


# virtual methods
.method c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$c;->c:I

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/kv;->a(II)I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$c;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$c;->b:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lo$c;->c:I

    return v0
.end method
