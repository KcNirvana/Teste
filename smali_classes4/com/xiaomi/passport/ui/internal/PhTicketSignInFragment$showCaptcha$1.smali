.class final Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showCaptcha$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentPhTicketAuth.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->showCaptcha(Lcom/xiaomi/passport/ui/internal/Captcha;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "captchaCode",
        "",
        "lastIck",
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

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showCaptcha$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showCaptcha$1;->$phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showCaptcha$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "captchaCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastIck"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showCaptcha$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment;->getPresenter()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInFragment$showCaptcha$1;->$phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    new-instance v2, Lcom/xiaomi/passport/ui/internal/CaptchaCode;

    invoke-direct {v2, p1, p2}, Lcom/xiaomi/passport/ui/internal/CaptchaCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter;->sendTicket(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Lcom/xiaomi/passport/ui/internal/CaptchaCode;)V

    return-void
.end method
