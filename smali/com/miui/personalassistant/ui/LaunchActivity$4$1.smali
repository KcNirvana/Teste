.class Lcom/miui/personalassistant/ui/LaunchActivity$4$1;
.super Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/LaunchActivity$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/ui/LaunchActivity$4;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/LaunchActivity$4;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/LaunchActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/LaunchActivity$4;

    invoke-direct {p0, p2, p3}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public onBind(ILjava/lang/Object;Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;)V
    .locals 4

    move-object v0, p2

    check-cast v0, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;

    const v1, 0x1b0902b3

    iget-object v2, p0, Lcom/miui/personalassistant/ui/LaunchActivity$4$1;->this$1:Lcom/miui/personalassistant/ui/LaunchActivity$4;

    iget-object v2, v2, Lcom/miui/personalassistant/ui/LaunchActivity$4;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->setText(ILjava/lang/String;)Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;

    const v1, 0x1b0902b5

    const v2, 0x1b0902b4

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;->getArray()Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {p3, v1, v2, v3}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->setItems(IILjava/util/TreeSet;)Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;

    return-void
.end method
