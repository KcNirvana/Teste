.class Lcom/miui/personalassistant/ui/widget/CTADialog$1;
.super Ljava/lang/Object;
.source "CTADialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/CTADialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/CTADialog;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/CTADialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/CTADialog$1;->this$0:Lcom/miui/personalassistant/ui/widget/CTADialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CTADialog$1;->this$0:Lcom/miui/personalassistant/ui/widget/CTADialog;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/CTADialog;->access$000(Lcom/miui/personalassistant/ui/widget/CTADialog;)Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CTADialog$1;->this$0:Lcom/miui/personalassistant/ui/widget/CTADialog;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/CTADialog;->access$000(Lcom/miui/personalassistant/ui/widget/CTADialog;)Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;->onNegativeBtnClick()V

    :cond_0
    return-void
.end method
