.class public interface abstract Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;
.super Ljava/lang/Object;
.source "FragmentPhTicketAuth.kt"

# interfaces
.implements Lcom/xiaomi/passport/ui/internal/SignInContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0008\u0010\u0013\u001a\u00020\u0003H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0010H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PhTicketSignInContract$View;",
        "Lcom/xiaomi/passport/ui/internal/SignInContract$View;",
        "chooseToSignInOrSignUp",
        "",
        "authCredential",
        "Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;",
        "userInfo",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        "enableSendTicketBtn",
        "sendTicketSuccess",
        "showCaptcha",
        "captcha",
        "Lcom/xiaomi/passport/ui/internal/Captcha;",
        "phone",
        "Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
        "showInvalidPsw",
        "Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;",
        "msg",
        "",
        "showInvalidTicket",
        "showSetPsw",
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
.method public abstract chooseToSignInOrSignUp(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract enableSendTicketBtn()V
.end method

.method public abstract sendTicketSuccess()V
.end method

.method public abstract showCaptcha(Lcom/xiaomi/passport/ui/internal/Captcha;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .param p1    # Lcom/xiaomi/passport/ui/internal/Captcha;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showInvalidPsw(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;I)V
    .param p1    # Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showInvalidTicket()V
.end method

.method public abstract showInvalidTicket(I)V
.end method

.method public abstract showSetPsw(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)V
    .param p1    # Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
