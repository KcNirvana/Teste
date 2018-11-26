.class public Lcom/miui/networkassistant/firewall/BackgroundPolicyService;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundPolicyService"

.field private static sInstance:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/net/MiuiNetworkPolicyManager;

    invoke-direct {v0, p1}, Lcom/miui/net/MiuiNetworkPolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;

    return-void
.end method

.method private getAppRestrictBackground(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "pkgName = ? AND userId = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/firewall/UserConfigure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "bgControl"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;
    .locals 2

    const-class v1, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->sInstance:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->sInstance:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->sInstance:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setAppRestrictBackground(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "userId"

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "bgControl"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/networkassistant/firewall/UserConfigure;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "userTableupdate"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackgroundPolicyService"

    const-string/jumbo v2, "setAppRestrictBackground exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "BackgroundPolicyService"

    const-string/jumbo v2, "setAppRestrictBackground IllegalArgumentException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public isAppRestrictBackground(Ljava/lang/String;I)Z
    .locals 2

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_M_OR_LATER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0, p2}, Lcom/miui/net/MiuiNetworkPolicyManager;->isAppRestrictBackground(I)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getAppRestrictBackground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "restrictBg"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "noBg"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isRestrictBackground()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public setAppRestrictBackground(IZ)V
    .locals 5

    const/4 v1, 0x0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_M_OR_LATER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/net/MiuiNetworkPolicyManager;->setAppRestrictBackground(IZ)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v0, "restrictBg"

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-direct {p0, v4, v0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "miuiAuto"

    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0, p1}, Lcom/miui/net/MiuiNetworkPolicyManager;->setRestrictBackground(Z)V

    return-void
.end method
