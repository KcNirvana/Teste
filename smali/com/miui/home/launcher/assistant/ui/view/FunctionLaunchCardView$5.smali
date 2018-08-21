.class Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$5;
.super Ljava/lang/Object;
.source "FunctionLaunchCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->reloadFunctionItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
