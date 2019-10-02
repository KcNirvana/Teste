.class public Lcom/miui/video/common/library/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final APPBAR_STATE_COLLAPSED:I = 0x0

.field public static final APPBAR_STATE_EXPANDED:I = 0x1

.field public static final APPBAR_STATE_INTERNEDIATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field private static final c:[I

.field private static final d:[I

.field private static final n:[I

.field private static final p:[I

.field private static final s:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    sput-object v1, Lcom/miui/video/common/library/utils/ViewUtils;->d:[I

    new-array v1, v0, [I

    const v3, 0x10100a1

    aput v3, v1, v2

    sput-object v1, Lcom/miui/video/common/library/utils/ViewUtils;->s:[I

    new-array v1, v0, [I

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/miui/video/common/library/utils/ViewUtils;->c:[I

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/miui/video/common/library/utils/ViewUtils;->p:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/miui/video/common/library/utils/ViewUtils;->n:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppBarLayoutState(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    if-lt p1, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static getLinearLayoutParams(Landroid/content/Context;IFFIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v0

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    int-to-float v0, p1

    div-float/2addr v0, p2

    mul-float p3, p3, v0

    float-to-int p2, p3

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p4, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput p5, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput p6, p0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput p7, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_1
    return-object p0
.end method

.method public static getViewHeight(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static getViewWidth(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :cond_1
    return v1
.end method

.method private static parseColor(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static setBackgroundResetPadding(Landroid/content/Context;Landroid/view/View;II)Landroid/view/View;
    .locals 4

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    if-lez p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static setStateBackgroundColor(Landroid/view/View;IIIII)V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p5, :cond_0

    sget-object v1, Lcom/miui/video/common/library/utils/ViewUtils;->d:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p4, :cond_1

    sget-object p5, Lcom/miui/video/common/library/utils/ViewUtils;->s:[I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    sget-object p4, Lcom/miui/video/common/library/utils/ViewUtils;->c:[I

    new-instance p5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p5, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p4, p5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p2, :cond_3

    sget-object p3, Lcom/miui/video/common/library/utils/ViewUtils;->p:[I

    new-instance p4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p4, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz p1, :cond_4

    sget-object p2, Lcom/miui/video/common/library/utils/ViewUtils;->n:[I

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_16_JELLY_BEAN()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static setStateBackgroundColor(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p2}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p2}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/video/common/library/utils/ViewUtils;->setStateBackgroundColor(Landroid/view/View;IIIII)V

    return-void
.end method

.method public static setStateBackgroundColor(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p3}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {p4}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-static {p5}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result p5

    invoke-static/range {p0 .. p5}, Lcom/miui/video/common/library/utils/ViewUtils;->setStateBackgroundColor(Landroid/view/View;IIIII)V

    return-void
.end method

.method public static setStateImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/video/common/library/utils/ViewUtils;->setStateImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setStateImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p5, :cond_0

    sget-object v1, Lcom/miui/video/common/library/utils/ViewUtils;->d:[I

    invoke-virtual {v0, v1, p5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p4, :cond_1

    sget-object p5, Lcom/miui/video/common/library/utils/ViewUtils;->s:[I

    invoke-virtual {v0, p5, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    sget-object p4, Lcom/miui/video/common/library/utils/ViewUtils;->c:[I

    invoke-virtual {v0, p4, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p2, :cond_3

    sget-object p3, Lcom/miui/video/common/library/utils/ViewUtils;->p:[I

    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz p1, :cond_4

    sget-object p2, Lcom/miui/video/common/library/utils/ViewUtils;->n:[I

    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setStateTextColor(Landroid/widget/TextView;IIIII)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    if-eqz p2, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    if-eqz p1, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    :try_start_0
    new-array v3, v2, [[I

    new-array v2, v2, [I

    if-eqz p5, :cond_5

    sget-object v4, Lcom/miui/video/common/library/utils/ViewUtils;->d:[I

    aput-object v4, v3, v0

    aput p5, v2, v0

    const/4 v0, 0x1

    :cond_5
    if-eqz p4, :cond_6

    sget-object p5, Lcom/miui/video/common/library/utils/ViewUtils;->s:[I

    aput-object p5, v3, v0

    add-int/lit8 p5, v0, 0x1

    aput p4, v2, v0

    goto :goto_1

    :cond_6
    move p5, v0

    :goto_1
    if-eqz p3, :cond_7

    sget-object p4, Lcom/miui/video/common/library/utils/ViewUtils;->c:[I

    aput-object p4, v3, p5

    add-int/lit8 p4, p5, 0x1

    aput p3, v2, p5

    goto :goto_2

    :cond_7
    move p4, p5

    :goto_2
    if-eqz p2, :cond_8

    sget-object p3, Lcom/miui/video/common/library/utils/ViewUtils;->p:[I

    aput-object p3, v3, p4

    add-int/lit8 p3, p4, 0x1

    aput p2, v2, p4

    goto :goto_3

    :cond_8
    move p3, p4

    :goto_3
    if-eqz p1, :cond_9

    sget-object p2, Lcom/miui/video/common/library/utils/ViewUtils;->n:[I

    aput-object p2, v3, p3

    aput p1, v2, p3

    :cond_9
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string p1, "ViewUtils"

    invoke-static {p1, p0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public static setStateTextColor(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p2}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p2}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/video/common/library/utils/ViewUtils;->setStateTextColor(Landroid/widget/TextView;IIIII)V

    return-void
.end method

.method public static setStateTextColor(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p3}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {p4}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-static {p5}, Lcom/miui/video/common/library/utils/ViewUtils;->parseColor(Ljava/lang/String;)I

    move-result p5

    invoke-static/range {p0 .. p5}, Lcom/miui/video/common/library/utils/ViewUtils;->setStateTextColor(Landroid/widget/TextView;IIIII)V

    return-void
.end method
