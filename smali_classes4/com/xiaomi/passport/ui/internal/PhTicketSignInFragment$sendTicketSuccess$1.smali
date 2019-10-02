.class public final Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$sendTicketSuccess$1;
.super Landroid/os/CountDownTimer;
.source "FragmentPhTicketAuth.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->sendTicketSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0017\u00a8\u0006\u0008"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/PhTicketSignInFragment$sendTicketSuccess$1",
        "Landroid/os/CountDownTimer;",
        "(Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;IJJ)V",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
        "",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $time:I

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;IJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$sendTicketSuccess$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    iput p2, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$sendTicketSuccess$1;->$time:I

    invoke-direct {p0, p3, p4, p5, p6}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$sendTicketSuccess$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    sget v1, Lcom/xiaomi/passport/ui/R$id;->action_get_ph_ticket:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$sendTicketSuccess$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    sget v1, Lcom/xiaomi/passport/ui/R$id;->action_get_ph_ticket:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$sendTicketSuccess$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    sget v2, Lcom/xiaomi/passport/ui/R$string;->passport_reload_ph_ticket:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$sendTicketSuccess$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->setMIsCountingDowm(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$sendTicketSuccess$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    sget v0, Lcom/xiaomi/passport/ui/R$id;->action_get_ph_ticket:I

    invoke-virtual {p2, v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
