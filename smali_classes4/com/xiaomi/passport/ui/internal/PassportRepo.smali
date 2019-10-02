.class public interface abstract Lcom/xiaomi/passport/ui/internal/PassportRepo;
.super Ljava/lang/Object;
.source "PassportCore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/PassportRepo$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J$\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0018\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH&J\"\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u001c\u001a\u00020\u00112\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 H&J\u0016\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\"0\u00032\u0006\u0010#\u001a\u00020$H&J\u0010\u0010%\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020&H&J\u0016\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\"0\u00032\u0006\u0010#\u001a\u00020(H&J\u0010\u0010)\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020&H&\u00a8\u0006*"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PassportRepo;",
        "",
        "getCaptchaImage",
        "Lcom/xiaomi/passport/ui/internal/Source;",
        "Lcom/xiaomi/passport/ui/internal/Captcha;",
        "url",
        "",
        "getLocalActivatorPhone",
        "",
        "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
        "context",
        "Landroid/content/Context;",
        "useLocalCathe",
        "",
        "getPhoneAuthMethod",
        "Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;",
        "phone",
        "Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
        "getXiaomiAccount",
        "Landroid/accounts/Account;",
        "invalidateCathePhoneNum",
        "",
        "slotId",
        "",
        "loadImage",
        "Landroid/graphics/Bitmap;",
        "queryPhoneUserInfo",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        "authCredential",
        "Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;",
        "sendPhoneTicket",
        "captchaCode",
        "Lcom/xiaomi/passport/ui/internal/CaptchaCode;",
        "signInIdAndPsw",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "credential",
        "Lcom/xiaomi/passport/ui/internal/IdPswAuthCredential;",
        "signInWithPhone",
        "Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;",
        "signInWithVStep2code",
        "Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;",
        "signUpWithPhone",
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
.method public abstract getCaptchaImage(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/Source;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Lcom/xiaomi/passport/ui/internal/Captcha;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLocalActivatorPhone(Landroid/content/Context;Z)Lcom/xiaomi/passport/ui/internal/Source;
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPhoneAuthMethod(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)Lcom/xiaomi/passport/ui/internal/Source;
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract invalidateCathePhoneNum(Landroid/content/Context;I)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract loadImage(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/Source;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract queryPhoneUserInfo(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract sendPhoneTicket(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Lcom/xiaomi/passport/ui/internal/CaptchaCode;)Lcom/xiaomi/passport/ui/internal/Source;
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/passport/ui/internal/CaptchaCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
            "Lcom/xiaomi/passport/ui/internal/CaptchaCode;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract signInIdAndPsw(Lcom/xiaomi/passport/ui/internal/IdPswAuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
    .param p1    # Lcom/xiaomi/passport/ui/internal/IdPswAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/ui/internal/IdPswAuthCredential;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract signInWithPhone(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .param p1    # Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract signInWithVStep2code(Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
    .param p1    # Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract signUpWithPhone(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .param p1    # Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
