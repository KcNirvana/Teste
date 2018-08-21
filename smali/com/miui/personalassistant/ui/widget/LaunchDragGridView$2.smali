.class Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;
.super Ljava/lang/Object;
.source "LaunchDragGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x19

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$700(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$800(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I

    move-result v2

    if-le v1, v2, :cond_0

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$1000(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$900(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$1200(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$700(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$1300(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;II)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->smoothScrollBy(II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$700(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$1100(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I

    move-result v2

    if-ge v1, v2, :cond_1

    const/16 v0, -0x14

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$1000(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$900(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$1000(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$2;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$900(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
