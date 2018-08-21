.class Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;
.super Ljava/lang/Object;
.source "RecordsAdapter.java"

# interfaces
.implements Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/recordlist/RecordsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/miui/payment/ui/recordlist/ItemVH;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/payment/ui/recordlist/ItemVH;->getAdapterPosition()I

    move-result v2

    iget-object v4, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-static {v4}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->access$000(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, p2, Lcom/miui/payment/ui/recordlist/RecordItemVH;

    if-eqz v4, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/miui/payment/ui/recordlist/RecordItemVH;

    iget-object v4, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-static {v4}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->access$100(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-static {v4}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->access$100(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Lcom/miui/payment/ui/recordlist/RecordItemVH;->setChecked(Z)V

    :goto_0
    iget-object v4, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-virtual {v4}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->updateMenu()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-static {v4}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->access$100(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Lcom/miui/payment/ui/recordlist/RecordItemVH;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    iget-object v5, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-virtual {v5, v2}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getRecordAdapterPosition(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getRecordItem(I)Lcom/miui/payment/data/TransactionItem;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v4, "adapter position %s is null object"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/miui/payment/utils/EditorUtil;->startEditRecordActivtiy(Landroid/content/Context;Lcom/miui/payment/data/TransactionItem;)V

    goto :goto_1
.end method
