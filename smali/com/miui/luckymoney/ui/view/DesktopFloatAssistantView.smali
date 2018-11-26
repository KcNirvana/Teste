.class public Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatAssistantView"


# instance fields
.field private cancleBgLayout:Landroid/widget/FrameLayout;

.field private cancleImage:Landroid/widget/ImageView;

.field private mCancleLayout:Landroid/widget/FrameLayout;

.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mFloatImageView:Landroid/widget/ImageView;

.field private mFloatLayout:Landroid/widget/FrameLayout;

.field private mFloatTipsEnable:Z

.field private mFloatTipsImageView:Landroid/widget/ImageView;

.field private mIsHide:Z

.field private mIsMove:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mService:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

.field private mWindowManager:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static synthetic -get0(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->cancleBgLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->cancleImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mIsHide:Z

    return v0
.end method

.method static synthetic -get8(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mIsMove:Z

    return v0
.end method

.method static synthetic -get9(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mIsHide:Z

    return p1
.end method

.method static synthetic -set1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mIsMove:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->hideOnBothSides()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->createCancleFloatView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->hideFloatTipsGone()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->setLayout(Landroid/view/View;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;-><init>(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$2;-><init>(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mService:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-virtual {p1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->initFloatView()V

    return-void
.end method

.method private createCancleFloatView()V
    .locals 6

    const/4 v3, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->removeCancleFloatView()V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x7d3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x108

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x31

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030072

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCancleLayout:Landroid/widget/FrameLayout;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCancleLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCancleLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a017e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->cancleBgLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCancleLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a017f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->cancleImage:Landroid/widget/ImageView;

    const-string/jumbo v0, "FloatAssistantView"

    const-string/jumbo v1, "createCancleFloatView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private hideFloatTipsGone()V
    .locals 9

    const/4 v8, 0x4

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsStopTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/miui/luckymoney/config/CommonConfig;->setFloatTipsUpdateTime(J)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->setLastFloatViewXPos(I)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->setLastFloatViewYPos(I)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$5;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$5;-><init>(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mService:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    iget-object v0, v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FloatAssistantView"

    const-string/jumbo v1, "remove float tips msg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mService:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    iget-object v0, v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private hideOnBothSides()Z
    .locals 6

    const v4, 0x7f0200df

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit16 v3, v3, -0xa0

    if-le v2, v3, :cond_2

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$3;

    invoke-direct {v2, p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$3;-><init>(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private initFloatView()V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->isTipsLocationFit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsUpdateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/utils/DateUtil;->isTipsTimeEnable(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsEnable:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTipsLocationFit()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getLastFloatViewYPos()I

    move-result v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    int-to-float v0, v0

    add-float/2addr v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLayout(Landroid/view/View;IIII)V
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public createFloatView()V
    .locals 10

    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getLastFloatViewXPos()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getLastFloatViewYPos()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsEnable:Z

    if-eqz v0, :cond_2

    const v0, 0x7f030074

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0180

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->hideOnBothSides()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mIsHide:Z

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatLayout:Landroid/widget/FrameLayout;

    const v5, 0x7f0a0181

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "FloatTips"

    iget-object v5, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v5}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsImageLeft()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/ImageUtil;->loadBitmapfromFile(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v4}, Landroid/widget/ImageView;->measure(II)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v4}, Landroid/widget/ImageView;->measure(II)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->setLayout(Landroid/view/View;IIII)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    move-object v1, p0

    move v4, v6

    move v5, v3

    move v6, v3

    invoke-direct/range {v1 .. v6}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->setLayout(Landroid/view/View;IIII)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsStartTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatTips(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const v0, 0x7f030073

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "FloatTips"

    iget-object v5, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v5}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsImageRight()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/miui/luckymoney/utils/ResFileUtils;->getResFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/ImageUtil;->loadBitmapfromFile(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v4}, Landroid/widget/ImageView;->measure(II)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v4}, Landroid/widget/ImageView;->measure(II)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    iget-object v5, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatImageView:Landroid/widget/ImageView;

    move-object v4, p0

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->setLayout(Landroid/view/View;IIII)V

    goto/16 :goto_1
.end method

.method public removeCancleFloatView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCancleLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCancleLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mCancleLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v0, "FloatAssistantView"

    const-string/jumbo v1, "removeCancleFloatView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public removeFloatView()V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->hideFloatTipsGone()V

    const-string/jumbo v0, "FloatAssistantView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove float view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatTipsEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$4;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$4;-><init>(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
