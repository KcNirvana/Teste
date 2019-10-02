.class public interface abstract Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;
.super Ljava/lang/Object;
.source "FragmentGetPhAuthMethod.kt"

# interfaces
.implements Lcom/xiaomi/passport/ui/internal/SignInContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/internal/PhAuthContract;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;",
        "Lcom/xiaomi/passport/ui/internal/SignInContract$View;",
        "clearPhonePopList",
        "",
        "gotoPswSignIn",
        "userId",
        "",
        "gotoTicketSignIn",
        "phone",
        "Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
        "showCaptcha",
        "captcha",
        "Lcom/xiaomi/passport/ui/internal/Captcha;",
        "showPhoneNumError",
        "msgRes",
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
.method public abstract clearPhonePopList()V
.end method

.method public abstract gotoPswSignIn(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract gotoTicketSignIn(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

.method public abstract showPhoneNumError(I)V
.end method
