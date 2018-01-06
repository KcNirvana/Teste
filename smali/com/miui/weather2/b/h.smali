.class public Lcom/miui/weather2/b/h;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/tools/av$a;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/miui/weather2/b/b;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/weather2/b/h;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/b/h;->d:Z

    iput-object p1, p0, Lcom/miui/weather2/b/h;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    invoke-virtual {v0}, Lcom/miui/weather2/b/b;->a()V

    :cond_0
    return-void
.end method

.method public a(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/weather2/b/b;->a(FFF)V

    :cond_0
    return-void
.end method

.method public a(IDZI)V
    .locals 6

    iget v0, p0, Lcom/miui/weather2/b/h;->c:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/weather2/b/h;->d:Z

    if-eq v0, p4, :cond_2

    :cond_0
    iput-boolean p4, p0, Lcom/miui/weather2/b/h;->d:Z

    iput p1, p0, Lcom/miui/weather2/b/h;->c:I

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    invoke-virtual {v0}, Lcom/miui/weather2/b/b;->d()V

    :cond_1
    iget v0, p0, Lcom/miui/weather2/b/h;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/miui/weather2/b/i;

    iget-object v1, p0, Lcom/miui/weather2/b/h;->a:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p0}, Lcom/miui/weather2/b/i;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    iget-boolean v4, p0, Lcom/miui/weather2/b/h;->d:Z

    move v1, p1

    move-wide v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/weather2/b/b;->a(IDZI)V

    invoke-virtual {p0}, Lcom/miui/weather2/b/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/b/h;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/miui/weather2/b/h;->invalidateSelf()V

    :cond_2
    return-void

    :pswitch_0
    new-instance v0, Lcom/miui/weather2/b/t;

    iget-object v1, p0, Lcom/miui/weather2/b/h;->a:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p0}, Lcom/miui/weather2/b/t;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/miui/weather2/b/f;

    iget-object v1, p0, Lcom/miui/weather2/b/h;->a:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p0}, Lcom/miui/weather2/b/f;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    invoke-virtual {v0}, Lcom/miui/weather2/b/b;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    invoke-virtual {v0}, Lcom/miui/weather2/b/b;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/b/b;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/h;->b:Lcom/miui/weather2/b/b;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/b/b;->onBoundsChange(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
