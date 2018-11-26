.class final Lcom/miui/gamebooster/d/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic sM:Lcom/miui/gamebooster/d/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/d/f;->sM:Lcom/miui/gamebooster/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v2, "FloatAssistantView"

    const-string/jumbo v3, "click float tips"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_1
    iget-object v2, p0, Lcom/miui/gamebooster/d/f;->sM:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v2}, Lcom/miui/gamebooster/d/b;->removeFloatView()V

    iget-object v2, p0, Lcom/miui/gamebooster/d/f;->sM:Lcom/miui/gamebooster/d/b;

    invoke-static {}, Lcom/miui/gamebooster/c/b;->uc()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/miui/gamebooster/d/b;->uL(ZZ)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0a0180
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
