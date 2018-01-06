.class public Lcom/miui/weather2/b/t;
.super Lcom/miui/weather2/b/b;
.source "SourceFile"


# static fields
.field private static final X:[I

.field private static final Y:[I

.field private static final Z:[F

.field private static final aa:[I

.field private static final ab:[I


# instance fields
.field private A:F

.field private B:F

.field private C:[F

.field private D:[F

.field private E:[I

.field private F:[Landroid/graphics/Matrix;

.field private G:[Landroid/graphics/Matrix;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:[Z

.field private M:[Z

.field private N:[Z

.field private O:Z

.field private P:[Lcom/miui/weather2/b/m;

.field private Q:[Landroid/graphics/drawable/BitmapDrawable;

.field private R:Landroid/animation/ValueAnimator;

.field private S:Landroid/animation/ValueAnimator;

.field private T:Landroid/animation/ValueAnimator;

.field private U:[Landroid/animation/ValueAnimator;

.field private V:Landroid/graphics/PointF;

.field private W:Landroid/graphics/PointF;

.field private ac:Landroid/os/Handler;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:I

.field private t:I

.field private u:[I

.field private v:[F

.field private w:[F

.field private x:Landroid/graphics/drawable/BitmapDrawable;

.field private y:[Landroid/graphics/drawable/BitmapDrawable;

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/weather2/b/t;->X:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/weather2/b/t;->Y:[I

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/weather2/b/t;->Z:[F

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miui/weather2/b/t;->aa:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/miui/weather2/b/t;->ab:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x0
        0x8
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xa
        0xa
        0xf
        0x14
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
    .end array-data

    :array_3
    .array-data 4
        0x32
        0x32
        0x21
        0x19
    .end array-data

    :array_4
    .array-data 4
        0xf
        0x14
        0x23
        0x19
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/b/b;-><init>()V

    new-instance v0, Lcom/miui/weather2/b/u;

    invoke-direct {v0, p0}, Lcom/miui/weather2/b/u;-><init>(Lcom/miui/weather2/b/t;)V

    iput-object v0, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v0, 0x7f0a01f2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/t;->o:F

    :cond_0
    iput-object p2, p0, Lcom/miui/weather2/b/t;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/b/t;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/t;->V:Landroid/graphics/PointF;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/b/t;->N:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    sget-object v1, Lcom/miui/weather2/b/t;->ab:[I

    aget v1, v1, p1

    int-to-long v2, v1

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private a(Lcom/miui/weather2/b/a;Lcom/miui/weather2/b/d;Lcom/miui/weather2/b/n;)V
    .locals 11

    iget-object v0, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/miui/weather2/b/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/t;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/miui/weather2/b/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/t;->b:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/miui/weather2/b/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/t;->c:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/b/t;->u:[I

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/t;->Q:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x10

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->Q:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    invoke-virtual {p2}, Lcom/miui/weather2/b/d;->a()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/weather2/b/t;->v:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/weather2/b/t;->w:[F

    iget-object v0, p0, Lcom/miui/weather2/b/t;->v:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->v:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->v:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->v:[F

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a0070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->v:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->v:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->w:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->w:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->w:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->w:[F

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->w:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->w:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/b/t;->z:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/t;->y:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    invoke-virtual {p3}, Lcom/miui/weather2/b/n;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/t;->x:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v0, 0x4

    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/miui/weather2/b/t;->y:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    invoke-virtual {p3}, Lcom/miui/weather2/b/n;->c()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    invoke-virtual {p3}, Lcom/miui/weather2/b/n;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0xff

    :goto_2
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/miui/weather2/b/t;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    new-array v6, v0, [F

    const/4 v0, 0x4

    new-array v7, v0, [F

    const/4 v0, 0x4

    new-array v8, v0, [F

    const/4 v0, 0x4

    new-array v9, v0, [F

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/miui/weather2/b/t;->F:[Landroid/graphics/Matrix;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/miui/weather2/b/t;->G:[Landroid/graphics/Matrix;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/weather2/b/t;->C:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/weather2/b/t;->D:[F

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/b/t;->E:[I

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/miui/weather2/b/t;->L:[Z

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/miui/weather2/b/t;->M:[Z

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/miui/weather2/b/t;->N:[Z

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/weather2/b/m;

    iput-object v0, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    iget-object v0, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v1, 0x7f0a00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/t;->B:F

    iget-object v0, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v1, 0x7f0a00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/t;->A:F

    iget-object v0, p0, Lcom/miui/weather2/b/t;->D:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->C:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->D:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a00e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->C:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->D:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->C:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->D:[F

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->C:[F

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v3, 0x7f0a00e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v7, v0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v6, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v7, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v6, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v7, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v6, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v7, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v6, v0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v9, v0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v9, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v9, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v9, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v2, 0x7f0a00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/miui/weather2/b/t;->F:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_4
    const/4 v0, 0x4

    if-ge v5, v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/b/t;->G:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/miui/weather2/b/t;->G:[Landroid/graphics/Matrix;

    aget-object v0, v0, v5

    sget-object v1, Lcom/miui/weather2/b/t;->Z:[F

    aget v1, v1, v5

    sget-object v2, Lcom/miui/weather2/b/t;->Z:[F

    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v10, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    new-instance v0, Lcom/miui/weather2/b/m;

    aget v1, v7, v5

    aget v2, v6, v5

    aget v3, v9, v5

    aget v4, v8, v5

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/b/m;-><init>(FFFFI)V

    aput-object v0, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/b/t;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/b/t;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/b/t;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/b/t;->O:Z

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/b/t;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/t;->W:Landroid/graphics/PointF;

    return-object p1
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/b/t;->M:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    add-int/lit8 v1, p1, 0x28

    sget-object v2, Lcom/miui/weather2/b/t;->aa:[I

    aget v2, v2, p1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic b(Lcom/miui/weather2/b/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/b/t;->f()V

    return-void
.end method

.method static synthetic b(Lcom/miui/weather2/b/t;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/b/t;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/miui/weather2/b/t;)[I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->u:[I

    return-object v0
.end method

.method static synthetic d(Lcom/miui/weather2/b/t;)[Lcom/miui/weather2/b/m;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    return-object v0
.end method

.method static synthetic e()[I
    .locals 1

    sget-object v0, Lcom/miui/weather2/b/t;->X:[I

    return-object v0
.end method

.method private f()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/weather2/b/t;->H:Z

    iput-boolean v1, p0, Lcom/miui/weather2/b/t;->I:Z

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->F:[Landroid/graphics/Matrix;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/miui/weather2/b/t;->L:[Z

    aput-boolean v1, v2, v0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->M:[Z

    aput-boolean v1, v2, v0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->E:[I

    aput v1, v2, v0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x28

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/weather2/b/m;->h()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private h()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/weather2/b/t;->L:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private i()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const v8, 0x3e99999a    # 0.3f

    const/4 v7, 0x2

    const/4 v0, 0x0

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/weather2/b/v;

    invoke-direct {v2, p0}, Lcom/miui/weather2/b/v;-><init>(Lcom/miui/weather2/b/t;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/miui/weather2/b/c;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/miui/weather2/b/t;->s:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/miui/weather2/b/t;->t:I

    int-to-float v4, v4

    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/miui/weather2/b/t;->s:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    iget v5, p0, Lcom/miui/weather2/b/t;->t:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/miui/weather2/b/c;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/miui/weather2/b/t;->s:I

    int-to-float v4, v4

    const v5, 0x3fb33333    # 1.4f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v2, v0

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/miui/weather2/b/t;->s:I

    neg-int v4, v4

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/weather2/b/w;

    invoke-direct {v2, p0}, Lcom/miui/weather2/b/w;-><init>(Lcom/miui/weather2/b/t;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/miui/weather2/b/c;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/miui/weather2/b/t;->s:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/miui/weather2/b/t;->t:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/miui/weather2/b/t;->s:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    iget v5, p0, Lcom/miui/weather2/b/t;->t:I

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Lcom/miui/weather2/b/c;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/miui/weather2/b/t;->s:I

    int-to-float v4, v4

    const v5, 0x3fb33333    # 1.4f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/miui/weather2/b/t;->t:I

    int-to-float v5, v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v2, v0

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/miui/weather2/b/t;->s:I

    neg-int v4, v4

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/miui/weather2/b/t;->t:I

    int-to-float v5, v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/weather2/b/x;

    invoke-direct {v2, p0}, Lcom/miui/weather2/b/x;-><init>(Lcom/miui/weather2/b/t;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/miui/weather2/b/t;->U:[Landroid/animation/ValueAnimator;

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->U:[Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/weather2/b/c;

    iget-object v4, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/miui/weather2/b/m;->d()Landroid/graphics/PointF;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/miui/weather2/b/m;->e()Landroid/graphics/PointF;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/miui/weather2/b/c;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/miui/weather2/b/m;->b()Landroid/graphics/PointF;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/miui/weather2/b/m;->c()Landroid/graphics/PointF;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/miui/weather2/b/t;->U:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/miui/weather2/b/t;->U:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/miui/weather2/b/t;->U:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    new-instance v3, Lcom/miui/weather2/b/y;

    invoke-direct {v3, p0, v1}, Lcom/miui/weather2/b/y;-><init>(Lcom/miui/weather2/b/t;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    add-int/lit8 v2, v0, 0x28

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    add-int/lit8 v2, v0, 0x28

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xf
    .end array-data
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/weather2/b/t;->J:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/weather2/b/t;->J:Z

    iput-boolean v0, p0, Lcom/miui/weather2/b/t;->K:Z

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/b/t;->U:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/t;->U:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/b/t;->O:Z

    iget-object v0, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/b/t;->U:[Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/weather2/b/t;->U:[Landroid/animation/ValueAnimator;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/miui/weather2/b/t;->U:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    iget-object v2, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_5

    iget-object v2, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x28

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/miui/weather2/b/t;->F:[Landroid/graphics/Matrix;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/miui/weather2/b/t;->L:[Z

    aput-boolean v1, v2, v0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->E:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected a(IDZI)V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/b/t;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p4, p5}, Lcom/miui/weather2/tools/bv;->a(IZI)Lcom/miui/weather2/b/a;

    move-result-object v2

    if-nez p4, :cond_1

    sget-object v0, Lcom/miui/weather2/b/d;->e:[Lcom/miui/weather2/b/d;

    sget-object v1, Lcom/miui/weather2/b/d;->e:[Lcom/miui/weather2/b/d;

    array-length v1, v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->a(I)I

    move-result v1

    add-int/2addr v1, p5

    sget-object v3, Lcom/miui/weather2/b/d;->e:[Lcom/miui/weather2/b/d;

    array-length v3, v3

    rem-int/2addr v1, v3

    aget-object v1, v0, v1

    sget-object v0, Lcom/miui/weather2/b/n;->e:[Lcom/miui/weather2/b/n;

    sget-object v3, Lcom/miui/weather2/b/n;->e:[Lcom/miui/weather2/b/n;

    array-length v3, v3

    invoke-static {v3}, Lcom/miui/weather2/tools/bi;->a(I)I

    move-result v3

    add-int/2addr v3, p5

    sget-object v4, Lcom/miui/weather2/b/n;->e:[Lcom/miui/weather2/b/n;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v0, v0, v3

    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lcom/miui/weather2/b/t;->a(Lcom/miui/weather2/b/a;Lcom/miui/weather2/b/d;Lcom/miui/weather2/b/n;)V

    iget-object v0, p0, Lcom/miui/weather2/b/t;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/t;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/weather2/b/t;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/b/t;->invalidateSelf()V

    return-void

    :cond_1
    sget-object v1, Lcom/miui/weather2/b/d;->d:Lcom/miui/weather2/b/d;

    sget-object v0, Lcom/miui/weather2/b/n;->d:Lcom/miui/weather2/b/n;

    iget-object v3, p0, Lcom/miui/weather2/b/t;->p:Landroid/content/res/Resources;

    const v4, 0x7f020043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/weather2/b/t;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/b/t;->O:Z

    iget-object v1, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/t;->U:[Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    add-int/lit8 v2, v0, 0x28

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public d()V
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/miui/weather2/b/b;->d()V

    iget-object v1, p0, Lcom/miui/weather2/b/t;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/t;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v4, p0, Lcom/miui/weather2/b/t;->r:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    iput-object v4, p0, Lcom/miui/weather2/b/t;->R:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v1, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    iput-object v4, p0, Lcom/miui/weather2/b/t;->S:Landroid/animation/ValueAnimator;

    :cond_2
    iget-object v1, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    iput-object v4, p0, Lcom/miui/weather2/b/t;->T:Landroid/animation/ValueAnimator;

    :cond_3
    iget-object v1, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_4

    iget-object v2, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    add-int/lit8 v3, v1, 0x28

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ge v0, v5, :cond_5

    iget-object v1, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iput-object v4, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    :cond_6
    iput-object v4, p0, Lcom/miui/weather2/b/t;->Q:[Landroid/graphics/drawable/BitmapDrawable;

    iput-object v4, p0, Lcom/miui/weather2/b/t;->x:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v4, p0, Lcom/miui/weather2/b/t;->y:[Landroid/graphics/drawable/BitmapDrawable;

    iput-object v4, p0, Lcom/miui/weather2/b/t;->z:Ljava/util/ArrayList;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v3, 0x0

    const/4 v12, 0x4

    const/4 v1, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/miui/weather2/b/b;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/weather2/b/t;->l:F

    iget v2, p0, Lcom/miui/weather2/b/t;->i:F

    sub-float v6, v0, v2

    iget v0, p0, Lcom/miui/weather2/b/t;->n:F

    iget v2, p0, Lcom/miui/weather2/b/t;->j:F

    sub-float v7, v0, v2

    move v0, v5

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/miui/weather2/b/t;->V:Landroid/graphics/PointF;

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/miui/weather2/b/t;->Q:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/miui/weather2/b/t;->u:[I

    aget v4, v4, v0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/weather2/b/t;->W:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/miui/weather2/b/t;->w:[F

    aget v8, v8, v0

    add-float/2addr v4, v8

    iget-object v8, p0, Lcom/miui/weather2/b/t;->W:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/miui/weather2/b/t;->v:[F

    aget v9, v9, v0

    add-float/2addr v8, v9

    invoke-virtual {p1, v2, v4, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/weather2/b/t;->Q:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/miui/weather2/b/t;->u:[I

    aget v4, v4, v0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/weather2/b/t;->V:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/miui/weather2/b/t;->w:[F

    aget v8, v8, v0

    add-float/2addr v4, v8

    iget-object v8, p0, Lcom/miui/weather2/b/t;->V:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/miui/weather2/b/t;->v:[F

    aget v9, v9, v0

    add-float/2addr v8, v9

    invoke-virtual {p1, v2, v4, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/b/t;->x:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/miui/weather2/b/t;->A:F

    add-float/2addr v2, v6

    iget v4, p0, Lcom/miui/weather2/b/t;->B:F

    add-float/2addr v4, v7

    invoke-virtual {p1, v0, v2, v4, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v2, v5

    :goto_2
    if-ge v2, v12, :cond_7

    iget-object v0, p0, Lcom/miui/weather2/b/t;->y:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/weather2/b/t;->M:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/b/t;->E:[I

    aget v0, v0, v2

    sget-object v8, Lcom/miui/weather2/b/t;->Y:[I

    aget v8, v8, v2

    neg-int v8, v8

    if-gt v0, v8, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/b/t;->L:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/miui/weather2/b/t;->j()V

    iget-object v0, p0, Lcom/miui/weather2/b/t;->L:[Z

    aput-boolean v1, v0, v2

    add-int/lit8 v0, v2, 0x28

    const/16 v8, 0x5dc

    invoke-direct {p0, v0, v8}, Lcom/miui/weather2/b/t;->a(II)V

    :goto_3
    iget-object v0, p0, Lcom/miui/weather2/b/t;->M:[Z

    aput-boolean v5, v0, v2

    :cond_3
    iget v0, p0, Lcom/miui/weather2/b/t;->A:F

    iget-object v8, p0, Lcom/miui/weather2/b/t;->D:[F

    aget v8, v8, v2

    add-float/2addr v0, v8

    add-float/2addr v0, v6

    iget v8, p0, Lcom/miui/weather2/b/t;->B:F

    iget-object v9, p0, Lcom/miui/weather2/b/t;->C:[F

    aget v9, v9, v2

    add-float/2addr v8, v9

    add-float/2addr v8, v7

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/weather2/b/t;->F:[Landroid/graphics/Matrix;

    aget-object v0, v0, v2

    invoke-virtual {p1, v4, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/weather2/b/t;->A:F

    iget-object v4, p0, Lcom/miui/weather2/b/t;->D:[F

    aget v4, v4, v2

    add-float/2addr v0, v4

    add-float/2addr v0, v6

    neg-float v0, v0

    iget v4, p0, Lcom/miui/weather2/b/t;->B:F

    iget-object v8, p0, Lcom/miui/weather2/b/t;->C:[F

    aget v8, v8, v2

    add-float/2addr v4, v8

    add-float/2addr v4, v7

    neg-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/b/t;->E:[I

    aget v0, v0, v2

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/b/t;->L:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/b/t;->L:[Z

    aput-boolean v5, v0, v2

    iget-object v0, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    add-int/lit8 v8, v2, 0x28

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/miui/weather2/b/t;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/weather2/b/t;->H:Z

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/miui/weather2/b/t;->L:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iget-object v8, p0, Lcom/miui/weather2/b/t;->E:[I

    aget v9, v8, v2

    add-int/2addr v9, v0

    aput v9, v8, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v8, p0, Lcom/miui/weather2/b/t;->F:[Landroid/graphics/Matrix;

    aget-object v8, v8, v2

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v0, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_3

    :cond_6
    const/4 v0, -0x1

    goto :goto_4

    :pswitch_1
    iget-object v8, p0, Lcom/miui/weather2/b/t;->F:[Landroid/graphics/Matrix;

    aget-object v8, v8, v2

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v0, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/16 :goto_3

    :pswitch_2
    iget-object v8, p0, Lcom/miui/weather2/b/t;->F:[Landroid/graphics/Matrix;

    aget-object v8, v8, v2

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v0, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/16 :goto_3

    :pswitch_3
    iget-object v8, p0, Lcom/miui/weather2/b/t;->F:[Landroid/graphics/Matrix;

    aget-object v8, v8, v2

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v0, v3, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/16 :goto_3

    :cond_7
    iget-boolean v0, p0, Lcom/miui/weather2/b/t;->H:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/weather2/b/t;->I:Z

    if-nez v0, :cond_9

    iput-boolean v1, p0, Lcom/miui/weather2/b/t;->I:Z

    move v0, v5

    :goto_5
    if-ge v0, v12, :cond_8

    iget-object v2, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    add-int/lit8 v4, v0, 0x28

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/miui/weather2/b/t;->ac:Landroid/os/Handler;

    const/16 v2, 0x14

    const-wide/16 v8, 0xbb8

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    move v4, v5

    :goto_6
    if-ge v4, v12, :cond_b

    iget-object v0, p0, Lcom/miui/weather2/b/t;->z:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/miui/weather2/b/m;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/weather2/b/t;->G:[Landroid/graphics/Matrix;

    aget-object v8, v2, v4

    iget-object v2, p0, Lcom/miui/weather2/b/t;->N:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    shr-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    invoke-virtual {v8, v2, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v2, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/miui/weather2/b/m;->f()F

    move-result v2

    add-float/2addr v2, v6

    iget-object v8, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/miui/weather2/b/m;->g()F

    move-result v8

    add-float/2addr v8, v7

    invoke-virtual {p1, v2, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/miui/weather2/b/t;->G:[Landroid/graphics/Matrix;

    aget-object v2, v2, v4

    invoke-virtual {p1, v0, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/miui/weather2/b/m;->f()F

    move-result v0

    add-float/2addr v0, v6

    neg-float v0, v0

    iget-object v2, p0, Lcom/miui/weather2/b/t;->P:[Lcom/miui/weather2/b/m;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/miui/weather2/b/m;->g()F

    move-result v2

    add-float/2addr v2, v7

    neg-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/weather2/b/t;->N:[Z

    aput-boolean v5, v0, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    :cond_a
    move v2, v3

    goto :goto_7

    :cond_b
    invoke-direct {p0}, Lcom/miui/weather2/b/t;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/miui/weather2/b/t;->K:Z

    if-nez v0, :cond_c

    iput-boolean v1, p0, Lcom/miui/weather2/b/t;->K:Z

    iput-boolean v5, p0, Lcom/miui/weather2/b/t;->J:Z

    invoke-direct {p0}, Lcom/miui/weather2/b/t;->k()V

    :cond_c
    iget-object v0, p0, Lcom/miui/weather2/b/t;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/weather2/b/t;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    invoke-virtual {p0}, Lcom/miui/weather2/b/t;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/miui/weather2/b/t;->invalidateSelf()V

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/weather2/b/b;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/t;->s:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/t;->t:I

    iget-object v0, p0, Lcom/miui/weather2/b/t;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/t;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget v0, p0, Lcom/miui/weather2/b/t;->s:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/weather2/b/t;->t:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/b/t;->i()V

    :cond_1
    return-void
.end method
