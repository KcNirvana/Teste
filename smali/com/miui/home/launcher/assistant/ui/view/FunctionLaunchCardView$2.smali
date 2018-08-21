.class Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;
.super Ljava/lang/Object;
.source "FunctionLaunchCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->bindDataToView(Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

.field final synthetic val$functionPos:I

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$item:Lcom/miui/personalassistant/model/FunctionLaunch;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Ljava/lang/String;Lcom/miui/personalassistant/model/FunctionLaunch;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;->val$item:Lcom/miui/personalassistant/model/FunctionLaunch;

    iput p4, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;->val$functionPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "131"

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "132"

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;->val$item:Lcom/miui/personalassistant/model/FunctionLaunch;

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;->val$functionPos:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Lcom/miui/personalassistant/model/FunctionLaunch;I)V

    goto :goto_0
.end method
