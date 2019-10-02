.class final Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "FragmentPhTicketAuth.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    sget v0, Lcom/xiaomi/passport/ui/R$id;->action_get_ph_ticket:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->getPresenter()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$onViewCreated$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->getMPhoneWrapper()Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter$DefaultImpls;->sendTicket$default(Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Lcom/xiaomi/passport/ui/internal/CaptchaCode;ILjava/lang/Object;)V

    return-void
.end method
