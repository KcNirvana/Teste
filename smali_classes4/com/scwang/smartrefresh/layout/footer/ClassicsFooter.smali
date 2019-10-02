.class public Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;
.super Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
.source "ClassicsFooter.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshFooter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scwang/smartrefresh/layout/internal/InternalClassics<",
        "Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;",
        ">;",
        "Lcom/scwang/smartrefresh/layout/api/RefreshFooter;"
    }
.end annotation


# static fields
.field public static REFRESH_FOOTER_FAILED:Ljava/lang/String;

.field public static REFRESH_FOOTER_FINISH:Ljava/lang/String;

.field public static REFRESH_FOOTER_LOADING:Ljava/lang/String;

.field public static REFRESH_FOOTER_NOTHING:Ljava/lang/String;

.field public static REFRESH_FOOTER_PULLING:Ljava/lang/String;

.field public static REFRESH_FOOTER_REFRESHING:Ljava/lang/String;

.field public static REFRESH_FOOTER_RELEASE:Ljava/lang/String;


# instance fields
.field protected mNoMoreData:Z

.field protected mTextFailed:Ljava/lang/String;

.field protected mTextFinish:Ljava/lang/String;

.field protected mTextLoading:Ljava/lang/String;

.field protected mTextNothing:Ljava/lang/String;

.field protected mTextPulling:Ljava/lang/String;

.field protected mTextRefreshing:Ljava/lang/String;

.field protected mTextRelease:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mNoMoreData:Z

    sget v0, Lcom/scwang/smartrefresh/layout/R$layout;->srl_classics_footer:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_arrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    sget v1, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_progress:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressView:Landroid/widget/ImageView;

    sget v2, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_title:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    sget-object v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrowSize:I

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrowSize:I

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgressSize:I

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgressSize:I

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableSize:I

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableSize:I

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableSize:I

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableSize:I

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlFinishDuration:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mFinishDuration:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mFinishDuration:I

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlClassicsSpinnerStyle:I

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->ordinal:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrow:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const v3, -0x99999a

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrow:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;

    invoke-direct {v2}, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgress:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressView:Landroid/widget/ImageView;

    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgress:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

    invoke-direct {v2}, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextSizeTitle:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextSizeTitle:I

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, p3, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlPrimaryColor:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlPrimaryColor:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-super {p0, v2}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    :cond_5
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlAccentColor:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlAccentColor:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-super {p0, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    :cond_6
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextPulling:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_7

    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextPulling:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    :cond_7
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_PULLING:Ljava/lang/String;

    if-eqz p3, :cond_8

    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_PULLING:Ljava/lang/String;

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    :cond_8
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_pulling:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    :goto_2
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRelease:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_9

    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRelease:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRelease:Ljava/lang/String;

    goto :goto_3

    :cond_9
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_RELEASE:Ljava/lang/String;

    if-eqz p3, :cond_a

    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_RELEASE:Ljava/lang/String;

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRelease:Ljava/lang/String;

    goto :goto_3

    :cond_a
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_release:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRelease:Ljava/lang/String;

    :goto_3
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextLoading:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_b

    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextLoading:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextLoading:Ljava/lang/String;

    goto :goto_4

    :cond_b
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_LOADING:Ljava/lang/String;

    if-eqz p3, :cond_c

    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_LOADING:Ljava/lang/String;

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextLoading:Ljava/lang/String;

    goto :goto_4

    :cond_c
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_loading:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextLoading:Ljava/lang/String;

    :goto_4
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRefreshing:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_d

    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRefreshing:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRefreshing:Ljava/lang/String;

    goto :goto_5

    :cond_d
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_REFRESHING:Ljava/lang/String;

    if-eqz p3, :cond_e

    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_REFRESHING:Ljava/lang/String;

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRefreshing:Ljava/lang/String;

    goto :goto_5

    :cond_e
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_refreshing:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRefreshing:Ljava/lang/String;

    :goto_5
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFinish:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_f

    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFinish:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFinish:Ljava/lang/String;

    goto :goto_6

    :cond_f
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_FINISH:Ljava/lang/String;

    if-eqz p3, :cond_10

    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_FINISH:Ljava/lang/String;

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFinish:Ljava/lang/String;

    goto :goto_6

    :cond_10
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_finish:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFinish:Ljava/lang/String;

    :goto_6
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFailed:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_11

    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFailed:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFailed:Ljava/lang/String;

    goto :goto_7

    :cond_11
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_FAILED:Ljava/lang/String;

    if-eqz p3, :cond_12

    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_FAILED:Ljava/lang/String;

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFailed:Ljava/lang/String;

    goto :goto_7

    :cond_12
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFailed:Ljava/lang/String;

    :goto_7
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextNothing:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_13

    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextNothing:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextNothing:Ljava/lang/String;

    goto :goto_8

    :cond_13
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_NOTHING:Ljava/lang/String;

    if-eqz p3, :cond_14

    sget-object p1, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->REFRESH_FOOTER_NOTHING:Ljava/lang/String;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextNothing:Ljava/lang/String;

    goto :goto_8

    :cond_14
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_nothing:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextNothing:Ljava/lang/String;

    :goto_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextLoading:Ljava/lang/String;

    goto :goto_9

    :cond_15
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    :goto_9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_16

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_16
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mNoMoreData:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFinish:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextFailed:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 1
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mNoMoreData:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 1
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mNoMoreData:Z

    if-nez p2, :cond_0

    sget-object p2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/16 p3, 0x8

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRefreshing:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextRelease:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextLoading:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :pswitch_4
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setNoMoreData(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mNoMoreData:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mNoMoreData:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mArrowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextNothing:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mTextPulling:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
