.class final Lcom/miui/applicationlock/ar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic akf:Lcom/miui/applicationlock/SettingLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/SettingLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ar;->akf:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/ar;->akf:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0, v3}, Lcom/miui/applicationlock/SettingLockActivity;->app(Lcom/miui/applicationlock/SettingLockActivity;I)I

    iget-object v0, p0, Lcom/miui/applicationlock/ar;->akf:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apg(Lcom/miui/applicationlock/SettingLockActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/ar;->akf:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-virtual {v1}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ar;->akf:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MiuiSettings;->APP_LOCK_USE_FINGERPRINT_STATE:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/miui/applicationlock/ar;->akf:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->aph(Lcom/miui/applicationlock/SettingLockActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ar;->akf:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->api(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    iget-object v0, p0, Lcom/miui/applicationlock/ar;->akf:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0, v4}, Lcom/miui/applicationlock/utils/m;->afF(Landroid/content/Context;Z)V

    return-void
.end method
