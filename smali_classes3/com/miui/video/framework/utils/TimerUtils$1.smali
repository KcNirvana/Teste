.class Lcom/miui/video/framework/utils/TimerUtils$1;
.super Ljava/util/TimerTask;
.source "TimerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/framework/utils/TimerUtils;->addDelayTimer(ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/framework/utils/TimerUtils;

.field final synthetic val$delaySecond:I


# direct methods
.method constructor <init>(Lcom/miui/video/framework/utils/TimerUtils;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/utils/TimerUtils$1;->this$0:Lcom/miui/video/framework/utils/TimerUtils;

    iput p2, p0, Lcom/miui/video/framework/utils/TimerUtils$1;->val$delaySecond:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils$1;->this$0:Lcom/miui/video/framework/utils/TimerUtils;

    invoke-static {v0}, Lcom/miui/video/framework/utils/TimerUtils;->access$000(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/framework/utils/TimerUtils$1;->val$delaySecond:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils$1;->this$0:Lcom/miui/video/framework/utils/TimerUtils;

    iget-object v1, p0, Lcom/miui/video/framework/utils/TimerUtils$1;->this$0:Lcom/miui/video/framework/utils/TimerUtils;

    invoke-static {v1}, Lcom/miui/video/framework/utils/TimerUtils;->access$100(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/miui/video/framework/utils/TimerUtils$1;->val$delaySecond:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TimerUtils;->access$200(Lcom/miui/video/framework/utils/TimerUtils;Ljava/util/Timer;)V

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils$1;->this$0:Lcom/miui/video/framework/utils/TimerUtils;

    invoke-static {v0}, Lcom/miui/video/framework/utils/TimerUtils;->access$100(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/framework/utils/TimerUtils$1;->val$delaySecond:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method
