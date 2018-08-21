.class Lcom/miui/personalassistant/ui/CTADialogActivity$1;
.super Ljava/lang/Object;
.source "CTADialogActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/CTADialogActivity;->showCTADialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/CTADialogActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/CTADialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/CTADialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/CTADialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeBtnClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CTADialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/CTADialogActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/CTADialogActivity;->setResult(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CTADialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/CTADialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/CTADialogActivity;->finish()V

    return-void
.end method

.method public onPositiveBtnClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CTADialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/CTADialogActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/CTADialogActivity;->setResult(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CTADialogActivity$1;->this$0:Lcom/miui/personalassistant/ui/CTADialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/CTADialogActivity;->finish()V

    return-void
.end method
