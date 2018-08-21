.class Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;
.super Ljava/lang/Object;
.source "RecordsAdapter.java"

# interfaces
.implements Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;


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

    iput-object p1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;Lcom/miui/payment/ui/recordlist/ItemVH;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-static {v1}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->access$000(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-static {v1}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->access$200(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-static {v1}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->access$200(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/miui/payment/ui/recordlist/ItemVH;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-static {v1}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->access$200(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;

    invoke-interface {v1, p1, p2}, Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;->onLongClicked(Landroid/view/View;Lcom/miui/payment/ui/recordlist/ItemVH;)V

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-static {v1}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->access$100(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-static {v1}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->access$100(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-virtual {v1, v3, v3}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->setMultiChoice(ZZ)V

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;->this$0:Lcom/miui/payment/ui/recordlist/RecordsAdapter;

    invoke-virtual {v1}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->updateMenu()V

    :cond_0
    return-void
.end method
