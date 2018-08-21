.class public Lcom/miui/personalassistant/shopping/bean/DataHolder;
.super Ljava/lang/Object;
.source "DataHolder.java"


# static fields
.field private static sInstance:Lcom/miui/personalassistant/shopping/bean/DataHolder;


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/shopping/bean/Shopping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/personalassistant/shopping/bean/DataHolder;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/shopping/bean/DataHolder;->sInstance:Lcom/miui/personalassistant/shopping/bean/DataHolder;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/personalassistant/shopping/bean/DataHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/shopping/bean/DataHolder;->sInstance:Lcom/miui/personalassistant/shopping/bean/DataHolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/shopping/bean/DataHolder;

    invoke-direct {v0}, Lcom/miui/personalassistant/shopping/bean/DataHolder;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/shopping/bean/DataHolder;->sInstance:Lcom/miui/personalassistant/shopping/bean/DataHolder;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/shopping/bean/DataHolder;->sInstance:Lcom/miui/personalassistant/shopping/bean/DataHolder;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/shopping/bean/Shopping;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/bean/DataHolder;->data:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/shopping/bean/Shopping;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/bean/DataHolder;->data:Ljava/util/List;

    return-void
.end method
