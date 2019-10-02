.class public interface abstract Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;
.super Ljava/lang/Object;
.source "FragmentGetPhAuthMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/internal/PhAuthContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u001c\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;",
        "",
        "getPhoneAuthMethod",
        "",
        "phone",
        "Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
        "sendTicket",
        "captchaCode",
        "Lcom/xiaomi/passport/ui/internal/CaptchaCode;",
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
.method public abstract getPhoneAuthMethod(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
