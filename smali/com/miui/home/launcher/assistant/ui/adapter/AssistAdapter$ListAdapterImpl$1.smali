.class Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl$1;
.super Ljava/lang/Object;
.source "AssistAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->addAnimation(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$410(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$400(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$402(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;I)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
