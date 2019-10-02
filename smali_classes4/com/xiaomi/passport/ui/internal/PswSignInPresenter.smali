.class public final Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;
.super Ljava/lang/Object;
.source "FragmentIdPswAuth.kt"

# interfaces
.implements Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentIdPswAuth.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentIdPswAuth.kt\ncom/xiaomi/passport/ui/internal/PswSignInPresenter\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,244:1\n49#2,2:245\n*E\n*S KotlinDebug\n*F\n+ 1 FragmentIdPswAuth.kt\ncom/xiaomi/passport/ui/internal/PswSignInPresenter\n*L\n122#1,2:245\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B)\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\u0013\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0019H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u0018\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0005H\u0016J\u0018\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020$2\u0006\u0010!\u001a\u00020\u0005H\u0016J0\u0010%\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00052\u0006\u0010*\u001a\u00020+H\u0016J\u0010\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u001eH\u0016R\u000e\u0010\n\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006."
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;",
        "Lcom/xiaomi/passport/ui/internal/PswSignInContract$Presenter;",
        "context",
        "Landroid/content/Context;",
        "sid",
        "",
        "view",
        "Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;",
        "name",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;Ljava/lang/String;)V",
        "TAG",
        "getContext",
        "()Landroid/content/Context;",
        "getName",
        "()Ljava/lang/String;",
        "provider",
        "Lcom/xiaomi/passport/ui/internal/AuthProvider;",
        "getProvider",
        "()Lcom/xiaomi/passport/ui/internal/AuthProvider;",
        "setProvider",
        "(Lcom/xiaomi/passport/ui/internal/AuthProvider;)V",
        "getSid",
        "getView",
        "()Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;",
        "getSignedInUserIds",
        "",
        "()[Ljava/lang/String;",
        "saveSignedInUserId",
        "",
        "credential",
        "Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;",
        "signInIdAndPsw",
        "id",
        "psw",
        "signInPhoneAndPsw",
        "phone",
        "Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
        "signInVStep2",
        "step1Token",
        "metaLoginData",
        "Lcom/xiaomi/accountsdk/account/data/MetaLoginData;",
        "step2code",
        "trustCurrentEnv",
        "",
        "signInWithAuthCredential",
        "authCredential",
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
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private provider:Lcom/xiaomi/passport/ui/internal/AuthProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->sid:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->view:Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;

    iput-object p4, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->name:Ljava/lang/String;

    const-string p1, "PswSignIn"

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->TAG:Ljava/lang/String;

    sget-object p1, Lcom/xiaomi/passport/ui/internal/PassportUI;->INSTANCE:Lcom/xiaomi/passport/ui/internal/PassportUI;

    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/passport/ui/internal/PassportUI;->getProvider(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/AuthProvider;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->provider:Lcom/xiaomi/passport/ui/internal/AuthProvider;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const-string p4, "ID_PSW_AUTH_PROVIDER"

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Lcom/xiaomi/passport/ui/internal/AuthProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->provider:Lcom/xiaomi/passport/ui/internal/AuthProvider;

    return-object v0
.end method

.method public final getSid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedInUserIds()[Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->context:Landroid/content/Context;

    const-string v1, "passport_ui"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sign_in_user_id"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    check-cast v3, Ljava/util/Set;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "sf.getStringSet(\"sign_in\u2026r_id\", HashSet<String>())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getView()Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->view:Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;

    return-object v0
.end method

.method public final saveSignedInUserId(Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V
    .locals 3
    .param p1    # Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->getSignedInUserIds()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->context:Landroid/content/Context;

    const-string v1, "passport_ui"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "sign_in_user_id"

    check-cast v0, Ljava/util/Set;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setProvider(Lcom/xiaomi/passport/ui/internal/AuthProvider;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/AuthProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->provider:Lcom/xiaomi/passport/ui/internal/AuthProvider;

    return-void
.end method

.method public signInIdAndPsw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "psw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/ui/internal/IdPswAuthCredential;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->sid:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/xiaomi/passport/ui/internal/IdPswAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->signInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V

    return-void
.end method

.method public signInPhoneAndPsw(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "psw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public signInVStep2(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Z)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step1Token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metaLoginData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step2code"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;

    iget-object v7, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->sid:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/passport/ui/internal/IdPswVStep2AuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;ZLjava/lang/String;)V

    check-cast v0, Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->signInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V

    return-void
.end method

.method public signInWithAuthCredential(Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V
    .locals 3
    .param p1    # Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "authCredential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->view:Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/internal/PswSignInContract$View;->showProgress()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->provider:Lcom/xiaomi/passport/ui/internal/AuthProvider;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;->context:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Lcom/xiaomi/passport/ui/internal/AuthCredential;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/internal/AuthProvider;->signInAndStoreAccount(Landroid/content/Context;Lcom/xiaomi/passport/ui/internal/AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$1;-><init>(Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$2;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/ui/internal/PswSignInPresenter$signInWithAuthCredential$2;-><init>(Lcom/xiaomi/passport/ui/internal/PswSignInPresenter;Lcom/xiaomi/passport/ui/internal/IdPswBaseAuthCredential;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/internal/Source;->get(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
