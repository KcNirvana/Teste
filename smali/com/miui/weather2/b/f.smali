.class public Lcom/miui/weather2/b/f;
.super Lcom/miui/weather2/b/b;
.source "SourceFile"


# static fields
.field private static final H:[I


# instance fields
.field private A:Z

.field private B:[Landroid/graphics/drawable/BitmapDrawable;

.field private C:[Landroid/graphics/drawable/BitmapDrawable;

.field private D:[Landroid/graphics/drawable/BitmapDrawable;

.field private E:I

.field private F:I

.field private G:[J

.field private I:Landroid/os/Handler;

.field private r:F

.field private s:[F

.field private t:[F

.field private u:[F

.field private v:[F

.field private w:[F

.field private x:[F

.field private y:[Landroid/graphics/Matrix;

.field private z:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/weather2/b/f;->H:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/miui/weather2/b/b;-><init>()V

    iput v2, p0, Lcom/miui/weather2/b/f;->E:I

    iput v2, p0, Lcom/miui/weather2/b/f;->F:I

    new-instance v0, Lcom/miui/weather2/b/g;

    invoke-direct {v0, p0}, Lcom/miui/weather2/b/g;-><init>(Lcom/miui/weather2/b/f;)V

    iput-object v0, p0, Lcom/miui/weather2/b/f;->I:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/b/f;->s:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/b/f;->t:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/b/f;->u:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/b/f;->v:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/b/f;->w:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/b/f;->x:[F

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/miui/weather2/b/f;->G:[J

    iput-object p1, p0, Lcom/miui/weather2/b/f;->p:Landroid/content/res/Resources;

    const v0, 0x7f0a01f2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/f;->o:F

    iget-object v0, p0, Lcom/miui/weather2/b/f;->v:[F

    const v1, 0x7f0a00f9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/b/f;->u:[F

    const v1, 0x7f0a00fa

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/b/f;->x:[F

    const v1, 0x7f0a00f7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/b/f;->w:[F

    const v1, 0x7f0a00f8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/b/f;->t:[F

    const v1, 0x7f0a0077

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/b/f;->s:[F

    const v1, 0x7f0a0078

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/b/f;->v:[F

    const v1, 0x7f0a0101

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/miui/weather2/b/f;->u:[F

    const v1, 0x7f0a0102

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/miui/weather2/b/f;->x:[F

    const v1, 0x7f0a00ff

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/miui/weather2/b/f;->w:[F

    const v1, 0x7f0a0100

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/miui/weather2/b/f;->t:[F

    const v1, 0x7f0a007b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/miui/weather2/b/f;->s:[F

    const v1, 0x7f0a007c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/miui/weather2/b/f;->v:[F

    const v1, 0x7f0a0105

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/miui/weather2/b/f;->u:[F

    const v1, 0x7f0a0106

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/miui/weather2/b/f;->x:[F

    const v1, 0x7f0a0103

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/miui/weather2/b/f;->w:[F

    const v1, 0x7f0a0104

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/miui/weather2/b/f;->t:[F

    const v1, 0x7f0a007d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/miui/weather2/b/f;->s:[F

    const v1, 0x7f0a007e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/miui/weather2/b/f;->v:[F

    const v1, 0x7f0a00fd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/miui/weather2/b/f;->u:[F

    const v1, 0x7f0a00fe

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/miui/weather2/b/f;->x:[F

    const v1, 0x7f0a00fb

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/miui/weather2/b/f;->w:[F

    const v1, 0x7f0a00fc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/miui/weather2/b/f;->t:[F

    const v1, 0x7f0a0079

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/miui/weather2/b/f;->s:[F

    const v1, 0x7f0a007a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    :cond_0
    iput-object p2, p0, Lcom/miui/weather2/b/f;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/b/f;->t:[F

    iget-object v1, p0, Lcom/miui/weather2/b/f;->t:[F

    aget v1, v1, p1

    iget v2, p0, Lcom/miui/weather2/b/f;->E:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/miui/weather2/b/f;->t:[F

    aget v0, v0, p1

    iget v1, p0, Lcom/miui/weather2/b/f;->r:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/f;->t:[F

    aget v1, v0, p1

    iget-object v2, p0, Lcom/miui/weather2/b/f;->B:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/weather2/b/f;->r:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/b/f;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/b/f;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/b/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/b/f;->A:Z

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/b/f;)[J
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/f;->G:[J

    return-object v0
.end method

.method static synthetic c(Lcom/miui/weather2/b/f;)[Z
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/f;->z:[Z

    return-object v0
.end method

.method static synthetic d(Lcom/miui/weather2/b/f;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/f;->I:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()[I
    .locals 1

    sget-object v0, Lcom/miui/weather2/b/f;->H:[I

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/b/f;->A:Z

    iget-object v0, p0, Lcom/miui/weather2/b/f;->I:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/f;->I:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected a(IDZI)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const/4 v8, 0x4

    new-array v0, v8, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/miui/weather2/b/f;->y:[Landroid/graphics/Matrix;

    new-array v0, v8, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/f;->B:[Landroid/graphics/drawable/BitmapDrawable;

    new-array v0, v8, [Z

    iput-object v0, p0, Lcom/miui/weather2/b/f;->z:[Z

    new-array v0, v8, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/f;->C:[Landroid/graphics/drawable/BitmapDrawable;

    new-array v0, v8, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/f;->D:[Landroid/graphics/drawable/BitmapDrawable;

    cmpg-double v0, p2, v4

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/miui/weather2/b/f;->E:I

    cmpg-double v0, p2, v4

    if-gez v0, :cond_2

    :goto_1
    iput v1, p0, Lcom/miui/weather2/b/f;->F:I

    invoke-static {p1, p4, p5}, Lcom/miui/weather2/tools/bv;->a(IZI)Lcom/miui/weather2/b/a;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/b/e;

    invoke-virtual {v0}, Lcom/miui/weather2/b/e;->k()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/weather2/b/e;->i()[I

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/weather2/b/e;->j()[I

    move-result-object v5

    iget-object v1, p0, Lcom/miui/weather2/b/f;->p:Landroid/content/res/Resources;

    invoke-virtual {v0}, Lcom/miui/weather2/b/e;->f()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/miui/weather2/b/f;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/miui/weather2/b/f;->p:Landroid/content/res/Resources;

    invoke-virtual {v0}, Lcom/miui/weather2/b/e;->g()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/miui/weather2/b/f;->b:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/miui/weather2/b/f;->p:Landroid/content/res/Resources;

    invoke-virtual {v0}, Lcom/miui/weather2/b/e;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/f;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    array-length v0, v5

    if-ne v0, v8, :cond_0

    array-length v0, v4

    if-eq v0, v8, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_3
    if-ge v1, v8, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/b/f;->y:[Landroid/graphics/Matrix;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    aput-object v6, v0, v1

    iget-object v6, p0, Lcom/miui/weather2/b/f;->B:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/b/f;->p:Landroid/content/res/Resources;

    aget v7, v3, v1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v6, v1

    iget-object v6, p0, Lcom/miui/weather2/b/f;->C:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/b/f;->p:Landroid/content/res/Resources;

    aget v7, v4, v1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v6, v1

    iget-object v6, p0, Lcom/miui/weather2/b/f;->D:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/b/f;->p:Landroid/content/res/Resources;

    aget v7, v5, v1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v6, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/b/f;->I:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/b/f;->t:[F

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/f;->B:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/b/f;->t:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/miui/weather2/b/f;->s:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/weather2/b/f;->A:Z

    iget-object v0, p0, Lcom/miui/weather2/b/f;->I:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/f;->I:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/miui/weather2/b/b;->d()V

    iput-object v2, p0, Lcom/miui/weather2/b/f;->B:[Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/miui/weather2/b/f;->C:[Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/miui/weather2/b/f;->D:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/b/f;->I:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/f;->I:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v2, p0, Lcom/miui/weather2/b/f;->I:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/miui/weather2/b/b;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/b/f;->D:[Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/f;->C:[Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v2, v3

    :goto_1
    const/4 v0, 0x4

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/b/f;->D:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/weather2/b/f;->y:[Landroid/graphics/Matrix;

    aget-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/weather2/b/f;->z:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/weather2/b/f;->F:I

    int-to-float v0, v0

    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    invoke-virtual {v1, v0, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    if-ge v2, v8, :cond_3

    iget v0, p0, Lcom/miui/weather2/b/f;->l:F

    iget v1, p0, Lcom/miui/weather2/b/f;->i:F

    sub-float/2addr v0, v1

    move v1, v0

    :goto_3
    if-ge v2, v8, :cond_4

    iget v0, p0, Lcom/miui/weather2/b/f;->n:F

    iget v5, p0, Lcom/miui/weather2/b/f;->j:F

    sub-float/2addr v0, v5

    :goto_4
    iget-object v5, p0, Lcom/miui/weather2/b/f;->C:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/weather2/b/f;->v:[F

    aget v6, v6, v2

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/miui/weather2/b/f;->u:[F

    aget v7, v7, v2

    add-float/2addr v7, v0

    invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/miui/weather2/b/f;->x:[F

    aget v5, v5, v2

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/miui/weather2/b/f;->w:[F

    aget v6, v6, v2

    add-float/2addr v6, v0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/miui/weather2/b/f;->y:[Landroid/graphics/Matrix;

    aget-object v5, v5, v2

    invoke-virtual {p1, v4, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/miui/weather2/b/f;->x:[F

    aget v4, v4, v2

    add-float/2addr v1, v4

    neg-float v1, v1

    iget-object v4, p0, Lcom/miui/weather2/b/f;->w:[F

    aget v4, v4, v2

    add-float/2addr v0, v4

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/weather2/b/f;->z:[Z

    aput-boolean v3, v0, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/miui/weather2/b/f;->k:F

    iget v1, p0, Lcom/miui/weather2/b/f;->g:F

    sub-float/2addr v0, v1

    move v1, v0

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/miui/weather2/b/f;->m:F

    iget v5, p0, Lcom/miui/weather2/b/f;->h:F

    sub-float/2addr v0, v5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/miui/weather2/b/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/b/f;->invalidateSelf()V

    goto/16 :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/weather2/b/b;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/b/f;->r:F

    return-void
.end method
