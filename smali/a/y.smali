.class final La/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:La/y;


# instance fields
.field b:J

.field private c:La/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/y;

    invoke-direct {v0}, La/y;-><init>()V

    sput-object v0, La/y;->a:La/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()La/x;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/y;->c:La/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/y;->c:La/x;

    iget-object v1, v0, La/x;->d:La/x;

    iput-object v1, p0, La/y;->c:La/x;

    const/4 v1, 0x0

    iput-object v1, v0, La/x;->d:La/x;

    iget-wide v2, p0, La/y;->b:J

    const-wide/16 v4, 0x800

    sub-long/2addr v2, v4

    iput-wide v2, p0, La/y;->b:J

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, La/x;

    invoke-direct {v0}, La/x;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(La/x;)V
    .locals 6

    const-wide/16 v4, 0x800

    iget-object v0, p1, La/x;->d:La/x;

    if-nez v0, :cond_0

    iget-object v0, p1, La/x;->e:La/x;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, La/y;->b:J

    add-long/2addr v0, v4

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    monitor-exit p0

    :goto_0
    return-void

    :cond_2
    iget-wide v0, p0, La/y;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, La/y;->b:J

    iget-object v0, p0, La/y;->c:La/x;

    iput-object v0, p1, La/x;->d:La/x;

    const/4 v0, 0x0

    iput v0, p1, La/x;->c:I

    iput v0, p1, La/x;->b:I

    iput-object p1, p0, La/y;->c:La/x;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
