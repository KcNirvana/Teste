.class final Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentGetPhAuthMethod.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->getPhoneAuthMethod(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
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
.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$2;->invoke(Ljava/lang/Throwable;)V

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

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;->dismissProgress()V

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    move-result-object v0

    check-cast p1, Ljava/io/IOException;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;->showNetworkError(Ljava/io/IOException;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    move-result-object p1

    sget v0, Lcom/xiaomi/passport/ui/R$string;->passport_error_phone_error:I

    invoke-interface {p1, v0}, Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;->showPhoneNumError(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->access$getTAG$p(Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$2;->this$0:Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->getView()Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;->showUnKnowError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
