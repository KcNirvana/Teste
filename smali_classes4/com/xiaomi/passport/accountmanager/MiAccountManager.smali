.class public Lcom/xiaomi/passport/accountmanager/MiAccountManager;
.super Ljava/lang/Object;
.source "MiAccountManager.java"

# interfaces
.implements Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;,
        Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;
    }
.end annotation


# static fields
.field public static final ACTION_AUTHENTICATOR_INTENT:Ljava/lang/String; = "android.accounts.AccountAuthenticator"

.field public static final AUTHENTICATOR_ATTRIBUTES_NAME:Ljava/lang/String; = "account-authenticator"

.field public static final AUTHENTICATOR_META_DATA_NAME:Ljava/lang/String; = "android.accounts.AccountAuthenticator"

.field public static final ERROR_CODE_BAD_ARGUMENTS:I = 0x7

.field public static final ERROR_CODE_BAD_REQUEST:I = 0x8

.field public static final ERROR_CODE_CANCELED:I = 0x4

.field public static final ERROR_CODE_INVALID_RESPONSE:I = 0x5

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x3

.field public static final ERROR_CODE_REMOTE_EXCEPTION:I = 0x1

.field public static final ERROR_CODE_UNSUPPORTED_OPERATION:I = 0x6

.field public static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field public static final KEY_ACCOUNT_AUTHENTICATOR_RESPONSE:Ljava/lang/String; = "accountAuthenticatorResponse"

.field public static final KEY_ACCOUNT_MANAGER_RESPONSE:Ljava/lang/String; = "accountManagerResponse"

.field public static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "authAccount"

.field public static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final KEY_AUTHENTICATOR_TYPES:Ljava/lang/String; = "authenticator_types"

.field public static final KEY_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field public static final KEY_AUTH_FAILED_MESSAGE:Ljava/lang/String; = "authFailedMessage"

.field public static final KEY_AUTH_TOKEN_LABEL:Ljava/lang/String; = "authTokenLabelKey"

.field public static final KEY_BOOLEAN_RESULT:Ljava/lang/String; = "booleanResult"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final KEY_STS_URL:Ljava/lang/String; = "sts_url"

.field public static final KEY_USERDATA:Ljava/lang/String; = "userdata"

.field public static final LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String; = "account-authenticator"

.field public static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field private static volatile sThis:Lcom/xiaomi/passport/accountmanager/MiAccountManager;


# instance fields
.field private mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

.field private mCanUseServiceTokenUtil:Z

.field private mCanUseSystemAccount:Z

.field private final mContext:Landroid/content/Context;

.field private mLocalAccountAdapter:Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

.field private mSystemAccountAdapter:Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;

.field private mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->ensureApplicationContext(Landroid/app/Application;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->setNonNullApplicationContextContract(Z)V

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->canUseSystemAccount(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mCanUseSystemAccount:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->canUserServiceTokenUtil(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mCanUseServiceTokenUtil:Z

    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->restoreAccountAuthenticator()V

    return-void
.end method

.method private canUseSystemAccount(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v5, "com.xiaomi"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-string v4, "com.miui.miuilite"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private canUserServiceTokenUtil(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.account.action.SERVICE_TOKEN_OP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;
    .locals 2

    if-eqz p0, :cond_2

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->sThis:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->sThis:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->sThis:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->sThis:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private restoreAccountAuthenticator()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->getInstance(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->loadAccountAuthenticator()Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->SYSTEM:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUpAccountManagerConfig(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    return-void
.end method

.method private setUpAccountAdapter(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$1;->$SwitchMap$com$xiaomi$passport$accountmanager$MiAccountManager$AccountAuthenticator:[I

    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->LOCAL:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    goto :goto_0

    :pswitch_1
    iget-boolean p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mCanUseSystemAccount:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->SYSTEM:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->LOCAL:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    :goto_0
    sget-object p1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$1;->$SwitchMap$com$xiaomi$passport$accountmanager$MiAccountManager$AccountAuthenticator:[I

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_2
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mLocalAccountAdapter:Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

    if-nez p1, :cond_1

    new-instance p1, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mLocalAccountAdapter:Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mLocalAccountAdapter:Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mSystemAccountAdapter:Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;

    if-nez p1, :cond_2

    new-instance p1, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mSystemAccountAdapter:Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mSystemAccountAdapter:Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    :goto_1
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->getInstance(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->saveAccountAuthenticator(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setUpAccountManagerConfig(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUpDeviceIdPolicy(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUpAccountAdapter(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    return-void
.end method

.method private setUpDeviceIdPolicy(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$1;->$SwitchMap$com$xiaomi$passport$accountmanager$MiAccountManager$AccountAuthenticator:[I

    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->getInstance()Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->CACHED_THEN_RUNTIME_THEN_PSEUDO:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->setPolicy(Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->getInstance()Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->RUNTIME_DEVICE_ID_ONLY:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->setPolicy(Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public addXiaomiAccount(Ljava/lang/String;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->addXiaomiAccount(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public addXiaomiAccount(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.xiaomi"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "com.xiaomi"

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public canAccessAccount(Landroid/content/Context;)Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture<",
            "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->canAccessAccount(Landroid/content/Context;)Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public canUseSystem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mCanUseSystemAccount:Z

    return v0
.end method

.method public canUseSystemMoreDetailed()Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mCanUseSystemAccount:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->IMPOSSIBLE:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mCanUseServiceTokenUtil:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->CAN_USE_SERVICE_TOKEN_UTIL:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    return-object v0

    :cond_1
    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->REQUIRE_LOCAL_APP_PERMISSION:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    return-object v0
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->clearPassword(Landroid/accounts/Account;)V

    return-void
.end method

.method public confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public editProperties(Ljava/lang/String;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->editProperties(Ljava/lang/String;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public getAccounts()[Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "[",
            "Landroid/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    return-object v1
.end method

.method public getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    return-object v0
.end method

.method public getLocalFeatures()Lcom/xiaomi/passport/LocalFeatures/MiLocalFeaturesManager;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->get(Landroid/content/Context;)Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;

    move-result-object v0

    return-object v0
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p1

    return-object p1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXiaomiAccount()Landroid/accounts/Account;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    const-string v1, "com.xiaomi"

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p1

    return-object p1
.end method

.method public isUseLocal()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->LOCAL:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUseSystem()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->SYSTEM:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method public removeXiaomiAccount(Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.xiaomi"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, p1, p2}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public setUseLocal()V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->LOCAL:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUpAccountManagerConfig(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    return-void
.end method

.method public setUseSystem()V
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->SYSTEM:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUpAccountManagerConfig(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    return-void
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method
