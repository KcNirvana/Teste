.class Lcom/npaw/youbora/youboralib/managers/ViewManager$2;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/npaw/youbora/youboralib/managers/ViewManager;-><init>(Lcom/npaw/youbora/youboralib/managers/InfoManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;


# direct methods
.method constructor <init>(Lcom/npaw/youbora/youboralib/managers/ViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager$2;->this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerEvent(J)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "diffTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager$2;->this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendPing(Ljava/util/Map;)V

    return-void
.end method
