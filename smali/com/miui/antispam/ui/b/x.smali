.class final Lcom/miui/antispam/ui/b/x;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic XD:Lcom/miui/antispam/ui/b/g;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/g;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/x;->XD:Lcom/miui/antispam/ui/b/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/x;->XD:Lcom/miui/antispam/ui/b/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-static {v0}, Lcom/miui/antispam/util/a;->getInstance(Landroid/content/Context;)Lcom/miui/antispam/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/util/a;->Xq()V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/x;->XD:Lcom/miui/antispam/ui/b/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/g;->Xb:Lcom/miui/antispam/ui/a/d;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/a/d;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
