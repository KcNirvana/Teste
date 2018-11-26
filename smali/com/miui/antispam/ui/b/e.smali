.class public abstract Lcom/miui/antispam/ui/b/e;
.super Lcom/miui/antispam/ui/b/a;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field protected WF:Landroid/preference/CheckBoxPreference;

.field protected WG:Lcom/miui/antispam/ui/view/LabelPreference;

.field protected WH:Lcom/miui/antispam/ui/view/LabelPreference;

.field protected WI:Lcom/miui/antispam/ui/view/LabelPreference;

.field protected WJ:I

.field protected WK:Lcom/miui/antispam/ui/view/LabelPreference;

.field protected WL:[Ljava/lang/String;

.field protected WM:Landroid/preference/PreferenceCategory;

.field protected WN:Landroid/preference/CheckBoxPreference;

.field protected WO:Ljava/util/List;

.field private WP:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field protected WQ:Landroid/preference/CheckBoxPreference;

.field protected WR:Lcom/miui/antispam/ui/view/LabelPreference;

.field protected WS:Lmiui/app/ProgressDialog;

.field protected WT:Lcom/miui/antispam/ui/view/LabelPreference;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/a;-><init>()V

    new-instance v0, Lcom/miui/antispam/ui/b/u;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/b/u;-><init>(Lcom/miui/antispam/ui/b/e;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WP:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method private VX()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ne v2, v0, :cond_0

    iput v0, p0, Lcom/miui/antispam/ui/b/e;->WJ:I

    :goto_0
    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/e;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget v3, p0, Lcom/miui/antispam/ui/b/e;->WJ:I

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/antispam/util/h;->XH()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antispam/ui/b/e;->WO:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/e;->WO:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/antispam/ui/b/e;->WO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iput v1, p0, Lcom/miui/antispam/ui/b/e;->WJ:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/antispam/ui/b/e;->WO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_3

    iput v0, p0, Lcom/miui/antispam/ui/b/e;->WJ:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    iput v2, p0, Lcom/miui/antispam/ui/b/e;->WJ:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic VY(Lcom/miui/antispam/ui/b/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/e;->VX()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/b/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->mContext:Landroid/content/Context;

    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/e;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "key_share_settings"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/e;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WN:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_antispam_enable"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/e;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WF:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_msg_intercept"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/e;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WK:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_call_intercept"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/e;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WI:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_number_blacklist"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/e;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WH:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_number_whitelist"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/e;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WT:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_show_antispam_notification"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/e;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WG:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "key_sms_engine_auto_update"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/e;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WQ:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "key_sms_engine_manual_update"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/e;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WR:Lcom/miui/antispam/ui/view/LabelPreference;

    const-string/jumbo v0, "other_settings_group"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/e;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WM:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/e;->WN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/e;->WF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/e;->WK:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/e;->WI:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/e;->WH:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/e;->WT:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/e;->WG:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/e;->WQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/e;->WR:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/miui/antispam/ui/view/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/b/e;->WL:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/e;->VX()V

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/e;->WP:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/antispam/ui/b/a;->onDestroy()V

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/e;->WP:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method
