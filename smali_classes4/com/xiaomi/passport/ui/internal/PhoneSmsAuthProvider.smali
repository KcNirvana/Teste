.class public final Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;
.super Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
.source "AuthBaseProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u0010H\u0002J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;",
        "Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;",
        "()V",
        "getFragment",
        "Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;",
        "sid",
        "",
        "setPresenter",
        "",
        "fragment",
        "signInWithAuthCredential",
        "Lcom/xiaomi/passport/ui/internal/Source;",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "credential",
        "Lcom/xiaomi/passport/ui/internal/AuthCredential;",
        "signInorUpWithChoose",
        "Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;",
        "trySignInWithAuthCredential",
        "authCredential",
        "Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;",
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
    .locals 1

    const-string v0, "PHONE_SMS_AUTH_PROVIDER"

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final signInorUpWithChoose(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;->getSignIn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/ui/internal/Source;->Companion:Lcom/xiaomi/passport/ui/internal/Source$Companion;

    new-instance v1, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$signInorUpWithChoose$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$signInorUpWithChoose$1;-><init>(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/Source$Companion;->from(Lkotlin/jvm/functions/Function0;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/ui/internal/Source;->Companion:Lcom/xiaomi/passport/ui/internal/Source$Companion;

    new-instance v1, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$signInorUpWithChoose$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$signInorUpWithChoose$2;-><init>(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/Source$Companion;->from(Lkotlin/jvm/functions/Function0;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final trySignInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/passport/ui/internal/Source;->Companion:Lcom/xiaomi/passport/ui/internal/Source$Companion;

    new-instance v1, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$1;-><init>(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/Source$Companion;->from(Lkotlin/jvm/functions/Function0;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider$trySignInWithAuthCredential$2;-><init>(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/Source;->next(Lkotlin/jvm/functions/Function1;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->Companion:Lcom/xiaomi/passport/ui/internal/PhAuthFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/PhAuthFragment;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;

    return-object p1
.end method

.method public setPresenter(Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;

    new-instance v8, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "fragment.context!!"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p2

    check-cast v4, Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;

    invoke-virtual {v0, v8}, Lcom/xiaomi/passport/ui/internal/PhAuthFragment;->setPresenter(Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;)V

    return-void
.end method

.method protected signInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;
    .locals 3
    .param p1    # Lcom/xiaomi/passport/ui/internal/AuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/ui/internal/AuthCredential;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;->signInorUpWithChoose(Lcom/xiaomi/passport/ui/internal/ChoosePhoneSmsAuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthProvider;->trySignInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support originAuthCredential:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
