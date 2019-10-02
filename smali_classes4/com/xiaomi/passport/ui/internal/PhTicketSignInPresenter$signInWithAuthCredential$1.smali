.class final Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$signInWithAuthCredential$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentPhTicketAuth.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->signInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
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
.field final synthetic $authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$signInWithAuthCredential$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$signInWithAuthCredential$1;->invoke(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 2
    .param p1    # Lcom/xiaomi/accountsdk/account/data/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;->dismissProgress()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;->loginSuccess(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$signInWithAuthCredential$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->getPhone()Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneWrapper;->getActivateInfo()Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter$signInWithAuthCredential$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->getPhone()Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;->access$invalidateCathePhoneNum(Lcom/xiaomi/passport/ui/internal/PhTicketSignInPresenter;Landroid/content/Context;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V

    :cond_0
    return-void
.end method
