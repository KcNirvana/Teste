.class final Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-wrap1(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a01be
        :pswitch_0
    .end packed-switch
.end method
