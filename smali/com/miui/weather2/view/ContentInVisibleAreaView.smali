.class public Lcom/miui/weather2/view/ContentInVisibleAreaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/weather2/view/ContentInVisibleAreaView;->b:F

    iget v3, p0, Lcom/miui/weather2/view/ContentInVisibleAreaView;->a:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getWidth()I

    move-result v4

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/ContentInVisibleAreaView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setLeftBorad(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/ContentInVisibleAreaView;->a:F

    return-void
.end method

.method public setRightBorad(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/ContentInVisibleAreaView;->b:F

    return-void
.end method
