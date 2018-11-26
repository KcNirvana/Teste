.class final Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->expander_open_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onItemSelected(Lmiui/widget/DropDownSingleChoiceMenu;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-set3(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->setMode(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-wrap1(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Lmiui/widget/DropDownSingleChoiceMenu;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->dismiss()V

    return-void
.end method

.method public onShow()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->expander_close_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
