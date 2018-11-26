.class public Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;
.super Lcom/miui/common/a/d;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private aRj()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    const-string/jumbo v1, "SoftwareRankFragement"

    invoke-virtual {v0}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f070424

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/powercenter/legacypowerrank/b;

    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    const-string/jumbo v1, "HardwareRankFragment"

    invoke-virtual {v0}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f070425

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/powercenter/legacypowerrank/k;

    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    return-void
.end method

.method private aRk()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerConsumeRank"

    const-string/jumbo v1, "activity destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.powercenter.action.UPDATE_POWER_RANK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic aRl(Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;->aRk()V

    return-void
.end method

.method private customizeActionBar()V
    .locals 5

    const/4 v4, -0x2

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0201b2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v2, 0x7f07048b

    invoke-virtual {p0, v2}, Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/p;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/legacypowerrank/p;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const v3, 0x800015

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;->aRj()V

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;->customizeActionBar()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    new-instance v0, Lcom/miui/powercenter/legacypowerrank/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/legacypowerrank/c;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerConsumeRank;Lcom/miui/powercenter/legacypowerrank/c;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/legacypowerrank/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
