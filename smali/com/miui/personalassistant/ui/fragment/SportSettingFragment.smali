.class public Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;
.super Landroid/app/Fragment;
.source "SportSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SportSettingFragment"


# instance fields
.field private mSportSelect:Landroid/widget/ImageView;

.field private mSportTitle:Landroid/widget/TextView;

.field private mStepSelect:Landroid/widget/ImageView;

.field private mStepSport:Landroid/widget/LinearLayout;

.field private mStepVip:Landroid/widget/LinearLayout;

.field private mUninstallTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private checkTypeBtn()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "key_step_type"

    const-string/jumbo v3, "0"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.hm.health"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi.hm.health"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->isVipSelect(Z)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->dialogForAuto()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "com.xiaomi.vip"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v4}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->isVipSelect(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "key_step_type"

    const-string/jumbo v3, "com.xiaomi.vip"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->isVipSelect(Z)V

    goto :goto_0
.end method

.method private dialogForAuto()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "key_step_misport_auto"

    const-string/jumbo v3, "0"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "key_step_misport_auto"

    const-string/jumbo v3, "1"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1b0b03f6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b03fc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b03fa

    new-instance v3, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment$2;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment$2;-><init>(Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b03fb

    new-instance v3, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment$1;-><init>(Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private dialogForMarket()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1b0b03f8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b03f7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b03f9

    new-instance v3, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment$4;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment$4;-><init>(Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b0238

    new-instance v3, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment$3;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment$3;-><init>(Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x1b090387

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepVip:Landroid/widget/LinearLayout;

    const v0, 0x1b09038b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepSport:Landroid/widget/LinearLayout;

    const v0, 0x1b090388

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepSelect:Landroid/widget/ImageView;

    const v0, 0x1b09038c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mSportSelect:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepVip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepSport:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b09038d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mSportTitle:Landroid/widget/TextView;

    const v0, 0x1b09038f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mUninstallTip:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/personalassistant/util/Steps;->supportStepsProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepVip:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->setUninstallTitle()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->checkTypeBtn()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepVip:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private isVipSelect(Z)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mSportSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mSportSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUninstallTitle()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.hm.health"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepSport:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->isVipSelect(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mSportTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0f006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mUninstallTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepSport:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mSportTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0f0102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mUninstallTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "key_step_type"

    const-string/jumbo v3, "0"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.hm.health"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepSport:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->isVipSelect(Z)V

    :cond_0
    const-string/jumbo v1, "com.xiaomi.vip"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->isVipSelect(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "key_step_type"

    const-string/jumbo v3, "com.xiaomi.vip"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->isVipSelect(Z)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->setUninstallTitle()V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->mStepSport:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "key_step_type"

    const-string/jumbo v3, "com.xiaomi.hm.health"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->isVipSelect(Z)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->dialogForAuto()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    :cond_1
    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->checkTypeBtn()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->dialogForMarket()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b090387 -> :sswitch_0
        0x1b09038b -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x1b0400ff

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->updateUI()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->setUninstallTitle()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->updateUI()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/SportSettingFragment;->setUninstallTitle()V

    return-void
.end method
