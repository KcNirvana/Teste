.class public Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;
.super Lmiui/preference/PreferenceActivity;
.source "PaymentPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final PREF_KEY_CLEAR_RECORDS:Ljava/lang/String; = "pref_key_clear_records"

.field private static final PREF_KEY_NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_notification_enabled"

.field private static final PREF_KEY_PAYMENT_ENABLED:Ljava/lang/String; = "pref_key_payment_enabled"

.field private static final PREF_KEY_PRIVACY_SECURITY:Ljava/lang/String; = "pref_key_privacy_security"

.field private static final PREF_KEY_REPORT_FAILED_RECORD:Ljava/lang/String; = "pref_key_report_failed_records"

.field private static final PREF_KEY_SOURCE_ALIPAY:Ljava/lang/String; = "pref_key_source_alipay"

.field private static final PREF_KEY_SOURCE_MMS:Ljava/lang/String; = "pref_key_source_mms"

.field private static final PREF_KEY_SOURCE_WECHAT:Ljava/lang/String; = "pref_key_source_wechat"

.field private static final REQUEST_CODE_LOCK_SETTINGS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PaymentPreference"


# instance fields
.field private mClearRecordsPref:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mLockSettingsHelper:Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;

.field private mNoticeDialog:Lmiui/app/AlertDialog;

.field private mNotificationEnablePref:Landroid/preference/CheckBoxPreference;

.field private mPaymentEnablePref:Landroid/preference/CheckBoxPreference;

.field private mPrivacySecurityPref:Landroid/preference/CheckBoxPreference;

.field private mReportPref:Landroid/preference/PreferenceScreen;

.field private mSourceAlipayPref:Landroid/preference/CheckBoxPreference;

.field private mSourceMmsPref:Landroid/preference/CheckBoxPreference;

.field private mSourceWechatPref:Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->setOtherPreferenceEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mPaymentEnablePref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private onAssistantEnabledPrefClicked(Z)V
    .locals 3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1b0b0383

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b0381

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$3;-><init>(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b0380

    new-instance v2, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$2;-><init>(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b0382

    new-instance v2, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$1;-><init>(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/payment/PaymentPrefs;->setPaymentCardEnabled(Landroid/content/Context;Z)V

    invoke-direct {p0, v1}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->setOtherPreferenceEnabled(Z)V

    goto :goto_0
.end method

.method private onClearRecordsPrefClicked()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x1b0b030f

    invoke-virtual {p0, v1}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1b0b02f6

    invoke-virtual {p0, v2}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;

    invoke-direct {v3, p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$4;-><init>(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->showSimpleDialog(Landroid/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private onNotificationPrefClicked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/payment/PaymentPrefs;->setNotificationEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method private onPrivacySecurityPrefClicked(Z)V
    .locals 6

    iget-object v1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mLockSettingsHelper:Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;

    invoke-virtual {v1}, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->isACLockEnabled()Z

    move-result v0

    const-string/jumbo v1, "PaymentPreference"

    const-string/jumbo v2, "isACLockEnabled: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/payment/utils/PaymentUtil;->getPrivacyPasswordConfirmLockIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/payment/utils/PaymentUtil;->getPrivacyPasswordChooseLockIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private onReportFailedRecordPrefClicked()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1b0b0317

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b032e

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b032d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b032f

    new-instance v2, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$5;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity$5;-><init>(Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private onSourcePrefClicked(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/miui/payment/PaymentPrefs;->setSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private setOtherPreferenceEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mNotificationEnablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mClearRecordsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceMmsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceWechatPref:Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceAlipayPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mReportPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method

.method private setupPrefs()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/payment/PaymentPrefs;->isPaymentCardEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v4}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->setOtherPreferenceEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mPaymentEnablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mPrivacySecurityPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/payment/PaymentPrefs;->isPrivacySecurityEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceMmsPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.miui.smsextra"

    invoke-static {v2, v3}, Lcom/miui/payment/PaymentPrefs;->isSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceWechatPref:Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceAlipayPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-static {v2, v3}, Lcom/miui/payment/PaymentPrefs;->isSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private showNoticeDialog(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1b0b0303

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b0301

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b0302

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mNoticeDialog:Lmiui/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceWechatPref:Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;->setChecked(Z)V

    const-string/jumbo v0, "com.tencent.mm"

    invoke-static {p1, v0}, Lcom/miui/payment/PaymentPrefs;->isSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.tencent.mm"

    invoke-static {p1, v0, v3}, Lcom/miui/payment/PaymentPrefs;->setSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmiui/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b060001

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/RuntimePermissionsUtil;->requestAllPermissions(Landroid/app/Activity;[Ljava/lang/String;)V

    const-string/jumbo v0, "settings_set_key_payment"

    invoke-static {v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    iput-object p0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_key_payment_enabled"

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mPaymentEnablePref:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mPaymentEnablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_notification_enabled"

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mNotificationEnablePref:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mNotificationEnablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_clear_records"

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mClearRecordsPref:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mClearRecordsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_privacy_security"

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mPrivacySecurityPref:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mPrivacySecurityPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_source_mms"

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceMmsPref:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceMmsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_source_wechat"

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;

    iput-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceWechatPref:Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceWechatPref:Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/miui/payment/ui/view/DisabledCheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_source_alipay"

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceAlipayPref:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceAlipayPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_report_failed_records"

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mReportPref:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mReportPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;

    iget-object v1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mLockSettingsHelper:Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mNoticeDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mNoticeDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mNoticeDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pref_key_payment_enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mPaymentEnablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->onAssistantEnabledPrefClicked(Z)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "pref_key_notification_enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mNotificationEnablePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->onNotificationPrefClicked(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "pref_key_clear_records"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->onClearRecordsPrefClicked()V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "pref_key_privacy_security"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "pref_key_source_mms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "com.miui.smsextra"

    iget-object v3, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceMmsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->onSourcePrefClicked(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "pref_key_source_wechat"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->showNoticeDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "pref_key_source_alipay"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    iget-object v3, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mSourceAlipayPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->onSourcePrefClicked(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "pref_key_report_failed_records"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->onReportFailedRecordPrefClicked()V

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->setupPrefs()V

    const-string/jumbo v0, "pref_key_privacy"

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/miui/payment/ui/preference/PaymentPreferenceActivity;->mPrivacySecurityPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method
