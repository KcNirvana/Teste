.class final Lcom/miui/antispam/ui/b/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/antispam/service/b/c;


# instance fields
.field final synthetic XF:Lcom/miui/antispam/ui/b/j;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/z;->XF:Lcom/miui/antispam/ui/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Ws(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/z;->XF:Lcom/miui/antispam/ui/b/j;

    const v1, 0x7f070074

    invoke-static {v0, v1}, Lcom/miui/antispam/ui/b/j;->Wn(Lcom/miui/antispam/ui/b/j;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antispam/ui/b/z;->XF:Lcom/miui/antispam/ui/b/j;

    const v1, 0x7f070076

    invoke-static {v0, v1}, Lcom/miui/antispam/ui/b/j;->Wn(Lcom/miui/antispam/ui/b/j;I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/z;->XF:Lcom/miui/antispam/ui/b/j;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/j;->Wm(Lcom/miui/antispam/ui/b/j;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antispam/ui/b/z;->XF:Lcom/miui/antispam/ui/b/j;

    const v1, 0x7f070075

    invoke-static {v0, v1}, Lcom/miui/antispam/ui/b/j;->Wn(Lcom/miui/antispam/ui/b/j;I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/z;->XF:Lcom/miui/antispam/ui/b/j;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/j;->Wm(Lcom/miui/antispam/ui/b/j;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
