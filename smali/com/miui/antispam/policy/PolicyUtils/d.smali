.class public Lcom/miui/antispam/policy/PolicyUtils/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private YC:Lcom/miui/guardprovider/aidl/IURLScanServer;

.field private YD:Ljava/util/concurrent/CountDownLatch;

.field private YE:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "URLFilterManager"

    sput-object v0, Lcom/miui/antispam/policy/PolicyUtils/d;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/antispam/policy/PolicyUtils/f;

    invoke-direct {v0, p0}, Lcom/miui/antispam/policy/PolicyUtils/f;-><init>(Lcom/miui/antispam/policy/PolicyUtils/d;)V

    iput-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YE:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YD:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xd()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YD:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/d;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "exception when create URLFilterManager: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private Xd()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.guardprovider.action.urlscan"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.guardprovider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YE:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private Xe()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YC:Lcom/miui/guardprovider/aidl/IURLScanServer;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YC:Lcom/miui/guardprovider/aidl/IURLScanServer;

    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YE:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/miui/antispam/policy/PolicyUtils/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unbindGuardProviderService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic Xf(Lcom/miui/antispam/policy/PolicyUtils/d;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YD:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic Xg(Lcom/miui/antispam/policy/PolicyUtils/d;Lcom/miui/guardprovider/aidl/IURLScanServer;)Lcom/miui/guardprovider/aidl/IURLScanServer;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YC:Lcom/miui/guardprovider/aidl/IURLScanServer;

    return-object p1
.end method


# virtual methods
.method public Xb(Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YC:Lcom/miui/guardprovider/aidl/IURLScanServer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YC:Lcom/miui/guardprovider/aidl/IURLScanServer;

    const-string/jumbo v2, "AVL"

    invoke-interface {v1, v2, p1}, Lcom/miui/guardprovider/aidl/IURLScanServer;->aqb(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xe()V

    :goto_0
    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/d;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanURL result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/miui/antispam/policy/PolicyUtils/d;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exception in scanURL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xe()V

    throw v0
.end method

.method public Xc()V
    .locals 5

    const/4 v1, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YC:Lcom/miui/guardprovider/aidl/IURLScanServer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/d;->YC:Lcom/miui/guardprovider/aidl/IURLScanServer;

    const-string/jumbo v2, "AVL"

    invoke-interface {v0, v2}, Lcom/miui/guardprovider/aidl/IURLScanServer;->aqc(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xe()V

    :goto_1
    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/miui/antispam/policy/PolicyUtils/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "AVL URL rules update failed !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/miui/antispam/policy/PolicyUtils/d;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exception in updateURLRule : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xe()V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xe()V

    throw v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_2
    sget-object v0, Lcom/miui/antispam/policy/PolicyUtils/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "AVL URL rules update success !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method
