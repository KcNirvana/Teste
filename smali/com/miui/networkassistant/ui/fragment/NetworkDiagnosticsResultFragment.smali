.class public Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;
.super Lcom/miui/common/a/a/f;
.source ""


# static fields
.field private static final NETWORK_DIAGNOSTICS_FIX_END:I = 0x1

.field private static final NETWORK_DIAGNOSTICS_FIX_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_ResultFragment"

.field private static final TITLE_FILED:I = 0x7f07035b


# instance fields
.field private mAllProblemItem:Ljava/util/List;

.field private mBottomPanel:Landroid/view/View;

.field private mBtnFinishtDignoze:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsFixing:Ljava/lang/Boolean;

.field private mIssuesListView:Landroid/widget/ListView;

.field private mIssuseListViewAdapter:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

.field private mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mIsFixing:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mIsFixing:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->finishDiagnostic()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/common/a/a/f;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mBtnFinishtDignoze:Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mIssuesListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mIssuseListViewAdapter:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mAllProblemItem:Ljava/util/List;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mIsFixing:Ljava/lang/Boolean;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private finishDiagnostic()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;

    const v1, 0x7f0a0073

    const v2, 0x7f0a0076

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;->switchView(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getBrokenItemWithoutDuplicate()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getActiveNetworkType()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getNetworkChangedCheckItem()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->check()V

    invoke-virtual {v2}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getIsStatusNormal()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getAllBrokenUsbShareItem()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getAllBrokenMobileDataItem()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getAllBrokenWifiItem()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v2, "NetworkDiagnostics_ResultFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "activeNetworkType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->isWifiEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->checkWlanConnected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getAllBrokenWifiItem()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string/jumbo v1, "NetworkDiagnostics_ResultFragment"

    const-string/jumbo v2, "clear all broken check items"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getAllBrokenMobileDataItem()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_7
    return-object v2
.end method

.method public getScreenHeight()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method protected initView()V
    .locals 2

    const v0, 0x7f0a01bb

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mBtnFinishtDignoze:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mBtnFinishtDignoze:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01b9

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mIssuesListView:Landroid/widget/ListView;

    const v0, 0x7f0a01ba

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mNDManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f030092

    return v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/miui/common/a/a/f;->onResume()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->dismiss()V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    :cond_0
    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f07035b

    return v0
.end method

.method public showResult()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mAllProblemItem:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mAllProblemItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getBrokenItemWithoutDuplicate()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mAllProblemItem:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mAllProblemItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mAllProblemItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getItemSolution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mBottomPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mAllProblemItem:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mIssuseListViewAdapter:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mIssuesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mIssuseListViewAdapter:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
