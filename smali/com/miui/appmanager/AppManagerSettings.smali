.class public Lcom/miui/appmanager/AppManagerSettings;
.super Lcom/miui/common/a/c;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private aTZ:Lcom/miui/appmanager/i;

.field private aUa:Landroid/preference/CheckBoxPreference;

.field private aUb:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerSettings;->addPreferencesFromResource(I)V

    new-instance v0, Lcom/miui/appmanager/i;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerSettings;->aTZ:Lcom/miui/appmanager/i;

    const-string/jumbo v0, "am_update_remind"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerSettings;->aUb:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerSettings;->aUb:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerSettings;->aTZ:Lcom/miui/appmanager/i;

    invoke-virtual {v1}, Lcom/miui/appmanager/i;->bme()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerSettings;->aUb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "key_open_ads"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerSettings;->aUa:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerSettings;->aUa:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerSettings;->aTZ:Lcom/miui/appmanager/i;

    invoke-virtual {v1}, Lcom/miui/appmanager/i;->bmg()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerSettings;->aUa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "am_update_remind"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerSettings;->aTZ:Lcom/miui/appmanager/i;

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/i;->bmf(Z)V

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/appmanager/f;->aTw:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string/jumbo v1, "key_open_ads"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerSettings;->aTZ:Lcom/miui/appmanager/i;

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/i;->bmh(Z)V

    goto :goto_0
.end method
