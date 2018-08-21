.class Lcom/flybird/FBClickCallBack$1;
.super Ljava/lang/Object;
.source "FBClickCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBClickCallBack;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flybird/FBClickCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBClickCallBack$1;->this$0:Lcom/flybird/FBClickCallBack;

    iput-object p2, p0, Lcom/flybird/FBClickCallBack$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/flybird/FBClickCallBack$1;->this$0:Lcom/flybird/FBClickCallBack;

    iget-object v1, p0, Lcom/flybird/FBClickCallBack$1;->this$0:Lcom/flybird/FBClickCallBack;

    invoke-static {v1}, Lcom/flybird/FBClickCallBack;->access$000(Lcom/flybird/FBClickCallBack;)I

    move-result v1

    iget-object v2, p0, Lcom/flybird/FBClickCallBack$1;->val$result:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flybird/FBClickCallBack;->access$100(Lcom/flybird/FBClickCallBack;ILjava/lang/String;)V

    return-void
.end method
