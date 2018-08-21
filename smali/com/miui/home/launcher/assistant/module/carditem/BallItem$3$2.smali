.class Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3$2;
.super Ljava/lang/Object;
.source "BallItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;->onDataStatusChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3$2;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;

    iget v1, v1, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;->val$position:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3$2;->val$response:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;

    iget-boolean v4, v4, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;->val$isTeamSelectChanged:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->access$200(Lcom/miui/home/launcher/assistant/module/carditem/BallItem;ILjava/lang/String;Landroid/os/Handler;Z)V

    return-void
.end method
