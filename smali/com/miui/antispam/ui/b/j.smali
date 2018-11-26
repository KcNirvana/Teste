.class public Lcom/miui/antispam/ui/b/j;
.super Lcom/miui/antispam/ui/b/e;
.source ""


# instance fields
.field private Xl:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/e;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antispam/ui/b/j;->Xl:I

    return-void
.end method

.method private We()V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getSMSClassifierUpdateTime(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/antispam/ui/b/j;->WQ:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const v0, 0x7f0700c9

    invoke-virtual {p0, v0, v4}, Lcom/miui/antispam/ui/b/j;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WQ:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0700ca

    invoke-virtual {p0, v1}, Lcom/miui/antispam/ui/b/j;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private Wf()V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/miui/antispam/ui/b/j;->Xl:I

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$AntiSpam;->getNotificationType(Landroid/content/Context;I)I

    move-result v4

    const/4 v3, -0x1

    if-nez v4, :cond_0

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070134

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/b/j;->WL:[Ljava/lang/String;

    new-instance v3, Lcom/miui/antispam/ui/b/C;

    invoke-direct {v3, p0}, Lcom/miui/antispam/ui/b/C;-><init>(Lcom/miui/antispam/ui/b/j;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    if-ne v4, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-ne v4, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private Wg()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/b/A;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/b/A;-><init>(Lcom/miui/antispam/ui/b/j;)V

    const v2, 0x7f070071

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private Wi(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WS:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WS:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WS:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/j;->WS:Lmiui/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SettingsFragmentForSim1"

    const-string/jumbo v2, "error dismiss dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private Wj()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070072

    invoke-virtual {p0, v1}, Lcom/miui/antispam/ui/b/j;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v2, v2}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/j;->WS:Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antispam/service/b/b;->getInstance(Landroid/content/Context;)Lcom/miui/antispam/service/b/b;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/b/z;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/b/z;-><init>(Lcom/miui/antispam/ui/b/j;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/antispam/service/b/b;->adf(Ljava/lang/Runnable;Lcom/miui/antispam/service/b/c;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/antispam/service/AntiSpamService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/miui/antispam/service/AntiSpamService;->aay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private Wk()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/t;->aJq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070073

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/j;->Wg()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/t;->aJs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->Wh()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/antispam/ui/b/j;->Wj()V

    goto :goto_0
.end method

.method static synthetic Wl(Lcom/miui/antispam/ui/b/j;)I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/ui/b/j;->Xl:I

    return v0
.end method

.method static synthetic Wm(Lcom/miui/antispam/ui/b/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/j;->We()V

    return-void
.end method

.method static synthetic Wn(Lcom/miui/antispam/ui/b/j;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/b/j;->Wi(I)V

    return-void
.end method

.method static synthetic Wo(Lcom/miui/antispam/ui/b/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/j;->Wj()V

    return-void
.end method


# virtual methods
.method public Wb()V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WF:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/antispam/ui/b/j;->Xl:I

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WG:Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/j;->WL:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/antispam/ui/b/j;->Xl:I

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$AntiSpam;->getNotificationType(Landroid/content/Context;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WQ:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isSMSClassifierAutoUpdate(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/j;->We()V

    return-void
.end method

.method public Wh()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07006d

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/b/B;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/b/B;-><init>(Lcom/miui/antispam/ui/b/j;)V

    const v2, 0x7f070070

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/b/e;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/j;->WN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget v0, p0, Lcom/miui/antispam/ui/b/j;->WJ:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WO:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/antispam/ui/b/j;->Xl:I

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WM:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/j;->WQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WM:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/j;->WR:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/j;->Wb()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WF:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/antispam/ui/b/j;->Xl:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$AntiSpam;->setAntiSpamEnableForSim(Landroid/content/Context;IZ)V

    return v3

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WQ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setSMSClassifierAutoUpdate(Landroid/content/Context;Z)V

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WG:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/j;->Wf()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WK:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_sim_id"

    iget v2, p0, Lcom/miui/antispam/ui/b/j;->Xl:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/j;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WI:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_sim_id"

    iget v2, p0, Lcom/miui/antispam/ui/b/j;->Xl:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/j;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WH:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/BlackListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_sim_id"

    iget v2, p0, Lcom/miui/antispam/ui/b/j;->Xl:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/j;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WT:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/WhiteListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_sim_id"

    iget v2, p0, Lcom/miui/antispam/ui/b/j;->Xl:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/j;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/antispam/ui/b/j;->WR:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/j;->Wk()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/antispam/ui/b/e;->onResume()V

    new-instance v0, Lcom/miui/antispam/ui/b/y;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/b/y;-><init>(Lcom/miui/antispam/ui/b/j;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antispam/ui/b/y;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
