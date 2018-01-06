.class public Lcom/miui/weather2/b/i;
.super Lcom/miui/weather2/b/b;
.source "SourceFile"


# instance fields
.field private r:Landroid/graphics/drawable/BitmapDrawable;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/drawable/BitmapDrawable;

.field private u:Landroid/graphics/Bitmap;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:F

.field private x:F


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/b/b;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/weather2/b/i;->p:Landroid/content/res/Resources;

    const v0, 0x7f0a01f2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/i;->o:F

    const v0, 0x7f0a0132

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/i;->w:F

    const v0, 0x7f0a006a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/i;->x:F

    :cond_0
    iput-object p2, p0, Lcom/miui/weather2/b/i;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Lcom/miui/weather2/b/a;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/b/i;->p:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/miui/weather2/b/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/i;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/b/i;->p:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/miui/weather2/b/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/i;->b:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/miui/weather2/b/i;->p:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/miui/weather2/b/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/i;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/miui/weather2/b/a;->d()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/i;->p:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/miui/weather2/b/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/i;->r:Landroid/graphics/drawable/BitmapDrawable;

    :goto_0
    invoke-virtual {p1}, Lcom/miui/weather2/b/a;->e()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/b/i;->p:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/miui/weather2/b/a;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/b/i;->t:Landroid/graphics/drawable/BitmapDrawable;

    :goto_1
    return-void

    :cond_0
    iput-object v2, p0, Lcom/miui/weather2/b/i;->r:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/miui/weather2/b/i;->t:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(IDZI)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p4, p5}, Lcom/miui/weather2/tools/bv;->a(IZI)Lcom/miui/weather2/b/a;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/miui/weather2/b/i;->a(Lcom/miui/weather2/b/a;)V

    iget-object v0, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/weather2/b/i;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/b/i;->invalidateSelf()V

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/miui/weather2/b/i;->p:Landroid/content/res/Resources;

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/miui/weather2/b/j;

    invoke-direct {v1, p0}, Lcom/miui/weather2/b/j;-><init>(Lcom/miui/weather2/b/i;)V

    iput-object v1, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/miui/weather2/b/b;->d()V

    iget-object v0, p0, Lcom/miui/weather2/b/i;->r:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/i;->r:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/b/i;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/b/i;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/miui/weather2/b/i;->s:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/b/i;->t:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/b/i;->t:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/b/i;->u:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/b/i;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lcom/miui/weather2/b/i;->u:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    iput-object v1, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/miui/weather2/b/i;->r:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/miui/weather2/b/i;->t:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/weather2/b/b;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/b/i;->t:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/i;->t:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/b/i;->u:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/weather2/b/i;->u:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/weather2/b/i;->w:F

    iget v2, p0, Lcom/miui/weather2/b/i;->l:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/miui/weather2/b/i;->i:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/weather2/b/i;->x:F

    iget v3, p0, Lcom/miui/weather2/b/i;->n:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/b/i;->j:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/b/i;->r:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/b/i;->r:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/b/i;->s:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/weather2/b/i;->s:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/weather2/b/i;->w:F

    iget v2, p0, Lcom/miui/weather2/b/i;->l:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/miui/weather2/b/i;->i:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/weather2/b/i;->x:F

    iget v3, p0, Lcom/miui/weather2/b/i;->n:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/b/i;->j:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/weather2/b/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/weather2/b/i;->invalidateSelf()V

    :cond_3
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/weather2/b/b;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/i;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
