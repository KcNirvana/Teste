.class public final Lcom/hungama/apps/ha/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/hungama/apps/ha/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hungama/apps/ha/c/a;

    invoke-direct {v0}, Lcom/hungama/apps/ha/c/a;-><init>()V

    sput-object v0, Lcom/hungama/apps/ha/c/a;->a:Lcom/hungama/apps/ha/c/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/hungama/apps/ha/c/a;
    .locals 2

    const-class v0, Lcom/hungama/apps/ha/c/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hungama/apps/ha/c/a;->a:Lcom/hungama/apps/ha/c/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hungama/apps/ha/c/a;

    invoke-direct {v1}, Lcom/hungama/apps/ha/c/a;-><init>()V

    sput-object v1, Lcom/hungama/apps/ha/c/a;->a:Lcom/hungama/apps/ha/c/a;

    :cond_0
    sget-object v1, Lcom/hungama/apps/ha/c/a;->a:Lcom/hungama/apps/ha/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
