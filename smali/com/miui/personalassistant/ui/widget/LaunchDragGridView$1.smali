.class Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$1;
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

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$002(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;Z)Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$100(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$200(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$300(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$400(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView$1;->this$0:Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$500(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;->access$600(Lcom/miui/personalassistant/ui/widget/LaunchDragGridView;Landroid/graphics/Bitmap;II)V

    return-void
.end method
