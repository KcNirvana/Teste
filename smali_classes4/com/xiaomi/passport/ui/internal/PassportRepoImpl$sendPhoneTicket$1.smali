.class final Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PassportCore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;->sendPhoneTicket(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Lcom/xiaomi/passport/ui/internal/CaptchaCode;)Lcom/xiaomi/passport/ui/internal/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $authCredential:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

.field final synthetic $captchaCode:Lcom/xiaomi/passport/ui/internal/CaptchaCode;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Lcom/xiaomi/passport/ui/internal/CaptchaCode;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->this$0:Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->$captchaCode:Lcom/xiaomi/passport/ui/internal/CaptchaCode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/PhoneWrapper;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->serviceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->$captchaCode:Lcom/xiaomi/passport/ui/internal/CaptchaCode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/CaptchaCode;->getCaptchaCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->$captchaCode:Lcom/xiaomi/passport/ui/internal/CaptchaCode;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/passport/ui/internal/CaptchaCode;->getCaptchaIck()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->captchaCode(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/PhoneWrapper;->getPhone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->this$0:Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    invoke-virtual {v2}, Lcom/xiaomi/passport/ui/internal/PhoneWrapper;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;->access$checkPhone(Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/PhoneWrapper;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->phone(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->$authCredential:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/PhoneWrapper;->getActivateInfo()Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->phoneHashActivatorToken(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    :goto_1
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->build()Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    invoke-direct {v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;-><init>()V

    new-instance v2, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1$future$1;

    invoke-direct {v2}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1$future$1;-><init>()V

    check-cast v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->sendPhoneTicket(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "success"

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.xiaomi.accountsdk.account.exception.NeedCaptchaException"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$sendPhoneTicket$1;->this$0:Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;

    const-string v2, "url"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;->access$getCaptchaImageNullSafe(Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/ui/internal/CaptchaException;

    new-instance v3, Lcom/xiaomi/passport/ui/internal/Captcha;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v5, "captcha.second"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1, v0}, Lcom/xiaomi/passport/ui/internal/Captcha;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/xiaomi/passport/ui/internal/CaptchaException;-><init>(Lcom/xiaomi/passport/ui/internal/Captcha;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    throw v0
.end method
