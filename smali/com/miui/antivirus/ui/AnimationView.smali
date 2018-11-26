.class public Lcom/miui/antivirus/ui/AnimationView;
.super Landroid/view/View;
.source ""


# static fields
.field private static final synthetic aqz:[I


# instance fields
.field private aqu:Lcom/miui/antivirus/ui/AnimationView$AnimStatus;

.field private aqv:I

.field private aqw:F

.field private aqx:Landroid/graphics/Bitmap;

.field private aqy:Landroid/graphics/Bitmap;

.field private mHighLightPaint:Landroid/graphics/Paint;


# direct methods
.method private awv(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/antivirus/ui/AnimationView;->mHighLightPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/antivirus/ui/AnimationView;->aqv:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AnimationView;->aqx:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/antivirus/ui/AnimationView;->aqw:F

    iget-object v3, p0, Lcom/miui/antivirus/ui/AnimationView;->aqx:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/antivirus/ui/AnimationView;->mHighLightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private aww(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/antivirus/ui/AnimationView;->mHighLightPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/antivirus/ui/AnimationView;->aqv:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AnimationView;->aqy:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/antivirus/ui/AnimationView;->aqw:F

    iget-object v3, p0, Lcom/miui/antivirus/ui/AnimationView;->mHighLightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static synthetic awx()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/ui/AnimationView;->aqz:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/ui/AnimationView;->aqz:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/ui/AnimationView$AnimStatus;->values()[Lcom/miui/antivirus/ui/AnimationView$AnimStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/ui/AnimationView$AnimStatus;->aqB:Lcom/miui/antivirus/ui/AnimationView$AnimStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/AnimationView$AnimStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/ui/AnimationView$AnimStatus;->aqC:Lcom/miui/antivirus/ui/AnimationView$AnimStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/AnimationView$AnimStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/miui/antivirus/ui/AnimationView;->aqz:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getHighLightAlpha()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/ui/AnimationView;->aqv:I

    return v0
.end method

.method public getHighLightViewTop()F
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/ui/AnimationView;->aqw:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-static {}, Lcom/miui/antivirus/ui/AnimationView;->awx()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/AnimationView;->aqu:Lcom/miui/antivirus/ui/AnimationView$AnimStatus;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/AnimationView$AnimStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/AnimationView;->aww(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/AnimationView;->awv(Landroid/graphics/Canvas;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHighLightAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/ui/AnimationView;->aqv:I

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/AnimationView;->invalidate()V

    return-void
.end method

.method public setHighLightViewTop(F)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/ui/AnimationView;->aqw:F

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/AnimationView;->invalidate()V

    return-void
.end method
