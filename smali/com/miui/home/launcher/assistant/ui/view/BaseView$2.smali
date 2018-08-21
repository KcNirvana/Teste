.class Lcom/miui/home/launcher/assistant/ui/view/BaseView$2;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/BaseView;->loadCardData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " loadCardData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)Lcom/miui/home/launcher/assistant/module/CardSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->queryItemData()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->postToMainThread(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseView;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/BaseView;)Lcom/miui/home/launcher/assistant/module/CardSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " queryItemData exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
