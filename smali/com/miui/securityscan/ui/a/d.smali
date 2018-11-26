.class final Lcom/miui/securityscan/ui/a/d;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic ID:Lcom/miui/securityscan/ui/a/a;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/a/d;->ID:Lcom/miui/securityscan/ui/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/a/d;->ID:Lcom/miui/securityscan/ui/a/a;

    invoke-static {v0}, Lcom/miui/securityscan/ui/a/a;->HU(Lcom/miui/securityscan/ui/a/a;)V

    const-wide/16 v0, 0x1388

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/securityscan/ui/a/d;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/a/d;->ID:Lcom/miui/securityscan/ui/a/a;

    invoke-static {v0}, Lcom/miui/securityscan/ui/a/a;->HT(Lcom/miui/securityscan/ui/a/a;)Lcom/miui/securityscan/ui/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/a/d;->ID:Lcom/miui/securityscan/ui/a/a;

    invoke-static {v0}, Lcom/miui/securityscan/ui/a/a;->HT(Lcom/miui/securityscan/ui/a/a;)Lcom/miui/securityscan/ui/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/securityscan/ui/a/b;->HV()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
