.class Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$6;
.super Ljava/lang/Object;
.source "FunctionLaunchCardView.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppChanged(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "FunctionLaunchCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppChanged..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)V

    return-void
.end method

.method public update()V
    .locals 2

    const-string/jumbo v0, "FunctionLaunchCardView"

    const-string/jumbo v1, "PackageInstallReceiver update mImageStorageItems clear"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$600(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
