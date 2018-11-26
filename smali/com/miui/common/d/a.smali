.class public Lcom/miui/common/d/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aBq:Ljava/util/concurrent/locks/Condition;

.field private final aBr:Ljava/util/concurrent/locks/Lock;

.field private aBs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/common/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/d/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/miui/common/d/a;->aBr:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/miui/common/d/a;->aBr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/d/a;->aBq:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/d/a;->aBs:I

    return-void
.end method


# virtual methods
.method public aKV()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/d/a;->aBr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lcom/miui/common/d/a;->aBs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/common/d/a;->aBs:I

    iget-object v0, p0, Lcom/miui/common/d/a;->aBr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public aKW()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/d/a;->aBr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    iget v0, p0, Lcom/miui/common/d/a;->aBs:I

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/d/a;->aBq:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/miui/common/d/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Interrupted while waiting on isChallenged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/d/a;->aBr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/d/a;->aBr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget v0, p0, Lcom/miui/common/d/a;->aBs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/common/d/a;->aBs:I

    iget v0, p0, Lcom/miui/common/d/a;->aBs:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/d/a;->aBq:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_0
    iget-object v0, p0, Lcom/miui/common/d/a;->aBr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
