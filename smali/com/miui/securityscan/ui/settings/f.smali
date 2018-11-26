.class final Lcom/miui/securityscan/ui/settings/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Iu:Lcom/miui/securityscan/ui/settings/SettingsActivity;

.field final synthetic Iv:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/settings/SettingsActivity;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/f;->Iu:Lcom/miui/securityscan/ui/settings/SettingsActivity;

    iput-object p2, p0, Lcom/miui/securityscan/ui/settings/f;->Iv:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/f;->Iv:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
