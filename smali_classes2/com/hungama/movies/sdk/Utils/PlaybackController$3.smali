.class Lcom/hungama/movies/sdk/Utils/PlaybackController$3;
.super Landroid/view/OrientationEventListener;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/movies/sdk/Utils/PlaybackController;->initialiseSensor(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;


# direct methods
.method constructor <init>(Lcom/hungama/movies/sdk/Utils/PlaybackController;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 7

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1000(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    move-result-object v0

    const/16 v1, 0xf0

    const/16 v2, 0x3c

    const/16 v3, 0x12c

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1000(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    move-result-object v0

    sget-object v4, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->WATCH_FOR_LANDSCAPE_CHANGES:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    if-ne v0, v4, :cond_2

    if-lt p1, v2, :cond_0

    const/16 v0, 0x78

    if-le p1, v0, :cond_1

    :cond_0
    if-lt p1, v1, :cond_2

    if-gt p1, v3, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    sget-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->SWITCH_FROM_LANDSCAPE_TO_STANDARD:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    invoke-static {p1, v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1002(Lcom/hungama/movies/sdk/Utils/PlaybackController;Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1000(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1000(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    move-result-object v0

    sget-object v6, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->SWITCH_FROM_LANDSCAPE_TO_STANDARD:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    if-ne v0, v6, :cond_4

    const/16 v0, 0x28

    if-le p1, v0, :cond_3

    const/16 v0, 0x140

    if-lt p1, v0, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {p1, v5}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1100(Lcom/hungama/movies/sdk/Utils/PlaybackController;I)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {p1, v4}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1002(Lcom/hungama/movies/sdk/Utils/PlaybackController;Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object p1, p1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sensorEvent:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1000(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1000(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    move-result-object v0

    sget-object v6, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->WATCH_FOR_POTRAIT_CHANGES:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    if-ne v0, v6, :cond_7

    if-lt p1, v3, :cond_5

    const/16 v0, 0x167

    if-le p1, v0, :cond_6

    :cond_5
    if-ltz p1, :cond_7

    const/16 v0, 0x2d

    if-gt p1, v0, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    sget-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->SWITCH_FROM_POTRAIT_TO_STANDARD:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    invoke-static {p1, v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1002(Lcom/hungama/movies/sdk/Utils/PlaybackController;Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1000(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1000(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    move-result-object v0

    sget-object v6, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->SWITCH_FROM_POTRAIT_TO_STANDARD:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    if-ne v0, v6, :cond_a

    if-gt p1, v3, :cond_8

    if-ge p1, v1, :cond_9

    :cond_8
    const/16 v0, 0x82

    if-gt p1, v0, :cond_a

    if-lt p1, v2, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {p1, v5}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1100(Lcom/hungama/movies/sdk/Utils/PlaybackController;I)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {p1, v4}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$1002(Lcom/hungama/movies/sdk/Utils/PlaybackController;Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object p1, p1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sensorEvent:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    :cond_a
    :goto_0
    return-void
.end method
