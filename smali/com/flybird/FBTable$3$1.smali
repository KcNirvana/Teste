.class Lcom/flybird/FBTable$3$1;
.super Ljava/lang/Object;
.source "FBTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/flybird/FBTable$3;


# direct methods
.method constructor <init>(Lcom/flybird/FBTable$3;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBTable$3$1;->this$1:Lcom/flybird/FBTable$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBTable$3$1;->this$1:Lcom/flybird/FBTable$3;

    iget-object v0, v0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    iget-wide v0, v0, Lcom/flybird/FBTable;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBView;->nativePlatformOnLoadMore(J)Z

    iget-object v0, p0, Lcom/flybird/FBTable$3$1;->this$1:Lcom/flybird/FBTable$3;

    invoke-virtual {v0}, Lcom/flybird/FBTable$3;->notifyLoadMoreFinished()V

    return-void
.end method
