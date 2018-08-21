.class Lcom/flybird/FBTable$1$1;
.super Ljava/lang/Object;
.source "FBTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/flybird/FBTable$1;


# direct methods
.method constructor <init>(Lcom/flybird/FBTable$1;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBTable$1$1;->this$1:Lcom/flybird/FBTable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBTable$1$1;->this$1:Lcom/flybird/FBTable$1;

    iget-object v0, v0, Lcom/flybird/FBTable$1;->this$0:Lcom/flybird/FBTable;

    iget-wide v0, v0, Lcom/flybird/FBTable;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBTable;->nativePlatformOnRefresh(J)Z

    iget-object v0, p0, Lcom/flybird/FBTable$1$1;->this$1:Lcom/flybird/FBTable$1;

    iget-object v0, v0, Lcom/flybird/FBTable$1;->this$0:Lcom/flybird/FBTable;

    invoke-static {v0}, Lcom/flybird/FBTable;->access$100(Lcom/flybird/FBTable;)Lcom/flybird/APPullRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/APPullRefreshView;->refreshFinished()V

    return-void
.end method
