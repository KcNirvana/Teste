.class Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$1;
.super Ljava/lang/Object;
.source "CTADialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$1;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$1;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->access$000(Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$1;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->access$000(Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->setCTACardStatus(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$1;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->access$000(Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v0

    const-string/jumbo v1, "init_cta"

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$1;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->access$000(Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchCloudSync(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$1;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->access$100(Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;)Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$1;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->access$100(Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;)Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$OnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$OnClickListener;->onPositiveBtnClick()V

    goto :goto_0
.end method
