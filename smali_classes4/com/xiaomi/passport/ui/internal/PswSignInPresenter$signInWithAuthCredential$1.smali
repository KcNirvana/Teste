.class final Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentIdPswAuth.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->signInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V
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
.field final synthetic $authCredential:Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$1;->invoke(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1
    .param p1    # Lcom/xiaomi/accountsdk/account/data/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;->dismissProgress()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;->loginSuccess(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$1;->this$0:Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->saveSignedInUserId(Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V

    return-void
.end method
