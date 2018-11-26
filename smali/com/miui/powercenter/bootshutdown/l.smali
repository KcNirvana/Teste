.class final Lcom/miui/powercenter/bootshutdown/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aGL:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

.field final synthetic aGM:[I


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference;[I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/l;->aGL:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    iput-object p2, p0, Lcom/miui/powercenter/bootshutdown/l;->aGM:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/l;->aGM:[I

    aget v0, v0, p2

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/l;->aGL:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTq(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/b;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/bootshutdown/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/powercenter/bootshutdown/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/b;->aSI(Lcom/miui/powercenter/bootshutdown/b;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/l;->aGL:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTs(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/l;->aGL:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTq(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/b;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/bootshutdown/b;

    const/16 v2, 0x7f

    invoke-direct {v1, v2}, Lcom/miui/powercenter/bootshutdown/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/b;->aSI(Lcom/miui/powercenter/bootshutdown/b;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/l;->aGL:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTs(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/l;->aGL:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTq(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/b;->aSK(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/l;->aGL:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTs(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/l;->aGL:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTq(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/b;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/bootshutdown/b;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Lcom/miui/powercenter/bootshutdown/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/b;->aSI(Lcom/miui/powercenter/bootshutdown/b;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/l;->aGL:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTs(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/l;->aGL:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTr(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
