.class public Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;
.super Landroid/widget/LinearLayout;
.source "SearchCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_CLICK_INTERVAL:I = 0x3e8

.field private static TAG:Ljava/lang/String;


# instance fields
.field private SEARCHABLE_ACTIVITY:Landroid/content/ComponentName;

.field private mActionSearch:Landroid/widget/LinearLayout;

.field private mBuilder:Lmiui/app/AlertDialog$Builder;

.field private mChangeHeaderBtn:Landroid/widget/TextView;

.field private mClearHeaderBtn:Landroid/widget/TextView;

.field private mClickTimes:[J

.field private mContext:Landroid/content/Context;

.field private mDateContent:Landroid/widget/TextView;

.field private mDateTitle:Landroid/widget/TextView;

.field private mDecs:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasBackground:Z

.field private mHeaderBitmap:Landroid/graphics/Bitmap;

.field private mHeaderDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeaderHeight:I

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mHeaderMarginBottom:I

.field private mHeaderMarginTop:I

.field private mHeaderPaddingAddition:I

.field private mHeaderPaddingBottom:I

.field private mHeaderPaddingLeft:I

.field private mIsChinese:Z

.field private mIsStatusBarDark:Z

.field private mPickDialog:Lmiui/app/AlertDialog;

.field private mResultReceiver:Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;

.field private mSearchViewMargin:I

.field private mSearchViewPaddingBottom:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SearchCardView"

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.miui.home"

    const-string/jumbo v2, "com.miui.home.launcher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->SEARCHABLE_ACTIVITY:Landroid/content/ComponentName;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mResultReceiver:Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mClickTimes:[J

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHasBackground:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->startPickFromGallery()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mPickDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setHeaderWithBackground()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mIsStatusBarDark:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setHeaderWithTransparent(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->SEARCHABLE_ACTIVITY:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->startCropPhoto(Landroid/net/Uri;)V

    return-void
.end method

.method private getBitmapColorModeSafely(Landroid/graphics/Bitmap;)I
    .locals 3

    const/4 v1, 0x3

    :try_start_0
    invoke-static {p1, v1}, Lmiui/graphics/BitmapFactory;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private recycleHeaderBackgroundBitmap(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private setHeaderContentDark()V
    .locals 3

    const v2, 0x1b0f004d

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mDateTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mDateContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setHeaderContentLight()V
    .locals 3

    const v2, 0x1b0f004e

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mDateTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mDateContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setHeaderWithBackground()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0c01ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mSearchViewPaddingBottom:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mSearchViewPaddingBottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/Device;->getDisplayWidth(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0c004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderHeight:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderMarginTop:I

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/StatusBarUtil;->isNotch()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderMarginTop:I

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0c01e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderMarginBottom:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0c01e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderPaddingLeft:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0c01e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderPaddingAddition:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderMarginTop:I

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderMarginBottom:I

    invoke-virtual {v0, v6, v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->recycleHeaderBackgroundBitmap(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderPaddingLeft:I

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderPaddingAddition:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getBitmapColorModeSafely(Landroid/graphics/Bitmap;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setHeaderContentLight()V

    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHasBackground:Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setHeaderContentDark()V

    goto :goto_0
.end method

.method private setHeaderWithTransparent(Z)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c01ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mSearchViewPaddingBottom:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mSearchViewPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c01e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderHeight:I

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/StatusBarUtil;->isNotch()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderHeight:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/StatusBarUtil;->getNotchTopMagin(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderHeight:I

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c01e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderPaddingLeft:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c01e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderPaddingBottom:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->recycleHeaderBackgroundBitmap(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderPaddingLeft:I

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderPaddingBottom:I

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setHeaderContentDark()V

    :goto_0
    iput-boolean v5, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHasBackground:Z

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setHeaderContentLight()V

    goto :goto_0
.end method

.method private showSelectDialog()V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mPickDialog:Lmiui/app/AlertDialog;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/AssistantApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mBuilder:Lmiui/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mPickDialog:Lmiui/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mPickDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1b040075

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v0, 0x1b0901f0    # 1.1333E-22f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mClearHeaderBtn:Landroid/widget/TextView;

    const v0, 0x1b0901f1

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mChangeHeaderBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mClearHeaderBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$4;-><init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mChangeHeaderBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$5;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$5;-><init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mPickDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mClearHeaderBtn:Landroid/widget/TextView;

    const v1, 0x1b0b0372

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHasBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mClearHeaderBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mChangeHeaderBtn:Landroid/widget/TextView;

    const v1, 0x1b0b0371

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mPickDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$6;-><init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v0, v4, v5}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_button_click_top_picture_setting"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move v3, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void

    :catch_0
    move-exception v9

    sget-object v0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mPickDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mClearHeaderBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mChangeHeaderBtn:Landroid/widget/TextView;

    const v1, 0x1b0b036d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private startCropPhoto(Landroid/net/Uri;)V
    .locals 7

    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/PhotoPickUtils;->generateTempCroppedPhotoUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v0}, Lcom/miui/home/launcher/assistant/util/PhotoPickUtils;->getPhotoCropIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v3

    const/16 v4, 0x2712

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mResultReceiver:Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startPickFromGallery()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/assistant/util/PhotoPickUtils;->getPhotoPickIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v2

    const/16 v3, 0x2711

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mResultReceiver:Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;Lcom/miui/home/launcher/assistant/ui/AssistHolderController$ActivityResultReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dismissPickDialog()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mPickDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mPickDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mPickDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getHeaderLayoutHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    sget-object v3, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onClick view = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v6, 0x1b0901c6

    if-ne v3, v6, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.calendar"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v6, 0x1b090183

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mClickTimes:[J

    array-length v1, v3

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mClickTimes:[J

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mClickTimes:[J

    add-int/lit8 v8, v1, -0x1

    invoke-static {v3, v6, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mClickTimes:[J

    add-int/lit8 v6, v1, -0x1

    aput-wide v4, v3, v6

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mClickTimes:[J

    aget-wide v6, v3, v9

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    cmp-long v3, v6, v8

    if-gtz v3, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->showSelectDialog()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v6, 0x1b0901c8

    if-ne v3, v6, :cond_0

    sget-object v3, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "action_search_text mHandler="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x3ea

    iput v3, v2, Landroid/os/Message;->what:I

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mSearchViewMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "search_click"

    invoke-static {v3, v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackSingleEvent(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Landroid/view/View;->playSoundEffect(I)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v3

    new-instance v6, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$2;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0c01e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mSearchViewMargin:I

    const-string/jumbo v0, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mIsChinese:Z

    const v0, 0x1b0901c6

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mDateTitle:Landroid/widget/TextView;

    const v0, 0x1b0901c7

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mDateContent:Landroid/widget/TextView;

    const v0, 0x1b0901c8

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mActionSearch:Landroid/widget/LinearLayout;

    const v0, 0x1b090183

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mActionSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mActionSearch:Landroid/widget/LinearLayout;

    const v1, 0x1b0200e6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public onLeaveMinus()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->dismissPickDialog()V

    return-void
.end method

.method public refreshHeaderView(Z)V
    .locals 8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/PhotoPickUtils;->isCroppedTempPhotoExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHasBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_button_click_top_picture_change_success"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move v3, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_button_click_top_picture_add_success"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move v3, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mIsStatusBarDark:Z

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setHeaderWithTransparent(Z)V

    goto :goto_1
.end method

.method public refreshView(ZZ)V
    .locals 9

    const/4 v2, 0x0

    sget-object v0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshView isStatusBarDark="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",analysis="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mIsStatusBarDark:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move v3, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHasBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "topPicture"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move v3, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    new-instance v8, Lmiui/date/Calendar;

    invoke-direct {v8}, Lmiui/date/Calendar;-><init>()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mDateTitle:Landroid/widget/TextView;

    invoke-virtual {v8}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v1, 0x180

    invoke-static {v2, v3, v1}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mIsChinese:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mDateContent:Landroid/widget/TextView;

    const-string/jumbo v1, "EE YY\u5e74N\u6708e"

    invoke-virtual {v8, v1}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHasBackground:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setHeaderContentDark()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mDateContent:Landroid/widget/TextView;

    const-string/jumbo v1, "EE y.M.d"

    invoke-virtual {v8, v1}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setHeaderContentLight()V

    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->mHandler:Landroid/os/Handler;

    return-void
.end method
