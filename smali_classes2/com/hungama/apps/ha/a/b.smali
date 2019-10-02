.class public final Lcom/hungama/apps/ha/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/hungama/apps/ha/a/b;


# instance fields
.field private b:Lcom/hungama/apps/ha/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hungama/apps/ha/a/a;

    new-instance v1, Lcom/hungama/apps/ha/a/c;

    invoke-direct {v1, p1}, Lcom/hungama/apps/ha/a/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/hungama/apps/ha/a/a;-><init>(Landroid/content/Context;Lcom/hungama/apps/ha/a/c;)V

    iput-object v0, p0, Lcom/hungama/apps/ha/a/b;->b:Lcom/hungama/apps/ha/a/a;

    iget-object p1, p0, Lcom/hungama/apps/ha/a/b;->b:Lcom/hungama/apps/ha/a/a;

    invoke-virtual {p1}, Lcom/hungama/apps/ha/a/a;->a()V

    return-void
.end method

.method public static a()Lcom/hungama/apps/ha/a/b;
    .locals 1

    sget-object v0, Lcom/hungama/apps/ha/a/b;->a:Lcom/hungama/apps/ha/a/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/hungama/apps/ha/a/b;->a:Lcom/hungama/apps/ha/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hungama/apps/ha/a/b;

    invoke-direct {v0, p0}, Lcom/hungama/apps/ha/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hungama/apps/ha/a/b;->a:Lcom/hungama/apps/ha/a/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/hungama/apps/ha/a/a/a;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hungama/apps/ha/a/b;->b:Lcom/hungama/apps/ha/a/a;

    invoke-virtual {v0, p1}, Lcom/hungama/apps/ha/a/a;->a(Lcom/hungama/apps/ha/a/a/a;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/hungama/apps/ha/a/a/d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hungama/apps/ha/a/b;->b:Lcom/hungama/apps/ha/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/hungama/apps/ha/a/a;->a(Ljava/lang/String;Lcom/hungama/apps/ha/a/a/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
