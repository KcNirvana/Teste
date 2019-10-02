.class public final Lcom/xiaomi/passport/ui/internal/PhoneRecycleException;
.super Lcom/xiaomi/passport/ui/internal/PassportUIException;
.source "PassportCore.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PhoneRecycleException;",
        "Lcom/xiaomi/passport/ui/internal/PassportUIException;",
        "authCredential",
        "Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;",
        "userInfo",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        "(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V",
        "getAuthCredential",
        "()Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;",
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
.field private final authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userInfo:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "authCredential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PassportUIException;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneRecycleException;->authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhoneRecycleException;->userInfo:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    return-void
.end method


# virtual methods
.method public final getAuthCredential()Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhoneRecycleException;->authCredential:Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    return-object v0
.end method

.method public final getUserInfo()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhoneRecycleException;->userInfo:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    return-object v0
.end method
