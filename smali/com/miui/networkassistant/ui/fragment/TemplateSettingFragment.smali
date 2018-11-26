.class public Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ACTION_SMS_CONTENT:I = 0x2

.field private static final ACTION_SMS_NUM:I = 0x1

.field private static final MSG_TRAFFIC_MANAGE_SERVICE_CONNECTED:I = 0x1

.field private static final PREF_CONFIRM_OPERATOR_SETTING:Ljava/lang/String; = "pref_confirm_operator_setting"

.field private static final PREF_CORRECTION_SETTING_SWITCH:Ljava/lang/String; = "pref_correction_setting_switch"

.field private static final PREF_CORRECTION_SMS_CONTENT:Ljava/lang/String; = "pref_correction_sms_content"

.field private static final PREF_CORRECTION_SMS_NUMBER:Ljava/lang/String; = "pref_correction_sms_number"

.field private static final TAG:Ljava/lang/String; = "TemplateSettingFragment"

.field private static final TITLE_FILED:I = 0x7f070257


# instance fields
.field private mChanged:Z

.field private mConfirmOperationSetting:Lmiui/preference/ValuePreference;

.field private mCustomizeTemplateSwitch:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

.field private mIsCustomizedSms:Z

.field private mSmsContent:Ljava/lang/String;

.field private mSmsContentSetting:Lmiui/preference/ValuePreference;

.field private mSmsNum:Ljava/lang/String;

.field private mSmsNumberSetting:Lmiui/preference/ValuePreference;

.field private mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mChanged:Z

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->initData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mChanged:Z

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initData()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mServiceConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isCustomizedSms()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mCustomizeTemplateSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->setCustomizedSmsEnable(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->initInstruction()V

    return-void
.end method

.method private initInstruction()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getInstructions(I)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getOperatorNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "TemplateSettingFragment"

    const-string/jumbo v3, "get instructions failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private saveCustomizedData()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCustomizedSmsNum(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCustomizedSmsContent(Ljava/lang/String;)Z

    return-void
.end method

.method private setCustomizedSmsEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    return-void
.end method

.method private trackCustomizedSms()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mIsCustomizedSms:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackCustomizedSms(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f050029

    return v0
.end method

.method protected initPreferenceView()V
    .locals 3

    const/4 v1, 0x1

    const-string/jumbo v0, "pref_confirm_operator_setting"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mConfirmOperationSetting:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mConfirmOperationSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mConfirmOperationSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_correction_setting_switch"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mCustomizeTemplateSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mCustomizeTemplateSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "pref_correction_sms_number"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_correction_sms_content"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    return-void
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->trackCustomizedSms()V

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mChanged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->saveCustomizedData()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TemplateSettingFragment"

    const-string/jumbo v2, "update failed onDestroy "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mCustomizeTemplateSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mIsCustomizedSms:Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleCustomizedSms(Z)Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mIsCustomizedSms:Z

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->setCustomizedSmsEnable(Z)V

    iput-boolean v3, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mChanged:Z

    :cond_0
    return v3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mConfirmOperationSetting:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    const v1, 0x7f0702a6

    const v2, 0x7f0702a8

    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(III)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    const v1, 0x7f0702a7

    const v2, 0x7f0702a9

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(III)V

    goto :goto_0
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f070257

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
