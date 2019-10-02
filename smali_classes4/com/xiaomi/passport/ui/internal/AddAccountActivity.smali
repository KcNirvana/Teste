.class public final Lcom/xiaomi/passport/ui/internal/AddAccountActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ActivityAddAccount.kt"

# interfaces
.implements Lcom/xiaomi/passport/ui/internal/AddAccountListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/AddAccountActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityAddAccount.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityAddAccount.kt\ncom/xiaomi/passport/ui/internal/AddAccountActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,247:1\n652#2:248\n666#2,2:249\n624#2:251\n713#2,2:252\n633#2,10:254\n1528#2,2:264\n643#2,2:266\n1530#2:268\n645#2:269\n*E\n*S KotlinDebug\n*F\n+ 1 ActivityAddAccount.kt\ncom/xiaomi/passport/ui/internal/AddAccountActivity\n*L\n134#1:248\n134#1,2:249\n135#1:251\n135#1,2:252\n136#1,10:254\n136#1,2:264\n136#1,2:266\n136#1:268\n136#1:269\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 E2\u00020\u00012\u00020\u0002:\u0001EB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\n\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002J\u0008\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020$H\u0016J\u0010\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020*H\u0016J\"\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020-2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0014J\u0012\u00101\u001a\u00020\u001d2\u0008\u0010&\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u00102\u001a\u00020\u001dH\u0016J\u0012\u00103\u001a\u00020\u001d2\u0008\u00104\u001a\u0004\u0018\u000105H\u0014J\u0008\u00106\u001a\u00020\u001dH\u0014J\u0008\u00107\u001a\u00020\u001dH\u0014J\u0008\u00108\u001a\u00020$H\u0016J\u0010\u00109\u001a\u00020\u001d2\u0006\u0010:\u001a\u00020\u0011H\u0002J\u001a\u0010;\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020-2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0002J\u0010\u0010<\u001a\u00020\u001d2\u0006\u0010=\u001a\u00020>H\u0002J\u0008\u0010?\u001a\u00020\u001dH\u0002J\u0018\u0010@\u001a\u00020\u001d2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006F"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/AddAccountActivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "Lcom/xiaomi/passport/ui/internal/AddAccountListener;",
        "()V",
        "defaultAuthProvider",
        "Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;",
        "getDefaultAuthProvider",
        "()Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;",
        "setDefaultAuthProvider",
        "(Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;)V",
        "mCommonErrorHandler",
        "Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;",
        "getMCommonErrorHandler",
        "()Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;",
        "mProgressHolder",
        "Lcom/xiaomi/passport/ui/internal/ProgressHolder;",
        "mSid",
        "",
        "getMSid",
        "()Ljava/lang/String;",
        "setMSid",
        "(Ljava/lang/String;)V",
        "mWebAuth",
        "Lcom/xiaomi/passport/ui/internal/WebAuth;",
        "getMWebAuth",
        "()Lcom/xiaomi/passport/ui/internal/WebAuth;",
        "setMWebAuth",
        "(Lcom/xiaomi/passport/ui/internal/WebAuth;)V",
        "dismissProgress",
        "",
        "getCurrentFragment",
        "Landroid/support/v4/app/Fragment;",
        "getResources",
        "Landroid/content/res/Resources;",
        "goBack",
        "closeWebView",
        "",
        "gotoFragment",
        "fragment",
        "addToBackStack",
        "loginSuccess",
        "accountInfo",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAttachFragment",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onResume",
        "onSupportNavigateUp",
        "overrideDefaultAuthProvider",
        "defaultAuthProviderName",
        "setAddAccountResultAndFinish",
        "showNetworkError",
        "e",
        "Ljava/io/IOException;",
        "showProgress",
        "signInWithSnsCredential",
        "it",
        "Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;",
        "authCredential",
        "Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;",
        "Companion",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/passport/ui/internal/AddAccountActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private defaultAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mCommonErrorHandler:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

.field public mSid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mWebAuth:Lcom/xiaomi/passport/ui/internal/WebAuth;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->Companion:Lcom/xiaomi/passport/ui/internal/AddAccountActivity$Companion;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/internal/ProgressHolder;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    new-instance v0, Lcom/xiaomi/passport/ui/internal/WebAuth;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/internal/WebAuth;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mWebAuth:Lcom/xiaomi/passport/ui/internal/WebAuth;

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PassportUI;->INSTANCE:Lcom/xiaomi/passport/ui/internal/PassportUI;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PassportUI;->getDefaultBaseAuthProvider()Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->defaultAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    new-instance v0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mCommonErrorHandler:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    return-void
.end method

.method public static final synthetic access$dismissProgress(Lcom/xiaomi/passport/ui/internal/AddAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->dismissProgress()V

    return-void
.end method

.method public static final synthetic access$showNetworkError(Lcom/xiaomi/passport/ui/internal/AddAccountActivity;Ljava/io/IOException;)V
    .locals 0
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->showNetworkError(Ljava/io/IOException;)V

    return-void
.end method

.method private final dismissProgress()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/ProgressHolder;->dismissProgress()V

    return-void
.end method

.method private final getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/xiaomi/passport/ui/R$id;->fragment_container:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private final overrideDefaultAuthProvider(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ID_PSW_AUTH_PROVIDER"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/xiaomi/passport/ui/internal/IdPswAuthProvider;

    invoke-direct {p1}, Lcom/xiaomi/passport/ui/internal/IdPswAuthProvider;-><init>()V

    check-cast p1, Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->defaultAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    :cond_0
    return-void
.end method

.method private final setAddAccountResultAndFinish(ILcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "intent.getParcelableExtr\u2026T_AUTHENTICATOR_RESPONSE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "need_retry_on_authenticator_response_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/xiaomi/passport/utils/AccountHelper;->getAccountAuthenticatorResponseResult(ILcom/xiaomi/accountsdk/account/data/AccountInfo;Z)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->handleAccountAuthenticatorResponse(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    sget-object p2, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->Companion:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    invoke-virtual {p2}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->invalidBindParameter()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->finish()V

    :cond_0
    return-void
.end method

.method private final showNetworkError(Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mCommonErrorHandler:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/xiaomi/passport/ui/R$id;->fragment_main:I

    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->onIOError(Ljava/io/IOException;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private final showProgress()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/ProgressHolder;->showProgress(Landroid/content/Context;)V

    return-void
.end method

.method private final signInWithSnsCredential(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->showProgress()V

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    check-cast p2, Lcom/xiaomi/passport/ui/internal/AuthCredential;

    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->signInAndStoreAccount(Landroid/content/Context;Lcom/xiaomi/passport/ui/internal/AuthCredential;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$1;

    invoke-direct {p2, p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$1;-><init>(Lcom/xiaomi/passport/ui/internal/AddAccountActivity;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;-><init>(Lcom/xiaomi/passport/ui/internal/AddAccountActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/passport/ui/internal/Source;->get(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getDefaultAuthProvider()Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->defaultAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    return-object v0
.end method

.method public final getMCommonErrorHandler()Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mCommonErrorHandler:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    return-object v0
.end method

.method public final getMSid()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mSid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "mSid"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMWebAuth()Lcom/xiaomi/passport/ui/internal/WebAuth;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mWebAuth:Lcom/xiaomi/passport/ui/internal/WebAuth;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "applicationContext.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "super.getResources()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public goBack(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/xiaomi/passport/ui/internal/WebViewBack;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/xiaomi/passport/ui/internal/WebViewBack;

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/internal/WebViewBack;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/internal/WebViewBack;->goBack()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "supportFragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-lez p1, :cond_2

    sget p1, Lcom/xiaomi/passport/ui/R$id;->close_btn:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->setAddAccountResultAndFinish(ILcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    :goto_0
    return-void
.end method

.method public gotoFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/xiaomi/passport/ui/R$id;->fragment_container:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public loginSuccess(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1
    .param p1    # Lcom/xiaomi/accountsdk/account/data/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "accountInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->setAddAccountResultAndFinish(ILcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PassportUI;->INSTANCE:Lcom/xiaomi/passport/ui/internal/PassportUI;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PassportUI;->getMProviders$passportui_release()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;

    invoke-virtual {v5}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->getRequestCode()I

    move-result v5

    if-ne v5, p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;

    move-object v6, p0

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v5, v6, p1, p2, p3}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    sget-object v6, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->Companion:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    invoke-virtual {v6}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->getAuthCredential()Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;

    move-result-object v6

    if-eqz v6, :cond_6

    sget-object v7, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->Companion:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    invoke-virtual {v7}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->invalidAuthCredential()V

    invoke-direct {p0, v5, v6}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->signInWithSnsCredential(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;)V

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    check-cast v1, Ljava/util/List;

    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    if-eqz p1, :cond_1

    instance-of p1, p1, Lcom/xiaomi/passport/ui/internal/WebViewBack;

    if-eqz p1, :cond_1

    sget p1, Lcom/xiaomi/passport/ui/R$id;->close_btn:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    sget p1, Lcom/xiaomi/passport/ui/R$id;->close_btn:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$onAttachFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$onAttachFragment$1;-><init>(Lcom/xiaomi/passport/ui/internal/AddAccountActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/xiaomi/passport/ui/R$id;->close_btn:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->goBack(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/xiaomi/passport/ui/R$layout;->add_account_main:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->setContentView(I)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "service_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "passport"

    :goto_0
    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mSid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "default_auth_provider"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->overrideDefaultAuthProvider(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->defaultAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mSid:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v2, "mSid"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v1}, Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;->getFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/xiaomi/passport/ui/internal/AddAccountListener$DefaultImpls;->gotoFragment$default(Lcom/xiaomi/passport/ui/internal/AddAccountListener;Landroid/support/v4/app/Fragment;ZILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->dismissProgress()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    sget-object v0, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->Companion:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->getAuthCredential()Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->Companion:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->invalidAuthCredential()V

    sget-object v1, Lcom/xiaomi/passport/ui/internal/PassportUI;->INSTANCE:Lcom/xiaomi/passport/ui/internal/PassportUI;

    move-object v2, v0

    check-cast v2, Lcom/xiaomi/passport/ui/internal/AuthCredential;

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/ui/internal/PassportUI;->getProvider(Lcom/xiaomi/passport/ui/internal/AuthCredential;)Lcom/xiaomi/passport/ui/internal/AuthProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->signInWithSnsCredential(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.xiaomi.passport.ui.internal.SNSAuthProvider"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method public final setDefaultAuthProvider(Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->defaultAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    return-void
.end method

.method public final setMSid(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mSid:Ljava/lang/String;

    return-void
.end method

.method public final setMWebAuth(Lcom/xiaomi/passport/ui/internal/WebAuth;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/WebAuth;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->mWebAuth:Lcom/xiaomi/passport/ui/internal/WebAuth;

    return-void
.end method
