.class Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "PriorityThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory$1;->this$0:Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory$1;->this$0:Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;->access$000(Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
