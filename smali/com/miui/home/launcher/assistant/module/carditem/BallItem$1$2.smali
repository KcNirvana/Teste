.class Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1$2;
.super Ljava/lang/Object;
.source "BallItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;->onDataStatusChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1$2;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;

    iget v1, v1, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;->val$position:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;->val$cardKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1$2;->val$response:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;

    iget-object v4, v4, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1$2;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;

    iget-boolean v5, v5, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;->val$isTeamSelectChanged:Z

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->access$000(Lcom/miui/home/launcher/assistant/module/carditem/BallItem;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    return-void
.end method
