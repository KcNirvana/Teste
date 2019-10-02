.class public final Lcom/xiaomi/passport/ui/internal/WebAuth;
.super Ljava/lang/Object;
.source "AuthWeb.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0006\u0010\u0007\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/WebAuth;",
        "",
        "()V",
        "getAuthFragment",
        "Lcom/xiaomi/passport/ui/internal/SignInFragment;",
        "url",
        "",
        "getFindPswFragment",
        "getNotificationFragment",
        "getSignInFragment",
        "getSignUpFragment",
        "sid",
        "getSnsBindFragment",
        "e",
        "Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;",
        "getUserSettingFragment",
        "Landroid/support/v4/app/Fragment;",
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAuthFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/SignInFragment;
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->buildUrlWithLocaleQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/passport/ui/internal/WebAuthFragment;->Companion:Lcom/xiaomi/passport/ui/internal/WebAuthFragment$Companion;

    const-string v1, "urlWithLocale"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/internal/WebAuthFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/WebAuthFragment;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/passport/ui/internal/SignInFragment;

    return-object p1
.end method


# virtual methods
.method public final getFindPswFragment()Lcom/xiaomi/passport/ui/internal/SignInFragment;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->ACCOUNT_DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pass/forgetPassword"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/internal/WebAuth;->getAuthFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/SignInFragment;

    move-result-object v0

    return-object v0
.end method

.method public final getNotificationFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/SignInFragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/WebAuthFragment;->Companion:Lcom/xiaomi/passport/ui/internal/WebAuthFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/internal/WebAuthFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/WebAuthFragment;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/passport/ui/internal/SignInFragment;

    return-object p1
.end method

.method public final getSignInFragment()Lcom/xiaomi/passport/ui/internal/SignInFragment;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->ACCOUNT_DOMAIN:Ljava/lang/String;

    const-string v1, "url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/internal/WebAuth;->getAuthFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/SignInFragment;

    move-result-object v0

    return-object v0
.end method

.method public final getSignUpFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/SignInFragment;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->ACCOUNT_DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pass/register?sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/WebAuth;->getAuthFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/SignInFragment;

    move-result-object p1

    return-object p1
.end method

.method public final getSnsBindFragment(Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;)Lcom/xiaomi/passport/ui/internal/SignInFragment;
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;->Companion:Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment$Companion;->newInstance(Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;)Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/passport/ui/internal/SignInFragment;

    return-object p1
.end method

.method public final getUserSettingFragment()Landroid/support/v4/app/Fragment;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->ACCOUNT_DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pass/auth/security/home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/passport/ui/internal/PassportWebFragment;->Companion:Lcom/xiaomi/passport/ui/internal/PassportWebFragment$Companion;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/internal/PassportWebFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/PassportWebFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method
