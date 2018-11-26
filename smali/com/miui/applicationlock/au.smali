.class final Lcom/miui/applicationlock/au;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aki:Lcom/miui/applicationlock/SettingLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/SettingLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->agr(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apf(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apj(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v1, v3}, Lcom/miui/applicationlock/SettingLockActivity;->apq(Lcom/miui/applicationlock/SettingLockActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apd(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/applicationlock/utils/e;->aeD(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0, v3}, Lcom/miui/applicationlock/SettingLockActivity;->aps(Lcom/miui/applicationlock/SettingLockActivity;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apj(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v1, v2}, Lcom/miui/applicationlock/SettingLockActivity;->apq(Lcom/miui/applicationlock/SettingLockActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apd(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/applicationlock/utils/e;->aeD(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0, v2}, Lcom/miui/applicationlock/SettingLockActivity;->aps(Lcom/miui/applicationlock/SettingLockActivity;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apj(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v1, v4}, Lcom/miui/applicationlock/SettingLockActivity;->apq(Lcom/miui/applicationlock/SettingLockActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apd(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/applicationlock/utils/e;->aeD(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/au;->aki:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0, v4}, Lcom/miui/applicationlock/SettingLockActivity;->aps(Lcom/miui/applicationlock/SettingLockActivity;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
