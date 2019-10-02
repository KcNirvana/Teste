.class final Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentPhTicketAuth.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->sendTicket(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Lcom/xiaomi/passport/ui/internal/CaptchaCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->$phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;->enableSendTicketBtn()V

    instance-of v0, p1, Lcom/xiaomi/passport/ui/internal/CaptchaException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;

    move-result-object v0

    check-cast p1, Lcom/xiaomi/passport/ui/internal/CaptchaException;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/CaptchaException;->getCaptcha()Lcom/xiaomi/passport/ui/internal/Captcha;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->$phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;->showCaptcha(Lcom/xiaomi/passport/ui/internal/Captcha;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;

    move-result-object v0

    check-cast p1, Ljava/io/IOException;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;->showNetworkError(Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/ReachLimitException;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;

    move-result-object p1

    sget v0, Lcom/xiaomi/passport/ui/R$string;->passport_send_too_many_sms:I

    invoke-interface {p1, v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;->showInvalidTicket(I)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;

    move-result-object p1

    sget v0, Lcom/xiaomi/passport/ui/R$string;->passport_error_phone_error:I

    invoke-interface {p1, v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;->showInvalidTicket(I)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/TokenExpiredException;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->$phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->access$invalidateCathePhoneNum(Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;Landroid/content/Context;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/xiaomi/passport/ui/R$string;->passport_activate_token_expired:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->access$getTAG$p(Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$sendTicket$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;->showUnKnowError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
