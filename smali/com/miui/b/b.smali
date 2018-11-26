.class public Lcom/miui/b/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile baQ:Lcom/miui/b/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/b/b;
    .locals 2

    sget-object v0, Lcom/miui/b/b;->baQ:Lcom/miui/b/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/b/b;->baQ:Lcom/miui/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/b/b;

    invoke-direct {v0}, Lcom/miui/b/b;-><init>()V

    sput-object v0, Lcom/miui/b/b;->baQ:Lcom/miui/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/miui/b/b;->baQ:Lcom/miui/b/b;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bxo(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public bxp(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
