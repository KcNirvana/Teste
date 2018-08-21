.class Lcom/miui/personalassistant/ui/LaunchActivity$4;
.super Landroid/os/Handler;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/LaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/LaunchActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/LaunchActivity$4;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/LaunchActivity$4;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/LaunchActivity;->access$200(Lcom/miui/personalassistant/ui/LaunchActivity;)Lcom/miui/personalassistant/ui/widget/PaListView;

    move-result-object v3

    new-instance v4, Lcom/miui/personalassistant/ui/LaunchActivity$4$1;

    const v5, 0x1b0400af

    invoke-direct {v4, p0, v5, v2}, Lcom/miui/personalassistant/ui/LaunchActivity$4$1;-><init>(Lcom/miui/personalassistant/ui/LaunchActivity$4;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/miui/personalassistant/ui/widget/PaListView;->setAdapter(Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/LaunchActivity$4;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/miui/personalassistant/ui/LaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x1b0400fd

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/personalassistant/ui/LaunchActivity$4;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    const v3, 0x1b090382

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/miui/personalassistant/ui/LaunchActivity;->access$302(Lcom/miui/personalassistant/ui/LaunchActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/LaunchActivity$4;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/LaunchActivity;->access$300(Lcom/miui/personalassistant/ui/LaunchActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/personalassistant/ui/LaunchActivity$4;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/LaunchActivity$4;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/LaunchActivity;->access$200(Lcom/miui/personalassistant/ui/LaunchActivity;)Lcom/miui/personalassistant/ui/widget/PaListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/personalassistant/ui/widget/PaListView;->addView(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
