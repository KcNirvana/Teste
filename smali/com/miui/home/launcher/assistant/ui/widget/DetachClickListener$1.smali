.class Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener$1;
.super Ljava/lang/Object;
.source "DetachClickListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener;->clearOnDetach(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener$1;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 0

    return-void
.end method

.method public onWindowDetached()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener$1;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener;->access$002(Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener$1;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener;->access$102(Lcom/miui/home/launcher/assistant/ui/widget/DetachClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method
