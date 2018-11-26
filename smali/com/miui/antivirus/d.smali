.class Lcom/miui/antivirus/d;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic awe:Lcom/miui/antivirus/a;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/d;->awe:Lcom/miui/antivirus/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/a;Lcom/miui/antivirus/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/d;-><init>(Lcom/miui/antivirus/a;)V

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
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/antivirus/c;

    invoke-interface {v0}, Lcom/miui/antivirus/c;->aBF()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
