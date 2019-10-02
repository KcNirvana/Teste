.class Lcom/npaw/youbora/youboralib/utils/Timer$1;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/npaw/youbora/youboralib/utils/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/npaw/youbora/youboralib/utils/Timer;


# direct methods
.method constructor <init>(Lcom/npaw/youbora/youboralib/utils/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/utils/Timer$1;->this$0:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer$1;->this$0:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->access$100(Lcom/npaw/youbora/youboralib/utils/Timer;)Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/utils/Timer$1;->this$0:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-static {v1}, Lcom/npaw/youbora/youboralib/utils/Timer;->access$000(Lcom/npaw/youbora/youboralib/utils/Timer;)Lcom/npaw/youbora/youboralib/utils/Chrono;

    move-result-object v1

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->stop()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;->onTimerEvent(J)V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/utils/Timer$1;->this$0:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->access$200(Lcom/npaw/youbora/youboralib/utils/Timer;)V

    return-void
.end method
