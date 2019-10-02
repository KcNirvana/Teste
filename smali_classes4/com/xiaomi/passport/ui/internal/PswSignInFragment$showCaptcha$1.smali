.class final Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showCaptcha$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentIdPswAuth.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->showCaptcha(Lcom/xiaomi/passport/ui/internal/Captcha;Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V
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
.field final synthetic $authCredential:Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PswSignInFragment;Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showCaptcha$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showCaptcha$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showCaptcha$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showCaptcha$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;->addCaptcha(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/AuthCredential;

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showCaptcha$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInFragment;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PswSignInFragment;->getPresenter()Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/PswSignInFragment$showCaptcha$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

    invoke-interface {p1, p2}, Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;->signInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V

    return-void
.end method
