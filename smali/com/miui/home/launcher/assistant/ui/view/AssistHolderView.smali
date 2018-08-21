.class public Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;
.super Landroid/widget/FrameLayout;
.source "AssistHolderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;
    }
.end annotation


# static fields
.field private static final RATE_MOVE:F = 0.57f

.field private static final TAG:Ljava/lang/String; = "AssistHolderView"

.field private static mLightBgForClock:Z


# instance fields
.field private mAiView:Landroid/view/View;

.field private mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

.field private mAssistAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

.field public mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

.field private mBitmapY:I

.field private mContentHeight:I

.field private mContext:Landroid/content/Context;

.field private mDownAni:Landroid/animation/ValueAnimator;

.field private mExpandDeviceCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

.field private mExpandDeviceCardStub:Landroid/view/ViewStub;

.field private mExpandNoteCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

.field private mExpandNoteCardStub:Landroid/view/ViewStub;

.field private mFooterUpgrade:Landroid/widget/LinearLayout;

.field private mFooterView:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitTask:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSearchBoxBitmap:Landroid/graphics/Bitmap;

.field private mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

.field private mSearchRc:Landroid/graphics/Rect;

.field private mTextHeight:I

.field private mUpAni:Landroid/animation/ValueAnimator;

.field private mUpgradeLoading:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mLightBgForClock:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpAni:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mDownAni:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mBitmapY:I

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContentHeight:I

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mTextHeight:I

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mLastMotionX:F

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mLastMotionY:F

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "AssistHolderView"

    const-string/jumbo v1, "AssistHolderView init"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContext:Landroid/content/Context;

    const v0, 0x1b0400eb

    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->setFitsSystemWindows(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/AssistantApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->onCreate(Landroid/content/Context;Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mLightBgForClock:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->initData()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->showUpgradeDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->startSearchBoxMoveUpAni(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->startSearchBoxMoveDownAni()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mBitmapY:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Lcom/miui/home/launcher/assistant/AssistantApplication;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mApp:Lcom/miui/home/launcher/assistant/AssistantApplication;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    return-object p1
.end method

.method private adapteNotch()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/StatusBarUtil;->isNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/StatusBarUtil;->getNotchTopMagin(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public static getLightBgForClock()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mLightBgForClock:Z

    return v0
.end method

.method private initAi()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const v1, 0x1b09034a

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$7;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$7;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    const-string/jumbo v2, "translationY"

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->startTranAni(Landroid/view/View;Ljava/lang/String;FF)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$8;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$8;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;I)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->setScrollDirectionListener(Lcom/miui/home/launcher/assistant/ui/view/AssistListView$OnScrollDirectionListener;)V

    return-void
.end method

.method private initAssistantTask()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mInitTask:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mInitTask:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mInitTask:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mInitTask:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initData()V
    .locals 5

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->setCardViewDataAdapter(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1b04009f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mFooterView:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->updateUpgradeStatus(Z)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->addFooterView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->setFootView(Landroid/view/View;)V

    const v2, 0x1b090271

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v2, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v2, :cond_2

    const v2, 0x1b0200e6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->initSearchCard()V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updateCardSource(Z)V

    goto :goto_0
.end method

.method private showUpgradeDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$6;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$6;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->setBodyMessage(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->show()V

    return-void
.end method

.method private startSearchBoxMoveDownAni()V
    .locals 6

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpAni:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpAni:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mBitmapY:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getTop()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mBitmapY:I

    sub-int v0, v2, v3

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mDownAni:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mDownAni:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mDownAni:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mDownAni:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mDownAni:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private startSearchBoxMoveUpAni(I)V
    .locals 6

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mDownAni:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mDownAni:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getHeaderLayoutHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContentHeight:I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/Util;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContentHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mTextHeight:I

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContentHeight:I

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchRc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mPaint:Landroid/graphics/Paint;

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getTop()I

    move-result v1

    sub-int v0, p1, v1

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpAni:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpAni:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpAni:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpAni:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpAni:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    const-string/jumbo v0, "AssistHolderView"

    const-string/jumbo v1, "dispatchDraw"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mBitmapY:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContentHeight:I

    invoke-direct {v1, v7, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContentHeight:I

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mBitmapY:I

    add-int/2addr v4, v5

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchRc:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContentHeight:I

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mBitmapY:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContentHeight:I

    iget v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mBitmapY:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mTextHeight:I

    add-int/2addr v5, v6

    invoke-direct {v2, v7, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mLightBgForClock:Z

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->gotoSettingActivity(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->setPadding(IIII)V

    return v1
.end method

.method public getCardViewCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->getCardViewCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getExpandDeviceCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandDeviceCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    return-object v0
.end method

.method public getExpandNoteCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    return-object v0
.end method

.method public getListView()Lcom/miui/home/launcher/assistant/ui/view/AssistListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    return-object v0
.end method

.method public getSearchBoxCard()Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    return-object v0
.end method

.method public inflateExpandDeviceCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandDeviceCardStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandDeviceCardStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandDeviceCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandDeviceCardStub:Landroid/view/ViewStub;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandDeviceCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AssistHolderView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public inflateExpandNoteCard()Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCardStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCardStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCardStub:Landroid/view/ViewStub;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AssistHolderView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initSearchCard()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->refreshView(ZZ)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->refreshHeaderView(Z)V

    return-void
.end method

.method public initView(ZZ)Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "AssistHolderView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initView mAssistListView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p2, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mLightBgForClock:Z

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->updateUpgradeStatus(Z)V

    :goto_0
    return v0

    :cond_0
    const v0, 0x1b090349

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1b040065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setHandler(Landroid/os/Handler;)V

    const v0, 0x1b09034b

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCardStub:Landroid/view/ViewStub;

    const v0, 0x1b09034d

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandDeviceCardStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->updateStatusBar()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->adapteNotch()V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->updateSearchCard(Z)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->initAssistantTask()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string/jumbo v0, "AssistHolderView"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->onAttachedCards()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string/jumbo v0, "AssistHolderView"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mInitTask:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mInitTask:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mInitTask:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->setCardViewDataAdapter(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)V

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/assistant/AssistantApplication;->onDestroy()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string/jumbo v0, "AssistHolderView"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mLastMotionX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    const v2, 0x3f11eb85    # 0.57f

    mul-float/2addr v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mLastMotionY:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    const-string/jumbo v1, "AssistHolderView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetSearchCard()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandDeviceCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandDeviceCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->playAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandNoteCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->refocusExpandNoteBoardCard()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mExpandDeviceCard:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->requestFocus()Z

    goto :goto_0
.end method

.method public setAiTransVisible(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    const-string/jumbo v2, "translationY"

    int-to-float v3, v0

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->startTranAni(Landroid/view/View;Ljava/lang/String;FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    const-string/jumbo v2, "translationY"

    int-to-float v3, v0

    invoke-static {v1, v2, v4, v3}, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->startTranAni(Landroid/view/View;Ljava/lang/String;FF)V

    goto :goto_0
.end method

.method public setAiVisible(IZ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$9;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$9;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAiView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showUpgradeFooter(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mFooterView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mFooterUpgrade:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mFooterView:Landroid/widget/LinearLayout;

    const v2, 0x1b090272

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mFooterUpgrade:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mFooterUpgrade:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$5;

    invoke-direct {v2, p0, p2, p3}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$5;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mFooterUpgrade:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mFooterUpgrade:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mFooterUpgrade:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showUpgradeLoading(Z)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpgradeLoading:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    const v1, 0x1b09034f

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpgradeLoading:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpgradeLoading:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpgradeLoading:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mUpgradeLoading:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSearchCard(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mSearchBoxCard:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->refreshView(ZZ)V

    return-void
.end method
