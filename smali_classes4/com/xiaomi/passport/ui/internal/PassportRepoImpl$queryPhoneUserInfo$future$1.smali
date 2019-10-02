.class public final Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$queryPhoneUserInfo$future$1;
.super Ljava/lang/Object;
.source "PassportCore.kt"

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;->queryPhoneUserInfo(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u001c\u0010\t\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000e\u001a\u00020\u0004H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/PassportRepoImpl$queryPhoneUserInfo$future$1",
        "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;",
        "()V",
        "onNotRecycledRegisteredPhone",
        "",
        "p0",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        "onPhoneNumInvalid",
        "onProbablyRecycleRegisteredPhone",
        "onQueryFailed",
        "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;",
        "p1",
        "",
        "onRecycledOrNotRegisteredPhone",
        "onTicketOrTokenInvalid",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotRecycledRegisteredPhone(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0
    .param p1    # Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onPhoneNumInvalid()V
    .locals 0

    return-void
.end method

.method public onProbablyRecycleRegisteredPhone(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0
    .param p1    # Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onQueryFailed(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onRecycledOrNotRegisteredPhone(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0
    .param p1    # Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTicketOrTokenInvalid()V
    .locals 0

    return-void
.end method
