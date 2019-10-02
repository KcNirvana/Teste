.class Lcom/npaw/youbora/youboralib/managers/ViewManager$4;
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

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager$4;->this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerEvent(J)V
    .locals 0

    iget-object p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager$4;->this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {p1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->checkAdPlayhead()V

    return-void
.end method
