.class final Lcom/miui/applicationlock/az;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic ako:Lcom/miui/applicationlock/SettingLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/SettingLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/az;->ako:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/az;->ako:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apd(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/az;->ako:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/SettingLockActivity;->apd(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/e;->aew()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aep(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/az;->ako:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->ape(Lcom/miui/applicationlock/SettingLockActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/applicationlock/az;->ako:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apd(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aew()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
