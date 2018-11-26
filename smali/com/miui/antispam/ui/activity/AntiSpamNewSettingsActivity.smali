.class public Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;
.super Lcom/miui/antispam/ui/activity/b;
.source ""


# instance fields
.field public final RM:Ljava/lang/String;

.field public final RN:Ljava/lang/String;

.field private RO:Lmiui/app/ActionBar;

.field private RP:Landroid/app/ActionBar$Tab;

.field private RQ:Landroid/app/ActionBar$Tab;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/b;-><init>()V

    const-string/jumbo v0, "sim_1"

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RM:Ljava/lang/String;

    const-string/jumbo v0, "sim_2"

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RN:Ljava/lang/String;

    return-void
.end method

.method private Th(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f070158

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/miui/antispam/util/h;->XH()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/antispam/util/h;->isVirtualSim(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/antispam/util/h;->getVirtualSimCarrierName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/antispam/util/h;->isVirtualSim(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/miui/antispam/util/h;->getVirtualSimCarrierName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RO:Lmiui/app/ActionBar;

    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {p0, v8, v3}, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RP:Landroid/app/ActionBar$Tab;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RO:Lmiui/app/ActionBar;

    invoke-virtual {v1}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v8, v2}, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RQ:Landroid/app/ActionBar$Tab;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RO:Lmiui/app/ActionBar;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RO:Lmiui/app/ActionBar;

    const-string/jumbo v1, "sim_1"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RP:Landroid/app/ActionBar$Tab;

    const-class v3, Lcom/miui/antispam/ui/b/j;

    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RO:Lmiui/app/ActionBar;

    const-string/jumbo v1, "sim_2"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RQ:Landroid/app/ActionBar$Tab;

    const-class v3, Lcom/miui/antispam/ui/b/f;

    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RO:Lmiui/app/ActionBar;

    const v1, 0x7f070081

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/b/j;

    invoke-direct {v1}, Lcom/miui/antispam/ui/b/j;-><init>()V

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RO:Lmiui/app/ActionBar;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->RO:Lmiui/app/ActionBar;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->Th(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/antispam/ui/activity/b;->onDestroy()V

    return-void
.end method
