.class Lcom/flybird/FBTable$1;
.super Ljava/lang/Object;
.source "FBTable.java"

# interfaces
.implements Lcom/flybird/APPullRefreshView$RefreshListener;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBTable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uiWidgetProvider:Lcom/alipay/birdnest/api/BirdNestEngine$l;


# direct methods
.method constructor <init>(Lcom/flybird/FBTable;Lcom/alipay/birdnest/api/BirdNestEngine$l;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBTable$1;->this$0:Lcom/flybird/FBTable;

    iput-object p2, p0, Lcom/flybird/FBTable$1;->val$uiWidgetProvider:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    iput-object p3, p0, Lcom/flybird/FBTable$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOverView()Lcom/alipay/birdnest/api/FBOverView;
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBTable$1;->val$uiWidgetProvider:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    iget-object v1, p0, Lcom/flybird/FBTable$1;->val$context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alipay/birdnest/api/BirdNestEngine$l;->b(Landroid/content/Context;)Lcom/alipay/birdnest/api/FBOverView;

    move-result-object v0

    return-object v0
.end method

.method public onRefresh()V
    .locals 4

    iget-object v0, p0, Lcom/flybird/FBTable$1;->this$0:Lcom/flybird/FBTable;

    invoke-static {v0}, Lcom/flybird/FBTable;->access$000(Lcom/flybird/FBTable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBTable$1;->this$0:Lcom/flybird/FBTable;

    invoke-static {v0}, Lcom/flybird/FBTable;->access$100(Lcom/flybird/FBTable;)Lcom/flybird/APPullRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/APPullRefreshView;->refreshFinished()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBTable$1;->this$0:Lcom/flybird/FBTable;

    invoke-static {v0}, Lcom/flybird/FBTable;->access$100(Lcom/flybird/FBTable;)Lcom/flybird/APPullRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/APPullRefreshView;->autoRefresh()V

    iget-object v0, p0, Lcom/flybird/FBTable$1;->this$0:Lcom/flybird/FBTable;

    invoke-static {v0}, Lcom/flybird/FBTable;->access$100(Lcom/flybird/FBTable;)Lcom/flybird/APPullRefreshView;

    move-result-object v0

    new-instance v1, Lcom/flybird/FBTable$1$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBTable$1$1;-><init>(Lcom/flybird/FBTable$1;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/flybird/APPullRefreshView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
