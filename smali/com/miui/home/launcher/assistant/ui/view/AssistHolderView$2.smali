.class Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$2;
.super Landroid/os/Handler;
.source "AssistHolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->scrollList(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
