.class public final Lcom/google/zxing/common/DefaultGridSampler;
.super Lcom/google/zxing/common/GridSampler;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-static/range {p4 .. p19}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/high16 v9, 0x3f000000    # 0.5f

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    :cond_1
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, p2, p3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    mul-int/lit8 v7, p2, 0x2

    new-array v4, v7, [F

    const/4 v6, 0x0

    :goto_0
    if-lt v6, p3, :cond_2

    return-object v1

    :cond_2
    array-length v3, v4

    int-to-float v7, v6

    add-float v2, v7, v9

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v3, :cond_3

    invoke-virtual {p4, v4}, Lcom/google/zxing/common/PerspectiveTransform;->transformPoints([F)V

    invoke-static {p1, v4}, Lcom/google/zxing/common/DefaultGridSampler;->checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v3, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v9

    aput v7, v4, v5

    add-int/lit8 v7, v5, 0x1

    aput v2, v4, v7

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_4
    :try_start_0
    aget v7, v4, v5

    float-to-int v7, v7

    add-int/lit8 v8, v5, 0x1

    aget v8, v4, v8

    float-to-int v8, v8

    invoke-virtual {p1, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_5

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v1, v7, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method
