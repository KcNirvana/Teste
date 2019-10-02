.class public Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;
.super Landroid/widget/FrameLayout;
.source "SubtitleView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/subtitle/interfaces/ISubtitleTextListener;


# static fields
.field public static final BODY_DIVIDE_EDGE:I = 0x3c

.field public static final BODY_DIVIDE_SHADOW_X:I = 0x1e

.field public static final BODY_DIVIDE_SHADOW_Y:I = 0xf

.field private static final HIDE_OFFSET_VIEW:I = 0x0

.field public static final SHADOW_ALPHA_PERCENT:F = 0.7f

.field public static final SHADOW_COLOR:I = -0x4ce2d7c0

.field public static final SHADOW_RADIUS:I = 0x2

.field private static final SHOW_OFFSET_VIEW:I = 0x1

.field public static final SUBTITLE_VIEW_TYPE_NONE:I = 0x0

.field public static final SUBTITLE_VIEW_TYPE_TEXT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SubtitleView"


# instance fields
.field private isPaddingMode:Z

.field private mBodyColor:I

.field private mBottom:I

.field private mClearTextRunnable:Ljava/lang/Runnable;

.field private mConfigChanged:Z

.field private mEdgeColor:I

.field private mHandler:Landroid/os/Handler;

.field private mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mLeft:I

.field private mMillionSecond:I

.field mOffsetHide:Ljava/lang/Runnable;

.field mOffsetShow:Ljava/lang/Runnable;

.field private mRight:I

.field private mShadowColor:I

.field private mSize:F

.field private mSubtitleAlpha:I

.field private mSubtitleType:I

.field private mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

.field private mTop:I

.field private mVideoView:Lcom/miui/video/player/service/media/IVideoView;

.field private vOffsetToast:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mLeft:I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTop:I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mRight:I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mBottom:I

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mConfigChanged:Z

    const v0, 0xffffff

    iput v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mBodyColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mEdgeColor:I

    const v0, -0x4ce2d7c0

    iput v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mShadowColor:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSubtitleAlpha:I

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->isPaddingMode:Z

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSubtitleType:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mVideoView:Lcom/miui/video/player/service/media/IVideoView;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$1;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mClearTextRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$2;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mOffsetShow:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$3;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$3;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mOffsetHide:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$4;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mLeft:I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTop:I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mRight:I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mBottom:I

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mConfigChanged:Z

    const p2, 0xffffff

    iput p2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mBodyColor:I

    const/high16 p2, -0x1000000

    iput p2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mEdgeColor:I

    const p2, -0x4ce2d7c0

    iput p2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mShadowColor:I

    const/16 p2, 0xff

    iput p2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSubtitleAlpha:I

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->isPaddingMode:Z

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSubtitleType:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mVideoView:Lcom/miui/video/player/service/media/IVideoView;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$1;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mClearTextRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$2;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mOffsetShow:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$3;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$3;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mOffsetHide:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$4;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mLeft:I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTop:I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mRight:I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mBottom:I

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mConfigChanged:Z

    const p2, 0xffffff

    iput p2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mBodyColor:I

    const/high16 p2, -0x1000000

    iput p2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mEdgeColor:I

    const p2, -0x4ce2d7c0

    iput p2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mShadowColor:I

    const/16 p2, 0xff

    iput p2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSubtitleAlpha:I

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->isPaddingMode:Z

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSubtitleType:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mVideoView:Lcom/miui/video/player/service/media/IVideoView;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$1;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mClearTextRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$2;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mOffsetShow:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$3;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$3;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mOffsetHide:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$4;-><init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->vOffsetToast:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mMillionSecond:I

    return p0
.end method

.method private createOffsetChangeTipView()V
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->vOffsetToast:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->vOffsetToast:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->vOffsetToast:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$dimen;->dp_12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->vOffsetToast:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$color;->c_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->vOffsetToast:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private init()V
    .locals 5

    const-string v0, "SubtitleView"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->SMALL:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    invoke-static {v0}, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil;->getSubtitleTextSize(Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;)F

    move-result v0

    iput v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSize:F

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    new-instance v0, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    iget-object v2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$dimen;->dp_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mBottom:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    iget v1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mLeft:I

    iget v2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTop:I

    iget v3, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mRight:I

    iget v4, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    iget v1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSize:F

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setTextSize(F)V

    iget v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mEdgeColor:I

    iget v1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mBodyColor:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->setSubtitleTextColor(II)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->createOffsetChangeTipView()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->updateShadow()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->vOffsetToast:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private onSubText(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->show(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->setSubtitleText(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->show(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mClearTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mClearTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private updateEdge()V
    .locals 3

    const-string v0, "SubtitleView"

    const-string v1, "updateEdge"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    iget v1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSize:F

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mEdgeColor:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setStroke(FI)V

    return-void
.end method

.method private updateShadow()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->clearOuterShadows()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    iget v1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSize:F

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSize:F

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mShadowColor:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->addOuterShadow(FFFI)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "SubtitleView"

    const-string v1, "clear ++++++++++++++++++++++++++ "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->show(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mConfigChanged:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mConfigChanged:Z

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mConfigChanged:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mVideoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mVideoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v1}, Lcom/miui/video/player/service/media/IVideoView;->getVideoHeight()I

    move-result v1

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getDefaultSize(II)I

    move-result v2

    invoke-static {v1, p2}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getDefaultSize(II)I

    move-result v3

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    mul-int v4, v0, v3

    mul-int v5, v2, v1

    if-le v4, v5, :cond_0

    const-string v1, "SubtitleView"

    const-string v3, "image too tall, correcting"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    div-int v3, v5, v0

    goto :goto_0

    :cond_0
    if-ge v4, v5, :cond_1

    const-string v0, "SubtitleView"

    const-string v2, "image too wide, correcting"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    div-int v2, v4, v1

    :cond_1
    :goto_0
    const-string v0, "SubtitleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->measureChildren(II)V

    invoke-virtual {p0, v2, v3}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method public onSubtitleData(Lcom/miui/video/galleryplus/subtitle/SubtitleData;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/subtitle/SubtitleData;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/subtitle/SubtitleData;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->onSubText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->show(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitlePadding(I)V
    .locals 3

    const-string v0, "SubtitleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubtitlePadding padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSubtitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitleTextAlpha(I)V
    .locals 3

    const-string v0, "SubtitleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubtitleTextAlpha alpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSubtitleAlpha:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSubtitleAlpha:I

    int-to-float p1, p1

    const v0, 0x3f333333    # 0.7f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mShadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mShadowColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mShadowColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mShadowColor:I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->updateShadow()V

    return-void
.end method

.method public setSubtitleTextColor(II)V
    .locals 4

    const-string v0, "SubtitleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubtitleTextColor bodyColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " edgeColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mBodyColor:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    iget v1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSubtitleAlpha:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setTextColor(I)V

    iput p2, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mEdgeColor:I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->updateEdge()V

    return-void
.end method

.method public setSubtitleTextSize(F)V
    .locals 3

    const-string v0, "SubtitleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubtitleTextSize size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSize:F

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget-object v1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setTextSize(F)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->updateEdge()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->updateShadow()V

    return-void
.end method

.method public setSubtitleTextTypefacePath(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setVideoView(Lcom/miui/video/player/service/media/IVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mVideoView:Lcom/miui/video/player/service/media/IVideoView;

    return-void
.end method

.method public show(I)V
    .locals 1

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSubtitleType:I

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->isPaddingMode:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showOffsetToast(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mMillionSecond:I

    iget-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mOffsetShow:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mOffsetShow:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/miui/video/galleryplus/subtitle/JobRunner;->removeJob(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mOffsetShow:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/miui/video/galleryplus/subtitle/JobRunner;->postJob(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startSettingStyleMode()V
    .locals 3

    const-string v0, "SubtitleView"

    const-string v1, "startPaddingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->isPaddingMode:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->isPaddingMode:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$string;->subtitle_padding_default_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public stopSettingStyleMode()V
    .locals 2

    const-string v0, "SubtitleView"

    const-string v1, "stopPaddingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->isPaddingMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->isPaddingMode:Z

    iget v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mSubtitleType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mTextBody:Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/subtitle/view/MagicTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
