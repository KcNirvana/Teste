.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    array-length v6, p1

    add-int/lit8 v2, v6, -0x2

    :goto_1
    if-ltz v2, :cond_1

    if-nez v1, :cond_9

    :cond_1
    return-void

    :cond_2
    aget v6, p1, v2

    float-to-int v4, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    if-lt v4, v8, :cond_3

    if-gt v4, v3, :cond_3

    if-lt v5, v8, :cond_3

    if-le v5, v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    :cond_4
    const/4 v1, 0x0

    if-ne v4, v8, :cond_7

    aput v9, p1, v2

    const/4 v1, 0x1

    :cond_5
    :goto_2
    if-ne v5, v8, :cond_8

    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    const/4 v1, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_7
    if-ne v4, v3, :cond_5

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    if-ne v5, v0, :cond_6

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    aget v6, p1, v2

    float-to-int v4, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    if-lt v4, v8, :cond_a

    if-gt v4, v3, :cond_a

    if-lt v5, v8, :cond_a

    if-le v5, v0, :cond_b

    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    :cond_b
    const/4 v1, 0x0

    if-ne v4, v8, :cond_e

    aput v9, p1, v2

    const/4 v1, 0x1

    :cond_c
    :goto_4
    if-ne v5, v8, :cond_f

    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    const/4 v1, 0x1

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    :cond_e
    if-ne v4, v3, :cond_c

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    const/4 v1, 0x1

    goto :goto_4

    :cond_f
    if-ne v5, v0, :cond_d

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .locals 0

    sput-object p0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
