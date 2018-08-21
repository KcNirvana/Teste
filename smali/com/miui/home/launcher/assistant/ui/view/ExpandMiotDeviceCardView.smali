.class public Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;
.super Landroid/widget/LinearLayout;
.source "ExpandMiotDeviceCardView.java"


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

.field private mAddDeviceButton:Landroid/widget/TextView;

.field private mCardSetting:Landroid/view/View;

.field private mDeviceView:Landroid/widget/GridView;

.field private mEditCallback:Lcom/xiaomi/miot/service/ICallback$Stub;

.field private mFootViewHeight:I

.field private mFooterContainer:Landroid/widget/LinearLayout;

.field private mHeadViewHeight:I

.field private mHeader:Landroid/view/View;

.field private mIsAnimRunning:Z

.field private mIsShowing:Z

.field private mOriginDeviceBody:Landroid/widget/GridView;

.field private mOriginDeviceView:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

.field private mPanel:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShrinkButton:Landroid/widget/TextView;

.field private mTargetDeviceBodyHeight:I

.field private mTargetPanelBodyHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mEditCallback:Lcom/xiaomi/miot/service/ICallback$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceView:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mTargetPanelBodyHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mCardSetting:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Lcom/xiaomi/miot/service/ICallback$Stub;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mEditCallback:Lcom/xiaomi/miot/service/ICallback$Stub;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mDeviceView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)I
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->calculateTransY()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceBody:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mTargetDeviceBodyHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mIsAnimRunning:Z

    return p1
.end method

.method private calculateTransY()I
    .locals 4

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceView:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceView:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0c019f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resizeExpandDevicePanel(I)V
    .locals 4

    iget-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mIsAnimRunning:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mDeviceView:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mDeviceView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mFootViewHeight:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mHeadViewHeight:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mDeviceView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private startExpandAnim(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->requestLayout()V

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

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->shrinkDeviceCardView()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandDeviceCardView(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V
    .locals 8

    const v5, 0x1b0901a4

    const v7, 0x40aa8f5c    # 5.33f

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mIsShowing:Z

    if-nez v2, :cond_2

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceView:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceView:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mFootViewHeight:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceView:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mHeadViewHeight:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceView:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    const v5, 0x1b0901a3

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceBody:Landroid/widget/GridView;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "force_fsg_nav_bar"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v3, :cond_3

    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/Device;->getDisplayHeight(Landroid/content/Context;)I

    move-result v2

    if-eqz v0, :cond_0

    const/16 v4, 0x82

    :cond_0
    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0c019f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, -0x2

    add-int/2addr v2, v4

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mTargetPanelBodyHeight:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceView:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mDeviceView:Landroid/widget/GridView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mDeviceView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/miui/home/launcher/assistant/util/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mDeviceView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/miui/home/launcher/assistant/util/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    if-nez v2, :cond_1

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getDeviceItem()Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    move-result-object v5

    invoke-direct {v2, v4, v5, v3}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Z)V

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getAllDeviceInfos()Ljava/util/List;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-virtual {v2, v4, v5}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->setDeviceInfo(Ljava/util/List;I)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mDeviceView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceView:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->resizeExpandDevicePanel(I)V

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mTargetPanelBodyHeight:I

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mFootViewHeight:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mHeadViewHeight:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mTargetDeviceBodyHeight:I

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->startExpandAnim(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method init()V
    .locals 2

    const v0, 0x1b090183

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mHeader:Landroid/view/View;

    const v0, 0x1b0901a3

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mDeviceView:Landroid/widget/GridView;

    const v0, 0x1b0901a2

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mPanel:Landroid/widget/LinearLayout;

    const v0, 0x1b0901a4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mFooterContainer:Landroid/widget/LinearLayout;

    const v0, 0x1b090186

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mCardSetting:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mCardSetting:Landroid/view/View;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b0901a6

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mAddDeviceButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mAddDeviceButton:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$4;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b0901a5

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mShrinkButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mShrinkButton:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$5;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$5;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->setVisibility(I)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$6;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mPanel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$7;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$7;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mHeader:Landroid/view/View;

    const v1, 0x1b020316

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mShrinkButton:Landroid/widget/TextView;

    const v1, 0x1b0202eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mAddDeviceButton:Landroid/widget/TextView;

    const v1, 0x1b0202ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mIsShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "action_refresh_finished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.xiaomi.smarthome.refresh_device"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->init()V

    return-void
.end method

.method public shrinkDeviceCardView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mOriginDeviceView:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mIsShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->mIsAnimRunning:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->startExpandAnim(Z)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->setAiVisible(I)V

    :cond_0
    return-void
.end method
