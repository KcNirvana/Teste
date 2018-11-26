.class final Lcom/miui/gamebooster/ui/B;
.super Lcom/miui/common/d/f;
.source ""


# instance fields
.field final synthetic cN:Lcom/miui/gamebooster/ui/MainTopContentFrame;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/MainTopContentFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/B;->cN:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-direct {p0}, Lcom/miui/common/d/f;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/d/f;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/B;->cN:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->ad(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_0
    .end packed-switch
.end method
