.class Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$1;
.super Ljava/lang/Object;
.source "FunctionLaunchCardView.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick$IconClickListener;


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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickListener(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Ljava/util/ArrayList;I)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "131"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "132"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Lcom/miui/personalassistant/model/FunctionLaunch;I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    invoke-static {v3, v2}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;I)V

    goto :goto_0
.end method
