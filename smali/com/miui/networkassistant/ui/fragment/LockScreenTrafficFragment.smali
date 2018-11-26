.class public Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;
.super Lcom/miui/networkassistant/ui/base/ListFragment;
.source ""


# static fields
.field public static final BUNDLE_KEY_LIST_HEADER:Ljava/lang/String; = "list_header"

.field public static final BUNDLE_KEY_UID_MAP:Ljava/lang/String; = "uid_map"

.field private static final MSG_UPDATE_DATA:I = 0x0

.field private static final SETTING_BUTTON_ID:I = 0x1

.field private static final TITLE_FILED:I = 0x7f0702cd


# instance fields
.field private mAdapter:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

.field private mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mHandler:Landroid/os/Handler;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSetttingsButton:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/ListFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "list_header"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0a0267

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a026e

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0e0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isLargeScaleMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/ListFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-void
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300d8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateListAdapter()Landroid/widget/ListAdapter;
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    return-object v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 3

    const/16 v0, 0x10

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mSetttingsButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mSetttingsButton:Landroid/widget/ImageView;

    sget v1, Lmiui/R$drawable;->icon_settings_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mSetttingsButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mSetttingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800015

    invoke-direct {v0, v2, v2, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mSetttingsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f0702cd

    return v0
.end method
