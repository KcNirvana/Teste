.class final Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemUpdate(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-set2(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->showLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->setDataUsageType(I)V

    return-void
.end method
