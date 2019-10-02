.class public interface abstract Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter;
.super Ljava/lang/Object;
.source "FragmentPhTicketAuth.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\tH&J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001c\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH&J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$Presenter;",
        "",
        "chooseSignIn",
        "",
        "authCredential",
        "Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;",
        "userInfo",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        "chooseSignUp",
        "Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;",
        "sendTicket",
        "phone",
        "Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
        "captchaCode",
        "Lcom/xiaomi/passport/ui/internal/CaptchaCode;",
        "signInPhoneAndTicket",
        "ticket",
        "",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# virtual methods
.method public abstract chooseSignIn(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract chooseSignUp(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)V
    .param p1    # Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract chooseSignUp(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract sendTicket(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Lcom/xiaomi/passport/ui/internal/CaptchaCode;)V
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/passport/ui/internal/CaptchaCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract signInPhoneAndTicket(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Ljava/lang/String;)V
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
