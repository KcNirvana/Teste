.class public final Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;
.super Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;
.source "AuthBaseProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;",
        "Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;",
        "originAuthCredential",
        "userInfo",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        "signIn",
        "",
        "(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Z)V",
        "getSignIn",
        "()Z",
        "getUserInfo",
        "()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
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
.field private final signIn:Z

.field private final userInfo:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Z)V
    .locals 3
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "originAuthCredential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->getPhone()Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;-><init>(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;->userInfo:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iput-boolean p3, p0, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;->signIn:Z

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->getNewPsw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;->setNewPsw(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getSignIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;->signIn:Z

    return v0
.end method

.method public final getUserInfo()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;->userInfo:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    return-object v0
.end method
