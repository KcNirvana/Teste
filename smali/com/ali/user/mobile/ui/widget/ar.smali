.class public Lcom/ali/user/mobile/ui/widget/ar;
.super Ljava/lang/Object;
.source "WidgetUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public static a(Landroid/content/res/Resources;Landroid/widget/EditText;II)I
    .locals 4

    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_dp_10:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_dp_85:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_dp_10:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v1, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1
.end method

.method public static a(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/ali/user/mobile/ui/widget/ar;->b(Landroid/view/View;Z)V

    new-instance v1, Lcom/ali/user/mobile/ui/widget/as;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/ui/widget/as;-><init>(Landroid/view/View;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method static synthetic a(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ali/user/mobile/ui/widget/ar;->b(Landroid/view/View;Z)V

    return-void
.end method

.method private static b(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_bg_input_focus:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v0}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_bg_input_unfocus:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
