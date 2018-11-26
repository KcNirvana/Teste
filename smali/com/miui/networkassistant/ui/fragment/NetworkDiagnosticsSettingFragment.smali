.class public Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;
.super Lcom/miui/common/a/a/a;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREF_KEY_DIAGNOSTICS_SHOW_FLOAT_NOTIFICATION:Ljava/lang/String; = "pref_key_diagnostics_show_float_notification"

.field private static final TITLE_FILED:I = 0x7f07028d


# instance fields
.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mDiagnosticsShowFloatNotification:Z

.field private mDiagnosticsShowFloatNotificationPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/a/a;-><init>()V

    return-void
.end method

.method private initDiagnosticsNoShowFloatNotificationCheckboxPref()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isNetworkDiagnosticsFloatNotificationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mDiagnosticsShowFloatNotification:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mDiagnosticsShowFloatNotificationPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mDiagnosticsShowFloatNotification:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f050016

    return v0
.end method

.method protected initPreferenceView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    const-string/jumbo v0, "pref_key_diagnostics_show_float_notification"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mDiagnosticsShowFloatNotificationPreference:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mDiagnosticsShowFloatNotificationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->initDiagnosticsNoShowFloatNotificationCheckboxPref()V

    return-void
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mDiagnosticsShowFloatNotificationPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mDiagnosticsShowFloatNotification:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mDiagnosticsShowFloatNotification:Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setNetworkDiagnosticsFloatNotificationEnabled(Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f07028d

    return v0
.end method
