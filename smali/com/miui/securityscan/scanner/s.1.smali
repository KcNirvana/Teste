.class Lcom/miui/securityscan/scanner/s;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Dw:Lcom/miui/securityscan/scanner/s;


# instance fields
.field private Dx:Lcom/miui/common/f/a;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/s;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/s;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Lcom/miui/common/f/a;->getInstance(Landroid/content/Context;)Lcom/miui/common/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/s;->Dx:Lcom/miui/common/f/a;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/s;
    .locals 3

    const-class v1, Lcom/miui/securityscan/scanner/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securityscan/scanner/s;->Dw:Lcom/miui/securityscan/scanner/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/scanner/s;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/securityscan/scanner/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/securityscan/scanner/s;->Dw:Lcom/miui/securityscan/scanner/s;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/scanner/s;->Dw:Lcom/miui/securityscan/scanner/s;
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
.method public ET(Lcom/miui/securityscan/scanner/l;Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;)V
    .locals 4

    const-string/jumbo v0, "CacheCheckManager"

    const-string/jumbo v1, "startScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/s;->Dx:Lcom/miui/common/f/a;

    const-string/jumbo v1, "com.miui.cleanmaster.action.CHECK_GARBAGE_CHECK"

    const-string/jumbo v2, "com.miui.cleanmaster"

    new-instance v3, Lcom/miui/securityscan/scanner/X;

    invoke-direct {v3, p0, p2, p1}, Lcom/miui/securityscan/scanner/X;-><init>(Lcom/miui/securityscan/scanner/s;Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;Lcom/miui/securityscan/scanner/l;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/common/f/a;->aMn(Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/f/b;)Z

    return-void
.end method
