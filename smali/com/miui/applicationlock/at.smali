.class final Lcom/miui/applicationlock/at;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic akh:Lcom/miui/applicationlock/SettingLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/SettingLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/at;->akh:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected apC(Ljava/lang/Integer;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/applicationlock/at;->akh:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apk(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/at;->akh:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-virtual {v1}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0c0041

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/at;->akh:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/privacyapps/c;->bci:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    iget-object v0, p0, Lcom/miui/applicationlock/at;->akh:Lcom/miui/applicationlock/SettingLockActivity;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/SettingLockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v0, p0, Lcom/miui/applicationlock/at;->akh:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apn(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/applicationlock/at;->akh:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v4}, Lcom/miui/applicationlock/SettingLockActivity;->apn(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/security/SecurityManager;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lmiui/security/SecurityManager;->isPrivacyApp(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/applicationlock/at;->akh:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v4}, Lcom/miui/applicationlock/SettingLockActivity;->apn(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/security/SecurityManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v5}, Lmiui/security/SecurityManager;->setPrivacyApp(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/at;->akh:Lcom/miui/applicationlock/SettingLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockActivity;->apn(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->agF(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/at;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/at;->apC(Ljava/lang/Integer;)V

    return-void
.end method
