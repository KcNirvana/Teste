.class Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# static fields
.field protected static final TAG:Ljava/lang/String; = "IssuseListViewAdapter"


# instance fields
.field private allItem:Ljava/util/List;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->allItem:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->allItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->allItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    new-instance v1, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->allItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getItemSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->setSummaryText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->setTitleViewText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getItemSolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->setFixButtonText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getItemSolution()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->getFixButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->getFixButton()Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
