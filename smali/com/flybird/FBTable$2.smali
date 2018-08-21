.class Lcom/flybird/FBTable$2;
.super Ljava/lang/Object;
.source "FBTable.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBTable;


# direct methods
.method constructor <init>(Lcom/flybird/FBTable;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBTable$2;->this$0:Lcom/flybird/FBTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/flybird/FBTable$2;->this$0:Lcom/flybird/FBTable;

    invoke-static {v0}, Lcom/flybird/FBTable;->access$200(Lcom/flybird/FBTable;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    iget-object v2, p0, Lcom/flybird/FBTable$2;->this$0:Lcom/flybird/FBTable;

    invoke-static {v2}, Lcom/flybird/FBTable;->access$300(Lcom/flybird/FBTable;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/flybird/FBTable$Item;

    iget-object v0, p0, Lcom/flybird/FBTable$2;->this$0:Lcom/flybird/FBTable;

    invoke-static {v0}, Lcom/flybird/FBTable;->access$400(Lcom/flybird/FBTable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/flybird/FBTable$2;->this$0:Lcom/flybird/FBTable;

    invoke-static {v2}, Lcom/flybird/FBTable;->access$400(Lcom/flybird/FBTable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_1
    if-eqz v0, :cond_0

    iget v0, v3, Lcom/flybird/FBTable$Item;->row:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/flybird/FBTable$2;->this$0:Lcom/flybird/FBTable;

    iget-wide v0, v0, Lcom/flybird/FBTable;->mNode:J

    iget v2, v3, Lcom/flybird/FBTable$Item;->row:I

    iget v3, v3, Lcom/flybird/FBTable$Item;->section:I

    invoke-static/range {v0 .. v5}, Lcom/flybird/FBView;->nativePlatformOnItemClick(JIIJ)Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method
