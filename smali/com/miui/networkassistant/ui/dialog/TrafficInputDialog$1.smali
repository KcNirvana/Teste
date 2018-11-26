.class final Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->-get4(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->-get3(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->-wrap0(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->-get3(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
