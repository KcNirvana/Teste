.class public Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;
.super Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
.source "FlyBirdWindowActivityAdapter.java"


# static fields
.field public static final ANIMATION_TYPE_NEXT:I = 0x1

.field public static final ANIMATION_TYPE_PRE:I = 0x0

.field private static final USER_LOGO_WIDTH:I = 0x50


# instance fields
.field private inAnimation:Landroid/view/animation/Animation;

.field private mAccessibilityBitmap:Landroid/graphics/Bitmap;

.field private mAccessibiltyMask:Landroid/widget/ImageView;

.field private mAccessiblityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mBizId:I

.field private mCurrentAnimMode:I

.field private mCurrentContentView:Landroid/view/View;

.field private mIsFinished:Z

.field private mIsSchemePay:Z

.field private mIsShowFullLoadingbefore:Z

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskDialog:Landroid/app/Dialog;

.field private mPreView:Landroid/view/View;

.field private mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

.field private mStartAnimTime:J

.field private maskImageView:Landroid/widget/ImageView;

.field private showStartAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;-><init>()V

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentAnimMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->showStartAnim:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mIsSchemePay:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mIsShowFullLoadingbefore:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mIsFinished:Z

    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessiblityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->inAnimation:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mStartAnimTime:J

    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->maskImageView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibilityBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibiltyMask:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->getDialogEventDesc(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->inAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->removeMaskIfNeed()V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->showStartAnim:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->showStartAnim:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mMaskDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mMaskDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->maskImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->maskImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->showAlipayLogo()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->isFullScreen(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mPreView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mPreView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->removeViewFromMainLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->addViewToMainLayout(Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->addMaskIfNeed()V

    return-void
.end method

.method private addMaskIfNeed()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessiblityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessiblityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibilityBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibilityBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibilityBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibilityBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibilityBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibiltyMask:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibiltyMask:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibilityBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibiltyMask:Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private addViewToMainLayout(Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;I)V
    .locals 6

    const/16 v4, 0xc

    const/4 v3, -0x2

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->isFullScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$8;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$8;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    return-void

    :cond_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->isFullScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->isFullScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isNoBack()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    const/4 v2, 0x2

    const-string/jumbo v3, "FlyBirdWindowActivityAdapter::addViewToMainLayout"

    const-string/jumbo v4, "set flybird_half_screen_bg"

    invoke-static {v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "flybird_half_screen_bg"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private clearFoucsOfCurrentView()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    return-void
.end method

.method private getDialogEventDesc(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$3;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;-><init>(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private handleRestore(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "CallingPid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->init(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method private init(Landroid/content/Intent;)Z
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "CallingPid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    const-string/jumbo v1, "_FWAAINIT"

    invoke-static {v1}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    const-string/jumbo v2, "phonecashiermsp#flybird"

    const-string/jumbo v3, "FlyBirdWindowActivityAdapter.init"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    if-nez v1, :cond_1

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "no biz id(18)"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ex"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/b/d/b;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/b/b;->onWindowLoaded(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initBackground()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->isStartFlybirdActivityFromOutAppFailed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mIsSchemePay:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "flybird_out_trade_bg"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_2
    return-void
.end method

.method private isFullScreen(Landroid/view/View;)Z
    .locals 2

    const-string/jumbo v0, "tag_view_nav"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_0
    return-void
.end method

.method private removeMaskIfNeed()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibiltyMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibiltyMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibiltyMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibilityBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibilityBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessibiltyMask:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method private removeViewFromMainLayout(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "flybird_layout"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private showAlipayLogo()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->isStartFlybirdActivityFromOutAppFailed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mIsSchemePay:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "alipay_msp_logo"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/i;->a(Landroid/app/Activity;)I

    move-result v1

    div-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "alipay_username"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->getShowerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/i;->b(Landroid/app/Activity;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v5

    const/4 v3, 0x1

    aput v1, v2, v3

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;

    invoke-direct {v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;->a([I)V

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->Round:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;)V

    const-string/jumbo v2, ""

    invoke-static {v0, v4, v5, v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/i;->a(Landroid/view/View;Ljava/lang/String;ZLcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addMaskView()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$9;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissDefautLoading()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissLoading()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->getInstance()Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->tryDismissSpecificLoading(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mIsShowFullLoadingbefore:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->dismissDefautLoading()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x4

    const-string/jumbo v1, "msp"

    const-string/jumbo v2, "FlybirdLocalViewActivityAdapter"

    const-string/jumbo v3, "dispose"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->removeMaskIfNeed()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->b()V

    sput v4, Lcom/alipay/android/app/ui/quickpay/util/i;->b:I

    sput v4, Lcom/alipay/android/app/ui/quickpay/util/i;->a:I

    return-void
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mIsFinished:Z

    return-void
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    return-object v0
.end method

.method public getShowerActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public hideContentView()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->dispose()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/c;->b()V

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mIsFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/birdnest/a;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    invoke-interface {v0, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->init(Landroid/content/Intent;)Z

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRestart()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->notifyFpAuthTimeout()V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->notifyFpRegisterTimeout()V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "Action_FlyBirdWindowActivity_OnResume"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "mini_loading_certpay"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->getProgressMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/b;->a(Landroid/app/Activity;ILjava/lang/ref/WeakReference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->removeMaskView()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->notifyFpAuthTimeout()V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->notifyFpRegisterTimeout()V

    return-void
.end method

.method public oncreate(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    const-string/jumbo v0, "_FWAAONCREATE"

    invoke-static {v0}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->handleRestore(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/logic/c/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->showStartAnim:Z

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mIsSchemePay:Z

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mAccessiblityManager:Landroid/view/accessibility/AccessibilityManager;

    goto :goto_0
.end method

.method public openActivity(Landroid/content/Intent;Lcom/alipay/android/app/ui/quickpay/window/a;)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeMaskView()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$10;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$10;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setAnimMode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentAnimMode:I

    return-void
.end method

.method public setOnFormEventLinstener(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public showContentView(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 12

    const-wide/16 v10, 0x1f4

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->initBackground()V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->isFullScreen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "flybird_fullscreen_bg"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-nez p2, :cond_6

    const-string/jumbo v0, "alipay_left_in"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->b(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "alipay_right_out"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->b(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentAnimMode:I

    if-ne v3, v9, :cond_7

    iput v4, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentAnimMode:I

    const-string/jumbo v0, "alipay_left_in"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->b(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "alipay_right_out"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->b(Ljava/lang/String;)I

    move-result v8

    :goto_3
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/logic/c/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "bizSpecific"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v3, "samsungPay"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->showStartAnim:Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "view_title_id"

    const-string/jumbo v4, "id"

    const-string/jumbo v5, "com.alipay.android.app"

    invoke-static {v0, v3, v4, v5}, Lcom/alipay/android/app/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$5;

    invoke-direct {v4, p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$5;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->getShowerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->inAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mCurrentContentView:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/i;->a(Landroid/app/Activity;)I

    move-result v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v6, v6, v0, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->inAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->inAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_2
    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->inAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$6;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;I)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v0, 0x14

    iget-wide v6, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mStartAnimTime:J

    sub-long v6, v4, v6

    cmp-long v3, v6, v10

    if-gez v3, :cond_3

    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mStartAnimTime:J

    sub-long v0, v4, v0

    sub-long v0, v10, v0

    :cond_3
    const-string/jumbo v3, "phonecashiermsp"

    const-string/jumbo v4, "FlyBirdWindowActivityAdapter.showContentView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delayTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move v7, p2

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$7;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;IILandroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mStartAnimTime:J

    return-void

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, "alipay_right_in"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->b(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "alipay_left_out"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->b(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    :cond_7
    move v8, v0

    goto/16 :goto_3
.end method

.method public varargs showDefaultLoading([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/b;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$2;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public varargs showLoading([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mIsShowFullLoadingbefore:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->showDefaultLoading([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->getInstance()Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->tryShowSpecificLoading(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->showDefaultLoading([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mIsShowFullLoadingbefore:Z

    goto :goto_0
.end method

.method public showToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/b;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$4;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateProgressMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
