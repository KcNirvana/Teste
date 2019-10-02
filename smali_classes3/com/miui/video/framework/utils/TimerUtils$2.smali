.class Lcom/miui/video/framework/utils/TimerUtils$2;
.super Ljava/util/TimerTask;
.source "TimerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/framework/utils/TimerUtils;->addPeriodTimer(ILcom/miui/video/framework/utils/TimerUtils$ITimerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/framework/utils/TimerUtils;

.field final synthetic val$periodSecond:I


# direct methods
.method constructor <init>(Lcom/miui/video/framework/utils/TimerUtils;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/utils/TimerUtils$2;->this$0:Lcom/miui/video/framework/utils/TimerUtils;

    iput p2, p0, Lcom/miui/video/framework/utils/TimerUtils$2;->val$periodSecond:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/framework/utils/TimerUtils$2;->this$0:Lcom/miui/video/framework/utils/TimerUtils;

    invoke-static {v0}, Lcom/miui/video/framework/utils/TimerUtils;->access$300(Lcom/miui/video/framework/utils/TimerUtils;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/framework/utils/TimerUtils$2;->val$periodSecond:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
