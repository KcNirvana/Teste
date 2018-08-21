.class Lcom/miui/home/launcher/assistant/ui/view/BaseView$3;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/BaseView;->postToMainThread(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/BaseView;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$3;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->mInit:Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)Lcom/miui/home/launcher/assistant/module/CardSource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/CardSource;->setReLoad(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$3;->val$object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->refreshView(Ljava/lang/Object;)V

    return-void
.end method
