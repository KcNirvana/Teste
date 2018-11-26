.class Lcom/miui/applicationlock/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/applicationlock/utils/i;


# instance fields
.field private aiS:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/SettingLockActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/applicationlock/o;->aiS:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/SettingLockActivity;Lcom/miui/applicationlock/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/o;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    return-void
.end method


# virtual methods
.method public aeM(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/o;->aiS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/SettingLockActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apo(Lcom/miui/applicationlock/SettingLockActivity;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/applicationlock/utils/m;->afC(II)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MiuiSettings;->APP_LOCK_USE_FINGERPRINT_STATE:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apc(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apc(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/applicationlock/SettingLockActivity;->app(Lcom/miui/applicationlock/SettingLockActivity;I)I

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->api(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/applicationlock/o;->aiS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/SettingLockActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->aoZ(Lcom/miui/applicationlock/SettingLockActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/SettingLockActivity;->app(Lcom/miui/applicationlock/SettingLockActivity;I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apg(Lcom/miui/applicationlock/SettingLockActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apc(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afD(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/applicationlock/SettingLockActivity;->app(Lcom/miui/applicationlock/SettingLockActivity;I)I

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apc(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->dismiss()V

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MiuiSettings;->APP_LOCK_USE_FINGERPRINT_STATE:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->api(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    goto :goto_0
.end method
