.class final Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    invoke-static {v1, p2}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->-wrap0(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->-wrap1(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->-get0(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;)Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->-wrap0(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->-set0(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)I

    :cond_0
    return-void
.end method
