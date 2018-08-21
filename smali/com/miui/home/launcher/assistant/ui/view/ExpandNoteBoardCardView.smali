.class public Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;
.super Landroid/widget/LinearLayout;
.source "ExpandNoteBoardCardView.java"


# static fields
.field private static final SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field private static final SOFT_INPUT_ADJUST_PAN:I = 0x23

.field private static final TAG:Ljava/lang/String; = "ExpandNoteBoardCardView"

.field private static sFooterHeight:I

.field private static sNoteBodyHeightWithKeyBoard:I

.field private static sNoteBodyHeightWithOutKeyBoard:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownX:I

.field private mDownY:I

.field private mEditBody:Landroid/widget/EditText;

.field private mFooter:Landroid/widget/LinearLayout;

.field private mFooterClearDone:Landroid/widget/TextView;

.field private mFooterClearPre:Landroid/widget/ImageView;

.field private mFooterSave:Landroid/widget/ImageView;

.field private mHeader:Landroid/widget/LinearLayout;

.field private mHeaderDone:Landroid/widget/TextView;

.field private mIsAnimRunning:Z

.field private mIsHeaderDoneClicked:Z

.field private mIsShowing:Z

.field private mIsWaitingUp:Z

.field private mKeyBoardStatusObserver:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

.field private final mKeyboardVisibilityListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;

.field private mLastNoteStr:Ljava/lang/String;

.field private mNoteStr:Ljava/lang/String;

.field private mOriginNoteBody:Landroid/widget/TextView;

.field private mOriginNoteCard:Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;

.field private mPanel:Landroid/widget/LinearLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTargetNoteBodyHeight:I

.field private mUpX:I

.field private mUpY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mKeyboardVisibilityListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsHeaderDoneClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsHeaderDoneClicked:Z

    return p1
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->sNoteBodyHeightWithKeyBoard:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mLastNoteStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mLastNoteStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)I
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->calculateTransY()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteBody:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mTargetNoteBodyHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsAnimRunning:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->setEditBodySelection()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->adjustSoftInputMode(I)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->sNoteBodyHeightWithOutKeyBoard:I

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->refocusEditBody()V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->showSoftKeyBoard(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mHeaderDone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->resizeExpandNoteEditPanel(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->resetFooterClearBottun()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterClearPre:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterClearDone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mNoteStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mNoteStr:Ljava/lang/String;

    return-object p1
.end method

.method private adjustSoftInputMode(I)V
    .locals 3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/AssistantApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string/jumbo v1, "ExpandNoteBoardCardView"

    const-string/jumbo v2, "adjustSoftInputMode -> nothing"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string/jumbo v1, "ExpandNoteBoardCardView"

    const-string/jumbo v2, "adjustSoftInputMode -> pan"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method private calculateTransY()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteBody:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    new-array v0, v4, [I

    new-array v1, v4, [I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteBody:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    aget v2, v0, v3

    aget v3, v1, v3

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getTopMargin()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c00b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initConfig()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->sNoteBodyHeightWithKeyBoard:I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/NavBarUtils;->isFullScreenGestureOpen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/Device;->getRealDisplayHeight(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int v1, v0, v1

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->getTopMargin()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sput v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->sNoteBodyHeightWithOutKeyBoard:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->sFooterHeight:I

    sget v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->sNoteBodyHeightWithKeyBoard:I

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mTargetNoteBodyHeight:I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/Device;->getRealDisplayRatio(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/Device;->getDisplayDensity(Landroid/content/Context;)I

    move-result v1

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_NXHGITH:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/NavBarUtils;->isFullScreenGestureOpen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->sNoteBodyHeightWithKeyBoard:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0c00b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->sNoteBodyHeightWithKeyBoard:I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/Device;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    const v0, 0x1b09015d

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mHeader:Landroid/widget/LinearLayout;

    const v0, 0x1b090162

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooter:Landroid/widget/LinearLayout;

    const v0, 0x1b09015f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mPanel:Landroid/widget/LinearLayout;

    const v0, 0x1b090160

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mScrollView:Landroid/widget/ScrollView;

    const v0, 0x1b090161

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    const v0, 0x1b09015e

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mHeaderDone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mHeaderDone:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090163

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterClearPre:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterClearPre:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090165

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterSave:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterSave:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$4;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090164

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterClearDone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterClearDone:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$5;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$5;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$6;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->setClickable(Z)V

    new-instance v0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mKeyBoardStatusObserver:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->setMarginTop()V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mHeader:Landroid/widget/LinearLayout;

    const v1, 0x1b0200e3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mPanel:Landroid/widget/LinearLayout;

    const v1, 0x1b0200dc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v0, 0x1b09006c

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x1b0202d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private isEventInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/RectF;

    aget v3, v0, v2

    int-to-float v3, v3

    aget v4, v0, v6

    int-to-float v4, v4

    aget v2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    goto :goto_0
.end method

.method private onSingleClick(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterClearDone:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->isEventInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->resetFooterClearBottun()V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mPanel:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->isEventInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mHeader:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->isEventInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->shrinkNoteBoardCardView()V

    :cond_1
    return-void
.end method

.method private refocusEditBody()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private resetFooterClearBottun()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterClearDone:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterClearPre:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterClearDone:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mFooterClearPre:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private resizeExpandNoteEditPanel(I)V
    .locals 5

    iget-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsAnimRunning:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mTargetNoteBodyHeight:I

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->sFooterHeight:I

    sub-int v2, p1, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mTargetNoteBodyHeight:I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "ExpandNoteBoardCardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resizeExpandNoteEditPanel -> mTargetNoteBodyHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mTargetNoteBodyHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " targetHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setEditBodySelection()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mNoteStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mNoteStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mNoteStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ExpandNoteBoardCardView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMarginTop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mHeader:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->getTopMargin()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "ExpandNoteBoardCardView"

    const-string/jumbo v2, "mHeader is null"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showSoftKeyBoard(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private startExpandAnim(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->resetFooterClearBottun()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->shrinkNoteBoardCardView()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    iget-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsShowing:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsAnimRunning:Z

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ExpandNoteBoardCardView"

    const-string/jumbo v3, "dispatchTouchEvent "

    invoke-static {v2, v3, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public expandNoteBoardCardView(Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsAnimRunning:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteCard:Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteCard:Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->getNoteStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mNoteStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mNoteStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteCard:Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;

    const v1, 0x1b0901ac

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteBody:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteBody:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->sNoteBodyHeightWithKeyBoard:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->resizeExpandNoteEditPanel(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mKeyBoardStatusObserver:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->registerView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mKeyBoardStatusObserver:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mKeyboardVisibilityListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->setVisibilityListener(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->startExpandAnim(Z)V

    :cond_0
    return-void
.end method

.method public isAnimRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsAnimRunning:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsShowing:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->initConfig()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->initView()V

    return-void
.end method

.method public onLeaveMinus()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->showSoftKeyBoard(Z)V

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/assistant/util/NoteUtil;->dismissDialog()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/16 v2, 0xa

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsWaitingUp:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsWaitingUp:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mDownY:I

    const-string/jumbo v0, "ExpandNoteBoardCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchDown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mDownX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mDownY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsWaitingUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsWaitingUp:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mUpX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mUpY:I

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mUpX:I

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mDownX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_3

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mUpY:I

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mDownY:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->onSingleClick(Landroid/view/MotionEvent;)V

    :cond_3
    const-string/jumbo v0, "ExpandNoteBoardCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mUpX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mUpY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsWaitingUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsWaitingUp:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public refocusExpandNoteBoardCard()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsAnimRunning:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->refocusEditBody()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->setEditBodySelection()V

    sget v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->sNoteBodyHeightWithKeyBoard:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->resizeExpandNoteEditPanel(I)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$8;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public shrinkNoteBoardCardView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteCard:Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteBody:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mIsAnimRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mEditBody:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mNoteStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteCard:Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mNoteStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->refreshView(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mOriginNoteCard:Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mNoteStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->writeItemData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mKeyBoardStatusObserver:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->unRegisterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->mKeyBoardStatusObserver:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->setVisibilityListener(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;)V

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->showSoftKeyBoard(Z)V

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->startExpandAnim(Z)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->setAiVisible(I)V

    :cond_0
    return-void
.end method
