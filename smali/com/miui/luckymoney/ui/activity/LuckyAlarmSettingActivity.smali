.class public Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;
.super Lcom/miui/luckymoney/ui/activity/BasePreferenceActivity;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CATEGORY_LUCKY_ACTIVITY:Ljava/lang/String; = "category_lucky_activity"

.field private static final PREF_KEY_ALARM_SOUND_WARNING:Ljava/lang/String; = "pref_key_alarm_sound_warning"

.field private static final PREF_KEY_OPEN_LUCKY_ALARM:Ljava/lang/String; = "pref_key_open_lucky_alarm"


# instance fields
.field private commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mAlarmSoundWarning:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mLuckyActivityCategory:Landroid/preference/PreferenceCategory;

.field private mOpenLuckyAlarm:Landroid/preference/CheckBoxPreference;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private packages:[Ljava/lang/String;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method private createItemViewByPackageName(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    return-object v2

    :cond_1
    new-instance v2, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;

    invoke-direct {v2, p0}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u7ea2\u5305\u6d3b\u52a8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->setTextView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0, p1}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmPackageOpen(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->setChecked(Z)V

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity$CheckedChangeListener;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity$CheckedChangeListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/miui/luckymoney/ui/customview/IconCheckBoxPreference;->setSlidingButtonListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/miui/luckymoney/ui/activity/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_key_open_lucky_alarm"

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mOpenLuckyAlarm:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_key_alarm_sound_warning"

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mAlarmSoundWarning:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "category_lucky_activity"

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mLuckyActivityCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mOpenLuckyAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mAlarmSoundWarning:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mOpenLuckyAlarm:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmEnable()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mAlarmSoundWarning:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmSoundEnable()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->packages:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->pm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->packages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->packages:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mLuckyActivityCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->packages:[Ljava/lang/String;

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->packages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->createItemViewByPackageName(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mLuckyActivityCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mLuckyActivityCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mOpenLuckyAlarm:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1, v0}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckyAlarmEnable(Z)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->mAlarmSoundWarning:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity;->commonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1, v0}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckyAlarmSoundEnable(Z)V

    goto :goto_0
.end method
