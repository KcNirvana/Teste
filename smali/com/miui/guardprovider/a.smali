.class public Lcom/miui/guardprovider/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static akL:Lcom/miui/guardprovider/a;


# instance fields
.field private akI:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

.field private akJ:I

.field private akK:Z

.field private akM:Lcom/miui/guardprovider/d;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/miui/guardprovider/a;->akK:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/guardprovider/a;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/miui/guardprovider/a;->akI:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iput v1, p0, Lcom/miui/guardprovider/a;->akJ:I

    new-instance v0, Lcom/miui/guardprovider/d;

    invoke-direct {v0, p0, v2}, Lcom/miui/guardprovider/d;-><init>(Lcom/miui/guardprovider/a;Lcom/miui/guardprovider/d;)V

    iput-object v0, p0, Lcom/miui/guardprovider/a;->akM:Lcom/miui/guardprovider/d;

    return-void
.end method

.method private aqm()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.guardprovider.action.antivirusservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.guardprovider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/guardprovider/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/guardprovider/a;->akM:Lcom/miui/guardprovider/d;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private aqn()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/guardprovider/a;->akI:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/guardprovider/a;->akK:Z

    iget-object v0, p0, Lcom/miui/guardprovider/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/guardprovider/a;->akM:Lcom/miui/guardprovider/d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method static synthetic aqo(Lcom/miui/guardprovider/a;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;
    .locals 1

    iget-object v0, p0, Lcom/miui/guardprovider/a;->akI:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    return-object v0
.end method

.method static synthetic aqp(Lcom/miui/guardprovider/a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;
    .locals 0

    iput-object p1, p0, Lcom/miui/guardprovider/a;->akI:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    return-object p1
.end method

.method static synthetic aqq(Lcom/miui/guardprovider/a;I)I
    .locals 0

    iput p1, p0, Lcom/miui/guardprovider/a;->akJ:I

    return p1
.end method

.method static synthetic aqr(Lcom/miui/guardprovider/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/guardprovider/a;->akK:Z

    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/guardprovider/a;
    .locals 2

    const-class v1, Lcom/miui/guardprovider/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/guardprovider/a;->akL:Lcom/miui/guardprovider/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/guardprovider/a;

    invoke-direct {v0, p0}, Lcom/miui/guardprovider/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/guardprovider/a;->akL:Lcom/miui/guardprovider/a;

    :cond_0
    sget-object v0, Lcom/miui/guardprovider/a;->akL:Lcom/miui/guardprovider/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public aqh()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/guardprovider/a;->akI:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/guardprovider/a;->akJ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/guardprovider/a;->akJ:I

    const-string/jumbo v0, "GpBinderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/guardprovider/a;->akJ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/guardprovider/a;->akJ:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/guardprovider/a;->aqn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aqi(Lcom/miui/guardprovider/b;)V
    .locals 3

    iget v0, p0, Lcom/miui/guardprovider/a;->akJ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/guardprovider/a;->akJ:I

    const-string/jumbo v0, "GpBinderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/guardprovider/a;->akJ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/miui/guardprovider/a;->aql(Lcom/miui/guardprovider/b;)V

    return-void
.end method

.method public aqj(Lcom/miui/guardprovider/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/guardprovider/a;->akM:Lcom/miui/guardprovider/d;

    invoke-virtual {v0, p1}, Lcom/miui/guardprovider/d;->aqv(Lcom/miui/guardprovider/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aqk(Lcom/miui/guardprovider/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/guardprovider/a;->akM:Lcom/miui/guardprovider/d;

    invoke-virtual {v0, p1}, Lcom/miui/guardprovider/d;->aqw(Lcom/miui/guardprovider/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aql(Lcom/miui/guardprovider/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/guardprovider/a;->akI:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/guardprovider/a;->akI:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-interface {p1, v0}, Lcom/miui/guardprovider/b;->aqs(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/guardprovider/a;->akI:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/miui/guardprovider/a;->aql(Lcom/miui/guardprovider/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/guardprovider/a;->akM:Lcom/miui/guardprovider/d;

    invoke-virtual {v0, p1}, Lcom/miui/guardprovider/d;->aqu(Lcom/miui/guardprovider/b;)V

    iget-boolean v0, p0, Lcom/miui/guardprovider/a;->akK:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/guardprovider/a;->aqm()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/guardprovider/a;->akK:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Lcom/miui/guardprovider/a;->aqn()V

    return-void
.end method
