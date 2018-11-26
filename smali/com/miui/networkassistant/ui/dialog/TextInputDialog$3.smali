.class final Lcom/miui/networkassistant/ui/dialog/TextInputDialog$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$3;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$3;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->-get1(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$3;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->-get3(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
