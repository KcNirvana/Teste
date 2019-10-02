.class Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserAccounts"
.end annotation


# instance fields
.field private final accountCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private authTokenCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cacheLock:Ljava/lang/Object;

.field private final credentialsPermissionNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final openHelper:Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

.field private final signinRequiredNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private userDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;

    iput p2, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->userId:I

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    invoke-direct {v1, p1, p2}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic access$000(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->userId:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    return-object p0
.end method
