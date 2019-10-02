.class final Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;
.super Ljava/lang/Object;
.source "JsonConfigLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u000bR\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;",
        "",
        "force",
        "",
        "(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;Z)V",
        "mForce2UpdateServer",
        "task",
        "Ljava/lang/Runnable;",
        "getTask",
        "()Ljava/lang/Runnable;",
        "cancel",
        "",
        "start",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private mForce2UpdateServer:Z

.field private final task:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->this$0:Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->mForce2UpdateServer:Z

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask$task$1;-><init>(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->task:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getMForce2UpdateServer$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->mForce2UpdateServer:Z

    return p0
.end method

.method public static final synthetic access$setMForce2UpdateServer$p(Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->mForce2UpdateServer:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->task:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeIORunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getTask()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->task:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/config/JsonConfigLoader$LoadTask;->task:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    return-void
.end method
