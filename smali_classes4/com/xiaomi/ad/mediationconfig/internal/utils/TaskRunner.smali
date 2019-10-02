.class public Lcom/xiaomi/ad/mediationconfig/internal/utils/TaskRunner;
.super Ljava/lang/Object;
.source "TaskRunner.java"


# static fields
.field public static final CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/TaskRunner;->SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
