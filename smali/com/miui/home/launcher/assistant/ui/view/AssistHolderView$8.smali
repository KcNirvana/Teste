.class Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$8;
.super Ljava/lang/Object;
.source "AssistHolderView.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/ui/view/AssistListView$OnScrollDirectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->initAi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

.field final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$8;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnScrollDown()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$1300(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "translationY"

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$8;->val$height:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->startTranAni(Landroid/view/View;Ljava/lang/String;FF)V

    return-void
.end method

.method public OnScrollUp()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$1300(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$8;->val$height:I

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/AnimationUtil;->startTranAni(Landroid/view/View;Ljava/lang/String;FF)V

    return-void
.end method
