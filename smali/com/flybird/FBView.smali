.class public Lcom/flybird/FBView;
.super Ljava/lang/Object;
.source "FBView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/alipay/android/app/template/ITemplateDisposable;


# static fields
.field public static final TAG:Ljava/lang/String; = "FBView"


# instance fields
.field private volatile initingCore:I

.field private mBackGroundColor:[Ljava/lang/String;

.field private mBackGroundImage:Ljava/lang/String;

.field private mBorderColor:I

.field private mBorderRadius:F

.field private mBorderRadiusArray:[F

.field private mBorderWidth:F

.field protected volatile mDoc:Lcom/flybird/FBDocument;

.field private mHasBackground:Z

.field protected mHasHeight:Z

.field protected mHasWidth:Z

.field protected mHeight:I

.field private mInnerViewTagId:I

.field private volatile mIsDestroy:Z

.field private mLastTouchDownTime:J

.field protected mNeedHandleClick:Z

.field protected mNeedHandleLongClick:Z

.field public volatile mNode:J

.field protected mOpacity:F

.field private mPadding:[F

.field mParams:Landroid/widget/FrameLayout$LayoutParams;

.field public mTag:Ljava/lang/String;

.field protected mTransformDegree:I

.field protected mTransitionTime:I

.field public mView:Landroid/view/View;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBView;->mBackGroundColor:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/flybird/FBView;->mBorderRadiusArray:[F

    iput v1, p0, Lcom/flybird/FBView;->mWidth:I

    iput v1, p0, Lcom/flybird/FBView;->mHeight:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/flybird/FBView;->mPadding:[F

    iput v2, p0, Lcom/flybird/FBView;->mInnerViewTagId:I

    iput-boolean v1, p0, Lcom/flybird/FBView;->mNeedHandleClick:Z

    iput-boolean v1, p0, Lcom/flybird/FBView;->mNeedHandleLongClick:Z

    iput-boolean v1, p0, Lcom/flybird/FBView;->mHasBackground:Z

    iput-boolean v1, p0, Lcom/flybird/FBView;->mHasWidth:Z

    iput-boolean v1, p0, Lcom/flybird/FBView;->mHasHeight:Z

    iput v2, p0, Lcom/flybird/FBView;->mTransitionTime:I

    iput v2, p0, Lcom/flybird/FBView;->mTransformDegree:I

    iput-boolean v1, p0, Lcom/flybird/FBView;->mIsDestroy:Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/flybird/FBView;->mOpacity:F

    iput-object p3, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    if-nez p2, :cond_0

    new-instance p2, Lcom/flybird/FBFrameLayout;

    invoke-direct {p2, p1}, Lcom/flybird/FBFrameLayout;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/flybird/FBView;->setInnerView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/flybird/FBDocument;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBView;->mBackGroundColor:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/flybird/FBView;->mBorderRadiusArray:[F

    iput v1, p0, Lcom/flybird/FBView;->mWidth:I

    iput v1, p0, Lcom/flybird/FBView;->mHeight:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/flybird/FBView;->mPadding:[F

    iput v2, p0, Lcom/flybird/FBView;->mInnerViewTagId:I

    iput-boolean v1, p0, Lcom/flybird/FBView;->mNeedHandleClick:Z

    iput-boolean v1, p0, Lcom/flybird/FBView;->mNeedHandleLongClick:Z

    iput-boolean v1, p0, Lcom/flybird/FBView;->mHasBackground:Z

    iput-boolean v1, p0, Lcom/flybird/FBView;->mHasWidth:Z

    iput-boolean v1, p0, Lcom/flybird/FBView;->mHasHeight:Z

    iput v2, p0, Lcom/flybird/FBView;->mTransitionTime:I

    iput v2, p0, Lcom/flybird/FBView;->mTransformDegree:I

    iput-boolean v1, p0, Lcom/flybird/FBView;->mIsDestroy:Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/flybird/FBView;->mOpacity:F

    iput-object p1, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    return-void
.end method

.method private applyAttrOverFlow(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v1

    const-string/jumbo v0, "scroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, v1, Lcom/flybird/FBScrollView;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "hidden"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, v1, Lcom/flybird/FBScrollView;

    if-eqz v0, :cond_0

    :cond_2
    instance-of v0, v1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const-string/jumbo v3, "scroll"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_3
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/flybird/FBScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0, v1}, Lcom/flybird/FBScrollView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    move-object v0, v3

    check-cast v0, Lcom/flybird/FBScrollView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flybird/FBTools;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/flybird/FBView;->mHeight:I

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flybird/FBTools;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/flybird/FBView;->mWidth:I

    move-object v2, v3

    :cond_6
    :goto_1
    iput-object v2, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/flybird/FBView;->getFBDocument()Lcom/flybird/FBDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->g()Lcom/alipay/birdnest/api/BirdNestEngine$e;

    move-result-object v0

    const-string/jumbo v1, "alipay_msp_view_wrapper"

    invoke-interface {v0, v1}, Lcom/alipay/birdnest/api/BirdNestEngine$e;->getUniqueResId(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move-object v2, v0

    check-cast v2, Lcom/flybird/FBScrollView;

    invoke-virtual {v2}, Lcom/flybird/FBScrollView;->getContainer()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    check-cast v0, Lcom/flybird/FBScrollView;

    invoke-virtual {v0, v2}, Lcom/flybird/FBScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private applyPadding()V
    .locals 7

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBView;->mPadding:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/flybird/FBView;->mBorderRadius:F

    iget-object v3, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/flybird/FBView;->mPadding:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/flybird/FBView;->mBorderRadius:F

    iget-object v4, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/flybird/FBView;->mPadding:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget v4, p0, Lcom/flybird/FBView;->mBorderRadius:F

    iget-object v5, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/flybird/FBView;->mPadding:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    iget v5, p0, Lcom/flybird/FBView;->mBorderRadius:F

    iget-object v6, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static dispatchOnLongClickEvent(ZZLandroid/view/View;Lcom/flybird/FBView;Landroid/view/View$OnLongClickListener;I)V
    .locals 8

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p3}, Lcom/flybird/FBView;->needHandleLongClick()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/flybird/FBView;->needHandleLongClick(Z)V

    move-object v4, p4

    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_0

    instance-of v0, p2, Lcom/flybird/FBScrollView;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/flybird/FBScrollView;

    invoke-virtual {v0, v6}, Lcom/flybird/FBScrollView;->getFbChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2, p5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/flybird/FBView;

    if-nez v0, :cond_5

    :cond_2
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/flybird/FBView;->needHandleLongClick()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v4, p3

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_5
    :try_start_0
    invoke-virtual {v2, p5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flybird/FBView;

    invoke-virtual {p3}, Lcom/flybird/FBView;->needHandleLongClick()Z

    move-result v0

    invoke-virtual {p3}, Lcom/flybird/FBView;->needHandleClick()Z

    move-result v1

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/flybird/FBView;->dispatchOnLongClickEvent(ZZLandroid/view/View;Lcom/flybird/FBView;Landroid/view/View$OnLongClickListener;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subView.getTag fatal error, tagId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    move-object v4, p4

    goto :goto_0
.end method

.method public static native nativePlatformInvokeCallback(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native nativePlatformOnBlur(J)Z
.end method

.method public static native nativePlatformOnChange(JLjava/lang/String;)I
.end method

.method public static native nativePlatformOnClick(J)Z
.end method

.method public static native nativePlatformOnFocus(J)Z
.end method

.method public static native nativePlatformOnInput(JLjava/lang/String;)I
.end method

.method public static native nativePlatformOnItemClick(JIIJ)Z
.end method

.method public static native nativePlatformOnKeyDown(JI)Z
.end method

.method public static native nativePlatformOnLoadMore(J)Z
.end method

.method public static native nativePlatformOnLongpress(J)Z
.end method

.method public static native nativePlatformOnMouseDown(JII)Z
.end method

.method public static native nativePlatformOnMouseMove(JII)Z
.end method

.method public static native nativePlatformOnMouseUp(JII)Z
.end method

.method public static native nativePlatformOnNativeScheme(JLjava/lang/String;)Z
.end method

.method public static native nativePlatformOnRefresh(J)Z
.end method

.method private setBackground(Z)V
    .locals 15

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBView;->mBackGroundColor:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBView;->mBackGroundColor:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBView;->mBackGroundColor:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget v0, p0, Lcom/flybird/FBView;->mBorderWidth:F

    iget v1, p0, Lcom/flybird/FBView;->mBorderColor:I

    iget v2, p0, Lcom/flybird/FBView;->mBorderRadius:F

    iget-object v3, p0, Lcom/flybird/FBView;->mBorderRadiusArray:[F

    iget-object v4, p0, Lcom/flybird/FBView;->mBackGroundColor:[Ljava/lang/String;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Lcom/flybird/FBTools;->generateBackGroundDrawable(FIF[F[Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/flybird/FBView;->mBackGroundImage:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v2, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/flybird/FBView;->mBackGroundImage:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Lcom/flybird/FBTools;->getLocalDrawable(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->c()Lcom/alipay/birdnest/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->f()Lcom/alipay/birdnest/api/BirdNestEngine$h;

    move-result-object v1

    iget-object v3, p0, Lcom/flybird/FBView;->mBackGroundImage:Ljava/lang/String;

    iget-object v4, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v4, v4, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v4, v4, Lcom/alipay/birdnest/api/BirdNestEngine$g;->m:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/birdnest/a/b;->a(Lcom/alipay/birdnest/api/BirdNestEngine$h;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[IZLandroid/view/View;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v14, v0

    :goto_2
    if-nez v14, :cond_4

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->c()Lcom/alipay/birdnest/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/flybird/FBView;->mBackGroundImage:Ljava/lang/String;

    iget-object v4, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v4, v4, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v4, v4, Lcom/alipay/birdnest/api/BirdNestEngine$g;->m:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/flybird/FBView;->getExtraParams()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual/range {v0 .. v13}, Lcom/alipay/birdnest/a/b;->a(Lcom/alipay/birdnest/api/BirdNestEngine;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;IZLcom/alipay/birdnest/api/c$a;Lcom/alipay/android/app/template/FBResourceClient;Landroid/os/Bundle;)V

    :cond_4
    if-nez v14, :cond_5

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/flybird/FBView;->mBackGroundImage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "FBView"

    const-string/jumbo v2, "setBackground res from resourceClient"

    invoke-static {v1, v2}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flybird/FBView;->mBackGroundImage:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/app/template/FBResourceClient$Type;->DRAWABLE:Lcom/alipay/android/app/template/FBResourceClient$Type;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/template/FBResourceClient;->shouldInterceptResource(Ljava/lang/String;Lcom/alipay/android/app/template/FBResourceClient$Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FBView"

    const-string/jumbo v4, "catch excepiton "

    invoke-static {v3, v4, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_5
    if-eqz v14, :cond_2

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget v0, p0, Lcom/flybird/FBView;->mBorderWidth:F

    iget v1, p0, Lcom/flybird/FBView;->mBorderColor:I

    iget v2, p0, Lcom/flybird/FBView;->mBorderRadius:F

    iget-object v3, p0, Lcom/flybird/FBView;->mBorderRadiusArray:[F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Lcom/flybird/FBTools;->generateBackGroundDrawable(FIF[F[Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    move-object v14, v0

    goto/16 :goto_2
.end method


# virtual methods
.method public addView(Lcom/flybird/FBView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBView;->mIsDestroy:Z

    iget-object v1, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    if-ne p0, v1, :cond_0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/flybird/FBView;->doDestroy()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    if-eq v0, p0, :cond_2

    invoke-virtual {v0}, Lcom/flybird/FBView;->doDestroy()V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {p0}, Lcom/flybird/FBView;->doDestroy()V

    goto :goto_1
.end method

.method public doDestroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iput-object v1, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/flybird/FBView;->mPadding:[F

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/IBorderable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Lcom/flybird/IBorderable;

    invoke-interface {v0}, Lcom/flybird/IBorderable;->destroy()V

    :cond_0
    iput-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iput-object v1, p0, Lcom/flybird/FBView;->mTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/flybird/FBView;->mBackGroundColor:[Ljava/lang/String;

    return-void
.end method

.method public getContextHashCode()I
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getEncryptValue()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected getExtraParams()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFBDocument()Lcom/flybird/FBDocument;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    return-object v0
.end method

.method public getInnerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getNode()J
    .locals 2

    iget-wide v0, p0, Lcom/flybird/FBView;->mNode:J

    return-wide v0
.end method

.method public getOpacity()F
    .locals 1

    iget v0, p0, Lcom/flybird/FBView;->mOpacity:F

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBView;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public hiddenKeyboardService(Z)Z
    .locals 2

    iget-object v1, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/flybird/FBDocument;->hiddenKeyboardService(Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flybird/FBView;->mIsDestroy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needHandleClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBView;->mNeedHandleClick:Z

    return v0
.end method

.method public needHandleLongClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flybird/FBView;->mNeedHandleLongClick:Z

    return-void
.end method

.method public needHandleLongClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBView;->mNeedHandleLongClick:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flybird/FBView;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/flybird/FBView;->initingCore:I

    iget-object v1, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget v1, v1, Lcom/flybird/FBDocument;->mCore:I

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getGlobalClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->setGlobalClick(Z)V

    iget-wide v0, p0, Lcom/flybird/FBView;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBView;->nativePlatformOnClick(J)Z

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Lcom/flybird/FBView$3;

    invoke-direct {v0, p0, p2}, Lcom/flybird/FBView$3;-><init>(Lcom/flybird/FBView;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/flybird/FBView;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v2}, Lcom/flybird/FBDocument;->getGlobalClick()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v2, v1}, Lcom/flybird/FBDocument;->setGlobalClick(Z)V

    invoke-virtual {p0, v1}, Lcom/flybird/FBView;->hiddenKeyboardService(Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/flybird/FBView;->mNode:J

    invoke-static {v0, v1, p2}, Lcom/flybird/FBView;->nativePlatformOnKeyDown(JI)Z

    move-result v0

    const-string/jumbo v1, "FBView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKey nativePlatformOnKeyDown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onLoadFinish()V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/flybird/FBView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flybird/FBView;->setBackground(Z)V

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/FBScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-boolean v0, v0, Lcom/flybird/FBDocument;->mHasInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getBodyView()Lcom/flybird/FBView;

    move-result-object v0

    iget-object v0, v0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/flybird/FBView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/flybird/FBView;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBView;->nativePlatformOnLongpress(J)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/flybird/FBView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v0, p0, Lcom/flybird/FBView;->mNode:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/flybird/FBView;->nativePlatformOnMouseDown(JII)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/flybird/FBView;->mLastTouchDownTime:J

    move v1, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-wide v4, p0, Lcom/flybird/FBView;->mNode:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v6, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v6

    div-float/2addr v2, v6

    float-to-int v2, v2

    invoke-static {v4, v5, v0, v2}, Lcom/flybird/FBView;->nativePlatformOnMouseUp(JII)Z

    move-result v2

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v4, :cond_2

    :goto_2
    iget-object v0, v4, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, v4, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBScrollView;

    invoke-virtual {v0, v3}, Lcom/flybird/FBScrollView;->setScrollable(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/flybird/FBView;->mLastTouchDownTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move v1, v2

    goto/16 :goto_0

    :pswitch_2
    iget-wide v2, p0, Lcom/flybird/FBView;->mNode:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v4, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v4

    div-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v3, v0, v4}, Lcom/flybird/FBView;->nativePlatformOnMouseMove(JII)Z

    move-result v3

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v4, :cond_3

    move v2, v1

    :goto_3
    iget-object v0, v4, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, v4, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBScrollView;

    invoke-virtual {v0, v1}, Lcom/flybird/FBScrollView;->setScrollable(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v1, v3

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChange(I)V
    .locals 0

    return-void
.end method

.method public removeView(Lcom/flybird/FBView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected setInnerView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget v0, p0, Lcom/flybird/FBView;->mInnerViewTagId:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->g()Lcom/alipay/birdnest/api/BirdNestEngine$e;

    move-result-object v0

    const-string/jumbo v1, "alipay_msp_view_wrapper"

    invoke-interface {v0, v1}, Lcom/alipay/birdnest/api/BirdNestEngine$e;->getUniqueResId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flybird/FBView;->mInnerViewTagId:I

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget v1, p0, Lcom/flybird/FBView;->mInnerViewTagId:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setNode(J)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    iput v0, p0, Lcom/flybird/FBView;->initingCore:I

    iput-wide p1, p0, Lcom/flybird/FBView;->mNode:J

    goto :goto_0
.end method

.method public setRect(FFFF)V
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    float-to-int v0, p3

    iput v0, p0, Lcom/flybird/FBView;->mWidth:I

    float-to-int v0, p4

    iput v0, p0, Lcom/flybird/FBView;->mHeight:I

    iget-object v0, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/flybird/FBView;->mWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/flybird/FBView;->mHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v0, p0, Lcom/flybird/FBView;->mTransitionTime:I

    if-lez v0, :cond_2

    new-array v0, v4, [I

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    aput v1, v0, v6

    iget-object v1, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    aput v1, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/flybird/FBView$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBView$1;-><init>(Lcom/flybird/FBView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v1, p0, Lcom/flybird/FBView;->mTransitionTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v4, [I

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    aput v1, v0, v6

    iget-object v1, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    aput v1, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/flybird/FBView$2;

    invoke-direct {v1, p0}, Lcom/flybird/FBView$2;-><init>(Lcom/flybird/FBView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v1, p0, Lcom/flybird/FBView;->mTransitionTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    iget v0, p0, Lcom/flybird/FBView;->mTransformDegree:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/flybird/FBView;->mTransitionTime:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/flybird/FBView;->mTransitionTime:I

    :goto_1
    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    const-string/jumbo v2, "rotation"

    new-array v3, v4, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    iget v4, p0, Lcom/flybird/FBView;->mTransformDegree:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/FBScrollView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_6

    float-to-int v1, p2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    float-to-int v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/flybird/FBView;->mHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v1, Lcom/flybird/FBScrollView;

    invoke-virtual {v1}, Lcom/flybird/FBScrollView;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v2, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/flybird/FBTools;->getTopFromRoot(Lcom/flybird/FBDocument;Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/flybird/FBTools;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    iget v2, v2, Lcom/flybird/FBDocument;->actionBarHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/flybird/FBView;->mHeight:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_4
    iget-boolean v0, p0, Lcom/flybird/FBView;->mNeedHandleClick:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/flybird/FBView;->mNeedHandleLongClick:Z

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Lcom/flybird/FBView;->mHeight:I

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Lcom/flybird/FBScrollView;

    invoke-virtual {v0, v6}, Lcom/flybird/FBScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x15e

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v1, p2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBView;->mTag:Ljava/lang/String;

    return-void
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "fullscreen"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    const-string/jumbo v1, "true"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->setFullscreen(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "disabled"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "disabled"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "scrollTop"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flybird/FBView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-static {p2}, Lcom/flybird/FBTools;->parseUnit(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "alt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const-string/jumbo v0, "background-color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBView;->mBackGroundColor:[Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-direct {p0, v4}, Lcom/flybird/FBView;->setBackground(Z)V

    iput-boolean v4, p0, Lcom/flybird/FBView;->mHasBackground:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "background-color:active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBView;->mBackGroundColor:[Ljava/lang/String;

    aput-object p2, v0, v4

    invoke-direct {p0, v4}, Lcom/flybird/FBView;->setBackground(Z)V

    iput-boolean v4, p0, Lcom/flybird/FBView;->mHasBackground:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "background-image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "url("

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ")"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBView;->mBackGroundImage:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/flybird/FBView;->setBackground(Z)V

    iput-boolean v4, p0, Lcom/flybird/FBView;->mHasBackground:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "background-color:disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flybird/FBView;->mBackGroundColor:[Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-direct {p0, v4}, Lcom/flybird/FBView;->setBackground(Z)V

    iput-boolean v4, p0, Lcom/flybird/FBView;->mHasBackground:Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "border"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_8

    aget-object v4, v3, v0

    const-string/jumbo v2, "#"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "solid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "px"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "PX"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/flybird/FBView;->mBorderWidth:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v2, "PX"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/flybird/FBView;->mBorderWidth:F

    iget-object v4, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/flybird/FBView;->mBorderWidth:F

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "exception"

    invoke-static {v5, v6, v2}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-static {v4}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/flybird/FBView;->mBorderColor:I

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Lcom/flybird/FBView;->mHasBackground:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_9
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/IBorderable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Lcom/flybird/IBorderable;

    iget v1, p0, Lcom/flybird/FBView;->mBorderColor:I

    iget v2, p0, Lcom/flybird/FBView;->mBorderWidth:F

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/flybird/IBorderable;->setBorder(II)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "border-radius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-ne v0, v4, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/flybird/FBView;->mBorderRadius:F

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/IBorderable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Lcom/flybird/IBorderable;

    iget v1, p0, Lcom/flybird/FBView;->mBorderRadius:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/flybird/IBorderable;->setBorderRadius(I)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    :goto_4
    array-length v3, v2

    if-ge v0, v3, :cond_c

    iget-object v3, p0, Lcom/flybird/FBView;->mBorderRadiusArray:[F

    aget-object v4, v2, v0

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/IBorderable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Lcom/flybird/IBorderable;

    iget-object v1, p0, Lcom/flybird/FBView;->mBorderRadiusArray:[F

    invoke-interface {v0, v1}, Lcom/flybird/IBorderable;->setBorderRadiusArray([F)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "visibility-display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_e
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v2, "visible"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_5
    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/flybird/FBView;->onVisibilityChange(I)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v1, "hidden"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_11
    const-string/jumbo v0, "overflow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p2}, Lcom/flybird/FBView;->applyAttrOverFlow(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v0, "opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/flybird/FBView;->mOpacity:F

    iget v0, p0, Lcom/flybird/FBView;->mOpacity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_13
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget v1, p0, Lcom/flybird/FBView;->mOpacity:F

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/i;->a(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/flybird/FBView;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "body"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/flybird/FBView;->mOpacity:F

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/i;->a(Landroid/view/View;F)V

    iget v1, p0, Lcom/flybird/FBView;->mOpacity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v0, "padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/flybird/FBView;->mPadding:[F

    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/flybird/FBView;->mPadding:[F

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v2, v4

    iget-object v1, p0, Lcom/flybird/FBView;->mPadding:[F

    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/flybird/FBView;->mPadding:[F

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v1, v6

    invoke-direct {p0}, Lcom/flybird/FBView;->applyPadding()V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iput-boolean v4, p0, Lcom/flybird/FBView;->mHasWidth:Z

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-boolean v4, p0, Lcom/flybird/FBView;->mHasHeight:Z

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v0, "transition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flybird/FBView;->mTransitionTime:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "FBView"

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v0, "transform"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "rotate\\((\\d+)deg\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flybird/FBView;->mTransformDegree:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "FBView"

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public updateEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v1, v1, Lcom/flybird/FBScrollView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Lcom/flybird/FBScrollView;

    invoke-virtual {v0, v2}, Lcom/flybird/FBScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    const-string/jumbo v1, "onclick"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v3, p0, Lcom/flybird/FBView;->mNeedHandleClick:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "onmousedown"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flybird/FBView;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "div"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "onmouseup"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/flybird/FBView;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "div"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "onmousemove"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/flybird/FBView;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "div"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "onkeydown"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "onlongpress"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-boolean v3, p0, Lcom/flybird/FBView;->mNeedHandleLongClick:Z

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "onfocus"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "onblur"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_8
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_0
.end method

.method public updateFunc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/flybird/FBView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "blur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method
