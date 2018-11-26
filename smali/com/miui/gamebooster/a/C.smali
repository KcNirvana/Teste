.class public Lcom/miui/gamebooster/a/C;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static eW:Lcom/miui/gamebooster/a/C;


# instance fields
.field private eU:Lcom/miui/common/f/a;

.field private eV:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/a/C;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/common/f/a;->getInstance(Landroid/content/Context;)Lcom/miui/common/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/a/C;->eU:Lcom/miui/common/f/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/a/C;->eV:Landroid/content/ContentResolver;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/a/C;
    .locals 3

    const-class v1, Lcom/miui/gamebooster/a/C;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gamebooster/a/C;->eW:Lcom/miui/gamebooster/a/C;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/a/C;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/gamebooster/a/C;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gamebooster/a/C;->eW:Lcom/miui/gamebooster/a/C;

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/a/C;->eW:Lcom/miui/gamebooster/a/C;
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
.method public ic(Lcom/miui/common/f/b;)V
    .locals 5

    const-string/jumbo v0, "GameBoosterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBindGameService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/a/C;->eU:Lcom/miui/common/f/a;

    const-string/jumbo v3, "com.miui.gamebooster.service.GameBoosterServices"

    const-string/jumbo v4, "com.miui.securitycenter"

    invoke-virtual {v2, v3, v4, p1}, Lcom/miui/common/f/a;->aMn(Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/f/b;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public id()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/a/C;->eU:Lcom/miui/common/f/a;

    const-string/jumbo v1, "com.miui.gamebooster.service.GameBoosterServices"

    invoke-virtual {v0, v1}, Lcom/miui/common/f/a;->aMr(Ljava/lang/String;)V

    return-void
.end method
