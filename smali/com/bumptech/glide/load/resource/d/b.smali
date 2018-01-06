.class public Lcom/bumptech/glide/load/resource/d/b;
.super Lcom/bumptech/glide/load/resource/b/b;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/d/f$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/d/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Rect;

.field private final c:Lcom/bumptech/glide/load/resource/d/b$a;

.field private final d:Lcom/bumptech/glide/b/a;

.field private final e:Lcom/bumptech/glide/load/resource/d/f;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/b/c;[BLandroid/graphics/Bitmap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/b/a$a;",
            "Lcom/bumptech/glide/load/b/a/c;",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/b/c;",
            "[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/d/b$a;

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/d/b$a;-><init>(Lcom/bumptech/glide/b/c;[BLandroid/content/Context;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/load/b/a/c;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Lcom/bumptech/glide/load/resource/d/b$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/d/b$a;)V
    .locals 6

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/b/b;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->i:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/d/b;->k:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "GifState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    new-instance v0, Lcom/bumptech/glide/b/a;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/d/b$a;->g:Lcom/bumptech/glide/b/a$a;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/b/a;-><init>(Lcom/bumptech/glide/b/a$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->d:Lcom/bumptech/glide/b/a;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->d:Lcom/bumptech/glide/b/a;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/d/b$a;->a:Lcom/bumptech/glide/b/c;

    iget-object v2, p1, Lcom/bumptech/glide/load/resource/d/b$a;->b:[B

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/c;[B)V

    new-instance v0, Lcom/bumptech/glide/load/resource/d/f;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/d/b$a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/b;->d:Lcom/bumptech/glide/b/a;

    iget v4, p1, Lcom/bumptech/glide/load/resource/d/b$a;->e:I

    iget v5, p1, Lcom/bumptech/glide/load/resource/d/b$a;->f:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/d/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/d/f$b;Lcom/bumptech/glide/b/a;II)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->e:Lcom/bumptech/glide/load/resource/d/f;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->e:Lcom/bumptech/glide/load/resource/d/f;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/d/b$a;->d:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/d/f;->a(Lcom/bumptech/glide/load/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/d/b;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/g;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/d/b$a;->a:Lcom/bumptech/glide/b/c;

    iget-object v2, p1, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/d/b$a;->b:[B

    iget-object v3, p1, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/d/b$a;->c:Landroid/content/Context;

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget v5, v4, Lcom/bumptech/glide/load/resource/d/b$a;->e:I

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget v6, v4, Lcom/bumptech/glide/load/resource/d/b$a;->f:I

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v7, v4, Lcom/bumptech/glide/load/resource/d/b$a;->g:Lcom/bumptech/glide/b/a$a;

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v8, v4, Lcom/bumptech/glide/load/resource/d/b$a;->h:Lcom/bumptech/glide/load/b/a/c;

    move-object v4, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/d/b$a;-><init>(Lcom/bumptech/glide/b/c;[BLandroid/content/Context;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/load/b/a/c;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Lcom/bumptech/glide/load/resource/d/b$a;)V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/resource/d/b;->j:I

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->e:Lcom/bumptech/glide/load/resource/d/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/f;->c()V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/b;->invalidateSelf()V

    return-void
.end method

.method private i()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->d:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->c()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/b;->invalidateSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->f:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/d/b;->f:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->e:Lcom/bumptech/glide/load/resource/d/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/f;->a()V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/b;->invalidateSelf()V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->f:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->e:Lcom/bumptech/glide/load/resource/d/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/f;->b()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-gtz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->d:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->e()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/d/b;->k:I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/bumptech/glide/load/resource/d/b;->k:I

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/b$a;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/b;->stop()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/b;->h()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/b;->invalidateSelf()V

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->d:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/bumptech/glide/load/resource/d/b;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/d/b;->j:I

    :cond_2
    iget v0, p0, Lcom/bumptech/glide/load/resource/d/b;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/resource/d/b;->j:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/d/b;->k:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/b;->stop()V

    goto :goto_0
.end method

.method public c()Lcom/bumptech/glide/load/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/b$a;->d:Lcom/bumptech/glide/load/g;

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/b$a;->b:[B

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->l:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/b;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/b;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->l:Z

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->e:Lcom/bumptech/glide/load/resource/d/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/f;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/b$a;->i:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->d:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->c()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->h:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/b$a;->h:Lcom/bumptech/glide/load/b/a/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/d/b$a;->i:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/c;->a(Landroid/graphics/Bitmap;)Z

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->e:Lcom/bumptech/glide/load/resource/d/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/f;->c()V

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->e:Lcom/bumptech/glide/load/resource/d/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/f;->b()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/b$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->c:Lcom/bumptech/glide/load/resource/d/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/b$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->f:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/b/b;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->l:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/d/b;->i:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/b;->j()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/load/resource/b/b;->setVisible(ZZ)Z

    move-result v0

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/b;->i()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->g:Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/b;->g()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/b;->i()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/b;->g:Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/b;->j()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/b;->h()V

    :cond_0
    return-void
.end method
