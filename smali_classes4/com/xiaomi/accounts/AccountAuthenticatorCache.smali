.class public Lcom/xiaomi/accounts/AccountAuthenticatorCache;
.super Ljava/lang/Object;
.source "AccountAuthenticatorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Account"


# instance fields
.field private final mAttributesName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mMetaDataName:Ljava/lang/String;

.field private mServiceInfo:Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mServicesLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mContext:Landroid/content/Context;

    const-string p1, "com.xiaomi.accounts.AccountAuthenticator"

    iput-object p1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mInterfaceName:Ljava/lang/String;

    const-string p1, "com.xiaomi.accounts.AccountAuthenticator"

    iput-object p1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mMetaDataName:Ljava/lang/String;

    const-string p1, "account-authenticator"

    iput-object p1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mAttributesName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->generateServicesMap()V

    return-void
.end method

.method private parseServiceInfo(Landroid/content/pm/ResolveInfo;)Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/accounts/AuthenticatorDescription;

    const-string v5, "com.xiaomi"

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v0, Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;

    invoke-direct {v0, v2, v1, p1}, Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;I)V

    return-object v0
.end method


# virtual methods
.method generateServicesMap()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->parseServiceInfo(Landroid/content/pm/ResolveInfo;)Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mServiceInfo:Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;

    return-void
.end method

.method public getAllServices()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mServiceInfo:Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Landroid/accounts/AuthenticatorDescription;)Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AuthenticatorDescription;",
            ")",
            "Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mServiceInfo:Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;

    return-object p1
.end method

.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .locals 7

    new-instance p1, Landroid/accounts/AuthenticatorDescription;

    const-string v1, "com.xiaomi"

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    return-object p1
.end method
