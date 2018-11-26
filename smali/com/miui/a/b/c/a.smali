.class public Lcom/miui/a/b/c/a;
.super Lcom/miui/a/b/c/c;
.source ""


# static fields
.field private static aYE:Lcom/miui/a/b/c/a;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/a/b/c/a;->aYE:Lcom/miui/a/b/c/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/a/b/c/c;-><init>()V

    iput-object p1, p0, Lcom/miui/a/b/c/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized btu(Landroid/content/Context;)Lcom/miui/a/b/c/a;
    .locals 2

    const-class v1, Lcom/miui/a/b/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/a/b/c/a;->aYE:Lcom/miui/a/b/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/a/b/c/a;

    invoke-direct {v0, p0}, Lcom/miui/a/b/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/a/b/c/a;->aYE:Lcom/miui/a/b/c/a;

    :cond_0
    sget-object v0, Lcom/miui/a/b/c/a;->aYE:Lcom/miui/a/b/c/a;
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
.method public btv(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/a/b/c/a;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    :try_start_0
    const-string/jumbo v1, "removeTask"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/miui/a/c/a;->btB(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
