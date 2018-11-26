.class public Lcom/miui/securityscan/ui/main/BallView;
.super Landroid/view/View;
.source ""


# instance fields
.field private GM:Z

.field private GN:Ljava/util/List;

.field private GO:Landroid/graphics/LinearGradient;

.field private GP:Landroid/graphics/Point;

.field private GQ:Lcom/miui/securityscan/ui/main/BallView$ColorState;

.field private GR:Ljava/util/List;

.field private GS:Landroid/graphics/Paint;

.field private GT:Ljava/util/Random;

.field private GU:Landroid/graphics/LinearGradient;

.field private mCount:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/ui/main/BallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/BallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GP:Landroid/graphics/Point;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GN:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GT:Ljava/util/Random;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GS:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/BallView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/securitycenter/d;->BallView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GP:Landroid/graphics/Point;

    iget v1, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GP:Landroid/graphics/Point;

    iget v1, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    sget-object v0, Lcom/miui/securityscan/ui/main/BallView$ColorState;->GV:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GQ:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/BallView;->Hc()V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/BallView;->Hb()V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/BallView;->Ha()V

    return-void
.end method

.method private GY(F)F
    .locals 1

    new-instance v0, Lcom/miui/securityscan/ui/main/e;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/ui/main/e;-><init>(Lcom/miui/securityscan/ui/main/BallView;)V

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/e;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private GZ(F)F
    .locals 1

    new-instance v0, Lcom/miui/securityscan/ui/main/f;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/ui/main/f;-><init>(Lcom/miui/securityscan/ui/main/BallView;)V

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/f;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private Ha()V
    .locals 11

    const/16 v10, 0x73

    const/16 v9, 0x43

    const/16 v8, 0x38

    const/16 v7, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v3, Lcom/miui/securityscan/ui/main/c;

    invoke-direct {v3, p0}, Lcom/miui/securityscan/ui/main/c;-><init>(Lcom/miui/securityscan/ui/main/BallView;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GT:Ljava/util/Random;

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/c;->Hw(F)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GT:Ljava/util/Random;

    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/miui/securityscan/ui/main/c;->Hx(J)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GT:Ljava/util/Random;

    const/16 v4, 0x12c

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x640

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/miui/securityscan/ui/main/c;->setDuration(J)V

    rem-int/lit8 v0, v1, 0x4

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/ui/main/d;

    const/16 v4, 0xff

    const/16 v5, 0xf5

    invoke-direct {v0, v4, v2, v10, v5}, Lcom/miui/securityscan/ui/main/d;-><init>(IIII)V

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/c;->Hr(Lcom/miui/securityscan/ui/main/d;)V

    new-instance v0, Lcom/miui/securityscan/ui/main/d;

    const/16 v4, 0xff

    const/16 v5, 0xfe

    const/16 v6, 0x75

    invoke-direct {v0, v4, v5, v6, v9}, Lcom/miui/securityscan/ui/main/d;-><init>(IIII)V

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/c;->Hy(Lcom/miui/securityscan/ui/main/d;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GO:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/c;->Hs(Landroid/graphics/LinearGradient;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GU:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/c;->Hz(Landroid/graphics/LinearGradient;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/c;->Hv(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GP:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/c;->Ht(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GP:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/c;->Hu(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GN:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/securityscan/ui/main/d;

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/BallView;->GT:Ljava/util/Random;

    invoke-virtual {v4, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit16 v4, v4, 0xc8

    const/16 v5, 0xf5

    invoke-direct {v0, v4, v2, v10, v5}, Lcom/miui/securityscan/ui/main/d;-><init>(IIII)V

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/c;->Hr(Lcom/miui/securityscan/ui/main/d;)V

    new-instance v0, Lcom/miui/securityscan/ui/main/d;

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/BallView;->GT:Ljava/util/Random;

    invoke-virtual {v4, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit16 v4, v4, 0xc8

    const/16 v5, 0xfe

    const/16 v6, 0x75

    invoke-direct {v0, v4, v5, v6, v9}, Lcom/miui/securityscan/ui/main/d;-><init>(IIII)V

    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/c;->Hy(Lcom/miui/securityscan/ui/main/d;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private Hb()V
    .locals 6

    const v5, 0x3ea978d5    # 0.331f

    const-string/jumbo v0, "initEndPointList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3f360419    # 0.711f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3d2c0831    # 0.042f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3e656042    # 0.224f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3d3851ec    # 0.045f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3f6b851f    # 0.92f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3e1fbe77    # 0.156f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3cfdf3b6    # 0.031f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3e6e978d    # 0.233f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3c343958    # 0.011f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3ef645a2    # 0.481f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3f547ae1    # 0.83f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3efd70a4    # 0.495f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3f34bc6a    # 0.706f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3f71a9fc    # 0.944f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3f4e5604    # 0.806f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3f39999a    # 0.725f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3f5c28f6    # 0.86f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3d79db23    # 0.061f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3f70a3d7    # 0.94f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GR:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3f774bc7    # 0.966f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private Hc()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xff

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x3

    new-array v5, v2, [I

    const/16 v2, 0x65

    const/16 v4, 0xf2

    const/16 v6, 0xf9

    invoke-static {v2, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v5, v9

    const/16 v2, 0x6f

    const/16 v4, 0xf3

    const/16 v6, 0xfb

    invoke-static {v2, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v5, v10

    const/16 v2, 0x1b

    const/16 v4, 0x91

    const/16 v6, 0xef

    invoke-static {v2, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v4, 0x2

    aput v2, v5, v4

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GO:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x3

    new-array v5, v2, [I

    const/16 v2, 0xb4

    const/16 v4, 0x34

    invoke-static {v8, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v5, v9

    const/16 v2, 0x7b

    const/16 v4, 0x2b

    invoke-static {v8, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v5, v10

    const/16 v2, 0x53

    const/16 v4, 0x2b

    invoke-static {v8, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v4, 0x2

    aput v2, v5, v4

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GU:Landroid/graphics/LinearGradient;

    return-void
.end method

.method private Hd()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GN:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/c;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/c;->Hq()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic He(Lcom/miui/securityscan/ui/main/BallView;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GP:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic Hf(Lcom/miui/securityscan/ui/main/BallView;)Lcom/miui/securityscan/ui/main/BallView$ColorState;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GQ:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    return-object v0
.end method

.method static synthetic Hg(Lcom/miui/securityscan/ui/main/BallView;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/BallView;->GY(F)F

    move-result v0

    return v0
.end method

.method static synthetic Hh(Lcom/miui/securityscan/ui/main/BallView;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/BallView;->GZ(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public GW(I)V
    .locals 1

    const/16 v0, 0x50

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/ui/main/BallView$ColorState;->GV:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GQ:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/miui/securityscan/ui/main/BallView$ColorState;->GW:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GQ:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    goto :goto_0
.end method

.method public GX()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/securityscan/ui/main/BallView;->mCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GM:Z

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/BallView;->Ha()V

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/BallView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GM:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/securityscan/ui/main/BallView;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/securityscan/ui/main/BallView;->mCount:I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->GN:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/c;

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView;->GS:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->mCount:I

    invoke-virtual {v0, p1, v3, v4}, Lcom/miui/securityscan/ui/main/c;->Hi(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/BallView;->Hd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/BallView;->invalidate()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/BallView;->GM:Z

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method
