.class public Lcom/miui/appmanager/widget/AppDetailTitleView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public aRg:Landroid/widget/ImageView;

.field private aRh:Landroid/widget/TextView;

.field private aRi:Landroid/widget/TextView;

.field private aRj:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/appmanager/widget/AppDetailTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/appmanager/widget/AppDetailTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRg:Landroid/widget/ImageView;

    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRh:Landroid/widget/TextView;

    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRi:Landroid/widget/TextView;

    const v0, 0x7f0a00ec

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRj:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bid(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRg:Landroid/widget/ImageView;

    sget-object v1, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {p1, v0, v1}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    return-void
.end method

.method public bie(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRi:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bif(ILcom/miui/appmanager/c;)V
    .locals 9

    const/4 v1, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    add-int v5, p1, v0

    const/4 v0, 0x2

    new-array v6, v0, [I

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRg:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    aget v0, v6, v4

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    aput v0, v6, v4

    aget v0, v6, v4

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget-object v2, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRg:Landroid/widget/ImageView;

    cmpg-float v7, v0, v3

    if-gtz v7, :cond_3

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v0, v7

    float-to-int v0, v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRh:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    add-int v2, p1, v0

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRh:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    aget v0, v6, v4

    if-gez v0, :cond_4

    move v0, v1

    :goto_2
    aput v0, v6, v4

    aget v0, v6, v4

    int-to-float v0, v0

    mul-float/2addr v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v8

    iget-object v7, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRh:Landroid/widget/TextView;

    cmpg-float v0, v2, v3

    if-gtz v0, :cond_5

    move v0, v2

    :goto_3
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setAlpha(F)V

    aget v0, v6, v4

    iget-object v7, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRh:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v5, v7

    if-gt v0, v5, :cond_0

    move v1, v4

    :cond_0
    if-eqz v1, :cond_1

    aget v0, v6, v4

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v2, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRh:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v8

    :cond_1
    invoke-interface {p2, v2, v1}, Lcom/miui/appmanager/c;->ble(FZ)V

    return-void

    :cond_2
    aget v0, v6, v4

    goto :goto_0

    :cond_3
    const/16 v0, 0xff

    goto :goto_1

    :cond_4
    aget v0, v6, v4

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTitleView;->aRh:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
