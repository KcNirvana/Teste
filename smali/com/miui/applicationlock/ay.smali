.class final Lcom/miui/applicationlock/ay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic akn:Lcom/miui/applicationlock/SettingLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/SettingLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ay;->akn:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ay;->akn:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apd(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/ay;->akn:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/utils/b;->adV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aep(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ay;->akn:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->ape(Lcom/miui/applicationlock/SettingLockActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ay;->akn:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apb(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
