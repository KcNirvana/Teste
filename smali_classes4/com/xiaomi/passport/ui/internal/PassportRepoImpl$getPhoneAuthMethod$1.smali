.class final Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getPhoneAuthMethod$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PassportCore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;->getPhoneAuthMethod(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)Lcom/xiaomi/passport/ui/internal/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;",
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


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getPhoneAuthMethod$1;->$phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getPhoneAuthMethod$1;->$phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhoneWrapper;->getActivateInfo()Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;->SMS:Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getPhoneAuthMethod$1;->$phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhoneWrapper;->getPhone()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->getPhoneLoginConfigOnLine(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/xiaomi/passport/data/LoginPreference;

    iget-object v0, v0, Lcom/xiaomi/passport/data/LoginPreference;->phoneLoginType:Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    sget-object v1, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;->password:Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;->PSW:Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    return-object v0

    :cond_1
    sget-object v0, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;->SMS:Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    return-object v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.xiaomi.passport.data.LoginPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getPhoneAuthMethod$1;->invoke()Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    move-result-object v0

    return-object v0
.end method
