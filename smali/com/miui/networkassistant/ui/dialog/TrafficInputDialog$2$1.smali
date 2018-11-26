.class final Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2$1;->this$1:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2$1;->this$1:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2;->this$0:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->-get0(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2$1;->this$1:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$2;->this$0:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->-get1(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
