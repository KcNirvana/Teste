.class public Lcom/miui/securityscan/ui/settings/SettingsActivity;
.super Lcom/miui/common/a/c;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final HS:Ljava/lang/String;

.field private final HT:Ljava/lang/String;

.field private HU:Lmiui/preference/ValuePreference;

.field private HV:Landroid/preference/Preference;

.field private HW:Landroid/preference/Preference;

.field private HX:Landroid/preference/Preference;

.field private HY:Landroid/preference/CheckBoxPreference;

.field private HZ:Landroid/preference/Preference;

.field private Ia:Landroid/preference/Preference;

.field private Ib:Landroid/preference/Preference;

.field private Ic:Landroid/preference/CheckBoxPreference;

.field private Id:Landroid/preference/CheckBoxPreference;

.field private Ie:Landroid/preference/CheckBoxPreference;

.field private If:Landroid/preference/Preference;

.field private Ig:Landroid/preference/Preference;

.field private Ih:Ljava/lang/String;

.field private mAlertDialog:Lmiui/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/c;-><init>()V

    const-string/jumbo v0, "miui.intent.action.APP_SETTINGS"

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HS:Ljava/lang/String;

    const-string/jumbo v0, "preference_key_manual_item_white_list"

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HT:Ljava/lang/String;

    return-void
.end method

.method private static HI(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":miui:starting_window_label"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_settings_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private HJ()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ih:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f07063a

    invoke-virtual {p0, v1, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070638

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "miui.intent.action.APP_SETTINGS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070604

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->setTitle(I)V

    :cond_0
    invoke-static {p0}, Lcom/miui/common/b/k;->aIz(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ih:Ljava/lang/String;

    const v0, 0x7f0705ae

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HX:Landroid/preference/Preference;

    const v0, 0x7f0705af

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HU:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HU:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo v0, "preference_key_manual_item_white_list"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ia:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HU:Lmiui/preference/ValuePreference;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ih:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f07063b

    invoke-virtual {p0, v2, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ia:Landroid/preference/Preference;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HX:Landroid/preference/Preference;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HU:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f0705b0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f0705b1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ie:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ie:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ie:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securitycenter/a;->bsh(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const v0, 0x7f0705bb

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HY:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HY:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0705bd

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const v0, 0x7f0705b2

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HZ:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HZ:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f0705b3

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ib:Landroid/preference/Preference;

    const-string/jumbo v0, "miui.intent.action.NETWORKASSISTANT_SETTINGS"

    const v1, 0x7f070647

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HI(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ib:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v0, 0x7f0705b4

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HV:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HV:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f0705b5

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ig:Landroid/preference/Preference;

    const-string/jumbo v0, "com.miui.securitycenter.action.POWER_SETTINGS"

    const v1, 0x7f070649

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HI(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ig:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v0, 0x7f0705b6

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HW:Landroid/preference/Preference;

    const-string/jumbo v0, "com.miui.securitycenter.action.ANTIVIRUS_SETTINGS"

    const v1, 0x7f07064a

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HI(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HW:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v0, 0x7f0705d1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->If:Landroid/preference/Preference;

    const-string/jumbo v0, "miui.intent.action.OPTIMIZE_MANAGE_SETTINGS"

    const v1, 0x7f0703ff

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HI(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->If:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v0, 0x7f0705c6

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ic:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Ic:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/securityscan/c;->Ov()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const v0, 0x7f0705c7

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Id:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Id:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->Id:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/securityscan/c;->Op()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f0705c5

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-static {p0}, Lcom/miui/cleanmaster/b;->bxB(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0705be

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HZ:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/c;->onDestroy()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0705b1

    invoke-virtual {p0, v2}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/securitycenter/a;->bss(Landroid/content/ContentResolver;Z)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_0

    const-string/jumbo v0, "notify"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0705bb

    invoke-virtual {p0, v2}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p0}, Lcom/miui/securityscan/utils/a;->Ii(Landroid/app/Activity;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/ui/settings/e;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/settings/e;-><init>(Lcom/miui/securityscan/ui/settings/SettingsActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/securityscan/ui/settings/f;

    invoke-direct {v1, p0, p1}, Lcom/miui/securityscan/ui/settings/f;-><init>(Lcom/miui/securityscan/ui/settings/SettingsActivity;Landroid/preference/Preference;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->mAlertDialog:Lmiui/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SettingsActivity"

    const-string/jumbo v2, "show CTA alert dialog:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/securityscan/utils/a;->Ik(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0705c6

    invoke-virtual {p0, v2}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/miui/securityscan/c;->OB(Z)V

    return v3

    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0705c7

    invoke-virtual {p0, v2}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/miui/securityscan/c;->OC(Z)V

    invoke-static {p0, v0}, Lcom/miui/securityscan/a/c;->Ic(Landroid/content/Context;Z)V

    return v3

    :cond_5
    return v4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0705b0

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://www.miui.com/res/doc/privacy.html?region="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0705af

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HJ()V

    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0705b2

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.miui.securitycenter.action.GARBAGE_CLEANUP_SETTINGS"

    const v1, 0x7f070646

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HI(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->aIy(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f070712

    invoke-static {p0, v0}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    :cond_2
    return v4

    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0705b4

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getUserId()I

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f070143

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    :cond_4
    const-string/jumbo v0, "com.miui.antispam.action.ANTISPAM_SETTINGS"

    const v1, 0x7f070648

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HI(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_5
    return v2
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/c;->onResume()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->HY:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
