.class public Lcom/miui/applicationlock/utils/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile abl:Lcom/miui/applicationlock/utils/e;


# instance fields
.field private final abh:Ljava/lang/String;

.field private abi:Ljava/util/HashSet;

.field private abj:Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;

.field private abk:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "access_control_lock_enabled"

    iput-object v0, p0, Lcom/miui/applicationlock/utils/e;->abh:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/utils/e;->abi:Ljava/util/HashSet;

    new-instance v0, Lcom/miui/applicationlock/utils/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/applicationlock/utils/u;-><init>(Lcom/miui/applicationlock/utils/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/applicationlock/utils/e;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    new-instance v1, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;

    invoke-direct {v1, v0}, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/applicationlock/utils/e;->abj:Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;

    return-void
.end method

.method static synthetic aeI(Lcom/miui/applicationlock/utils/e;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/e;->abi:Ljava/util/HashSet;

    return-object v0
.end method

.method public static aeu(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    sget-object v1, Lcom/miui/applicationlock/utils/m;->abv:Lmiui/util/ArraySet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;
    .locals 2

    sget-object v0, Lcom/miui/applicationlock/utils/e;->abl:Lcom/miui/applicationlock/utils/e;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/applicationlock/utils/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/applicationlock/utils/e;->abl:Lcom/miui/applicationlock/utils/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/applicationlock/utils/e;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/utils/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/applicationlock/utils/e;->abl:Lcom/miui/applicationlock/utils/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/miui/applicationlock/utils/e;->abl:Lcom/miui/applicationlock/utils/e;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public aeA()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v3, "access_control_lock_convenient"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public aeB()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MiuiSettings;->APP_LOCK_USE_FINGERPRINT_STATE:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aeC(Z)V
    .locals 3

    iget-object v1, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v2, "access_control_lock_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aeD(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v1, "access_control_lock_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public aeE(Z)V
    .locals 3

    iget-object v1, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v2, "access_control_lock_convenient"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aeF(Z)V
    .locals 3

    iget-object v1, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MiuiSettings;->APP_LOCK_USE_FINGERPRINT_STATE:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aeG(Z)V
    .locals 3

    iget-object v1, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v2, "access_control_mask_notification"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aeH(Z)V
    .locals 2

    const-string/jumbo v1, "privacy_password_bind_xiaomi_account_remind"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aep(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v2, "app_lock_add_account_md5"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/b;->aGW([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aeq()Z
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v1, "access_control_lock_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aer()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/e;->abj:Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;

    invoke-virtual {v0}, Lmiui/securitycenter/applicationlock/ChooserLockSettingsHelperWrapper;->isACLockEnabled()Z

    move-result v0

    return v0
.end method

.method public aes(Z)V
    .locals 3

    iget-object v1, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v2, "access_control_lock_enabled"

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aet(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/utils/e;->abi:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/applicationlock/utils/e;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/applicationlock/utils/e;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public aev()I
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v1, "access_control_lock_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public aew()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v1, "app_lock_bind_xiaomi_account"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v2, "app_lock_add_account_md5"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/b;->aGW([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v1, "app_lock_bind_xiaomi_account"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v1, "app_lock_add_account_md5"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aex()Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "privacy_password_bind_xiaomi_account_remind"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public aey()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/applicationlock/utils/e;->abk:Landroid/content/ContentResolver;

    const-string/jumbo v2, "access_control_lock_enabled"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aez(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/e;->abi:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
