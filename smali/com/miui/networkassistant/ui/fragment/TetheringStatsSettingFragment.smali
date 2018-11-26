.class public Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final PREF_KEY_TETHERING_LIMIT_SWITCH:Ljava/lang/String; = "pref_key_tethering_stats_limit_switch"

.field private static final PREF_KEY_TETHERING_LIMIT_VALUE:Ljava/lang/String; = "pref_key_tethering_stats_limit_value"

.field private static final PREF_KEY_TETHERING_OVER_LIMIT_OPT:Ljava/lang/String; = "pref_key_tethering_over_limit_opt"

.field private static final SINGLE_CHOICE_LIMIT_VALUE_FLAG:I = 0x2

.field private static final SINGLE_CHOICE_OVER_LIMIT_FLAG:I = 0x1

.field private static final TITLE_FILED:I = 0x7f0703eb


# instance fields
.field private mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mDataChanged:Z

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mLimitValueArray:[Ljava/lang/String;

.field private mLimitValueType:I

.field private mOverLimitOptType:I

.field private mSingleChoiceItemsArray:[Ljava/lang/String;

.field private mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mTetheringLimitCheckBox:Landroid/preference/CheckBoxPreference;

.field private mTetheringLimitValuePreference:Lmiui/preference/ValuePreference;

.field private mTetheringOverLimitOptType:Lmiui/preference/ValuePreference;

.field private mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitValuePreference:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mDataChanged:Z

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueType:I

    return p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mOverLimitOptType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->getLimitValue(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->initData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->showSetCustomValueDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    return-void
.end method

.method private getLimitSelected(J)I
    .locals 3

    const-wide/32 v0, 0x3200000

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-wide/32 v0, 0x6400000

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-wide/32 v0, 0x9600000

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const-wide/32 v0, 0xc800000

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x4

    return v0
.end method

.method private getLimitValue(I)J
    .locals 2

    const-wide/32 v0, 0x3200000

    packed-switch p1, :pswitch_data_0

    return-wide v0

    :pswitch_0
    return-wide v0

    :pswitch_1
    const-wide/32 v0, 0x6400000

    return-wide v0

    :pswitch_2
    const-wide/32 v0, 0x9600000

    return-wide v0

    :pswitch_3
    const-wide/32 v0, 0xc800000

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initData()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringLimitEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitValuePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringLimitTraffic()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitValuePreference:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->getLimitSelected(J)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringOverLimitOptType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mOverLimitOptType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mOverLimitOptType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->initTetherLimitArray()V

    :cond_0
    return-void
.end method

.method private initTetherLimitArray()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "%d%s"

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "%d%s"

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "%d%s"

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v5, 0x96

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "%d%s"

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0703ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-void
.end method

.method private showSetCustomValueDialog()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v1, 0x7f0703ef

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07033a

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_0
.end method


# virtual methods
.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f05002a

    return v0
.end method

.method protected initPreferenceView()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    const-string/jumbo v0, "pref_key_tethering_stats_limit_switch"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitCheckBox:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_key_tethering_stats_limit_value"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitValuePreference:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_key_tethering_over_limit_opt"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitValuePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitValuePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-void
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mDataChanged:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->forceCheckTethingSettingStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringLimitEnabled(Z)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitValuePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mDataChanged:Z

    :cond_0
    return v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitValuePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v1, 0x7f0703ee

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueType:I

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v1, 0x7f070347

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mOverLimitOptType:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f0703eb

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$3;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;Landroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method protected resetTitle()V
    .locals 0

    return-void
.end method
