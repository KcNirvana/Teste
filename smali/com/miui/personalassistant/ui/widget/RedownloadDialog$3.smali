.class Lcom/miui/personalassistant/ui/widget/RedownloadDialog$3;
.super Ljava/lang/Object;
.source "RedownloadDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->showDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/RedownloadDialog;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/RedownloadDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$3;->this$0:Lcom/miui/personalassistant/ui/widget/RedownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$3;->this$0:Lcom/miui/personalassistant/ui/widget/RedownloadDialog;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->access$000(Lcom/miui/personalassistant/ui/widget/RedownloadDialog;)Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$3;->this$0:Lcom/miui/personalassistant/ui/widget/RedownloadDialog;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->access$000(Lcom/miui/personalassistant/ui/widget/RedownloadDialog;)Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;->onNegativeBtnClick()V

    :cond_0
    return-void
.end method
