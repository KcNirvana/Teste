.class public Lcom/miui/permcenter/DebugSettingsAcitivty;
.super Lcom/miui/common/a/c;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Rh:Landroid/preference/CheckBoxPreference;


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

    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/DebugSettingsAcitivty;->addPreferencesFromResource(I)V

    const v0, 0x7f0705c8

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/DebugSettingsAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/DebugSettingsAcitivty;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/permcenter/DebugSettingsAcitivty;->Rh:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/permcenter/DebugSettingsAcitivty;->Rh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p0}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/DebugSettingsAcitivty;->Rh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/a;->QV()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/miui/permcenter/DebugSettingsAcitivty;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/m;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/m;-><init>(Lcom/miui/permcenter/DebugSettingsAcitivty;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0705c8

    invoke-virtual {p0, v2}, Lcom/miui/permcenter/DebugSettingsAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/permcenter/install/a;->Rd(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
