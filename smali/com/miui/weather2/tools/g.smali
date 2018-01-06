.class Lcom/miui/weather2/tools/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/AdViewTrigger;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/AdViewTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/g;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/weather2/tools/g;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->c(Lcom/miui/weather2/tools/AdViewTrigger;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/g;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->c(Lcom/miui/weather2/tools/AdViewTrigger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/tools/g;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->c(Lcom/miui/weather2/tools/AdViewTrigger;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/g;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    iget-object v1, v1, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/weather2/tools/g;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->c(Lcom/miui/weather2/tools/AdViewTrigger;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/g;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->c(Lcom/miui/weather2/tools/AdViewTrigger;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/weather2/tools/g;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->c(Lcom/miui/weather2/tools/AdViewTrigger;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/g;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->c(Lcom/miui/weather2/tools/AdViewTrigger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/tools/g;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->c(Lcom/miui/weather2/tools/AdViewTrigger;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/weather2/tools/g;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->d(Lcom/miui/weather2/tools/AdViewTrigger;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
