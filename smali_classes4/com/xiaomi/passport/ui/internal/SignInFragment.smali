.class public Lcom/xiaomi/passport/ui/internal/SignInFragment;
.super Landroid/support/v4/app/Fragment;
.source "FragmentSignIn.kt"

# interfaces
.implements Lcom/xiaomi/passport/ui/internal/SignInContract$View;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!H\u0016J\u0012\u0010\"\u001a\u00020\u00172\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010%\u001a\u00020\u0017H\u0016J\u0008\u0010&\u001a\u00020\u0017H\u0016J\u0010\u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020+H\u0016J\u0008\u0010,\u001a\u00020\u0017H\u0016J\u0010\u0010-\u001a\u00020\u00172\u0006\u0010.\u001a\u00020/H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u00060"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/SignInFragment;",
        "Landroid/support/v4/app/Fragment;",
        "Lcom/xiaomi/passport/ui/internal/SignInContract$View;",
        "()V",
        "addAccountListener",
        "Lcom/xiaomi/passport/ui/internal/AddAccountListener;",
        "getAddAccountListener",
        "()Lcom/xiaomi/passport/ui/internal/AddAccountListener;",
        "setAddAccountListener",
        "(Lcom/xiaomi/passport/ui/internal/AddAccountListener;)V",
        "mCommonErrorHandler",
        "Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;",
        "getMCommonErrorHandler",
        "()Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;",
        "mProgressHolder",
        "Lcom/xiaomi/passport/ui/internal/ProgressHolder;",
        "mWebAuth",
        "Lcom/xiaomi/passport/ui/internal/WebAuth;",
        "getMWebAuth",
        "()Lcom/xiaomi/passport/ui/internal/WebAuth;",
        "setMWebAuth",
        "(Lcom/xiaomi/passport/ui/internal/WebAuth;)V",
        "dismissProgress",
        "",
        "gotoBindSnsFragment",
        "e",
        "Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;",
        "gotoFragment",
        "fragment",
        "addToBackStack",
        "",
        "loginSuccess",
        "accountInfo",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onDestroyView",
        "onDetach",
        "openNotificationUrl",
        "url",
        "",
        "showNetworkError",
        "Ljava/io/IOException;",
        "showProgress",
        "showUnKnowError",
        "tr",
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


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private addAccountListener:Lcom/xiaomi/passport/ui/internal/AddAccountListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mCommonErrorHandler:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

.field private mWebAuth:Lcom/xiaomi/passport/ui/internal/WebAuth;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/internal/ProgressHolder;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    new-instance v0, Lcom/xiaomi/passport/ui/internal/WebAuth;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/internal/WebAuth;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mWebAuth:Lcom/xiaomi/passport/ui/internal/WebAuth;

    new-instance v0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mCommonErrorHandler:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public dismissProgress()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/ProgressHolder;->dismissProgress()V

    return-void
.end method

.method public final getAddAccountListener()Lcom/xiaomi/passport/ui/internal/AddAccountListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->addAccountListener:Lcom/xiaomi/passport/ui/internal/AddAccountListener;

    return-object v0
.end method

.method public final getMCommonErrorHandler()Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mCommonErrorHandler:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    return-object v0
.end method

.method public final getMWebAuth()Lcom/xiaomi/passport/ui/internal/WebAuth;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mWebAuth:Lcom/xiaomi/passport/ui/internal/WebAuth;

    return-object v0
.end method

.method public gotoBindSnsFragment(Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;)V
    .locals 2
    .param p1    # Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->addAccountListener:Lcom/xiaomi/passport/ui/internal/AddAccountListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mWebAuth:Lcom/xiaomi/passport/ui/internal/WebAuth;

    invoke-virtual {v1, p1}, Lcom/xiaomi/passport/ui/internal/WebAuth;->getSnsBindFragment(Lcom/xiaomi/passport/ui/internal/NeedBindSnsException;)Lcom/xiaomi/passport/ui/internal/SignInFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/passport/ui/internal/AddAccountListener;->gotoFragment(Landroid/support/v4/app/Fragment;Z)V

    :cond_0
    return-void
.end method

.method public gotoFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->addAccountListener:Lcom/xiaomi/passport/ui/internal/AddAccountListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/ui/internal/AddAccountListener;->gotoFragment(Landroid/support/v4/app/Fragment;Z)V

    :cond_0
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

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->addAccountListener:Lcom/xiaomi/passport/ui/internal/AddAccountListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountListener;->loginSuccess(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lcom/xiaomi/passport/ui/internal/AddAccountListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/passport/ui/internal/AddAccountListener;

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->addAccountListener:Lcom/xiaomi/passport/ui/internal/AddAccountListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement AddAccountListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SignInFragment;->dismissProgress()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SignInFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    check-cast v0, Lcom/xiaomi/passport/ui/internal/AddAccountListener;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->addAccountListener:Lcom/xiaomi/passport/ui/internal/AddAccountListener;

    return-void
.end method

.method public openNotificationUrl(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->addAccountListener:Lcom/xiaomi/passport/ui/internal/AddAccountListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mWebAuth:Lcom/xiaomi/passport/ui/internal/WebAuth;

    invoke-virtual {v1, p1}, Lcom/xiaomi/passport/ui/internal/WebAuth;->getNotificationFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/SignInFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/passport/ui/internal/AddAccountListener;->gotoFragment(Landroid/support/v4/app/Fragment;Z)V

    :cond_0
    return-void
.end method

.method public final setAddAccountListener(Lcom/xiaomi/passport/ui/internal/AddAccountListener;)V
    .locals 0
    .param p1    # Lcom/xiaomi/passport/ui/internal/AddAccountListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->addAccountListener:Lcom/xiaomi/passport/ui/internal/AddAccountListener;

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

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mWebAuth:Lcom/xiaomi/passport/ui/internal/WebAuth;

    return-void
.end method

.method public showNetworkError(Ljava/io/IOException;)V
    .locals 3
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SignInFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mCommonErrorHandler:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SignInFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/xiaomi/passport/ui/R$id;->fragment_main:I

    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/ui/internal/SignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->onIOError(Ljava/io/IOException;Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public showProgress()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SignInFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SignInFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/ProgressHolder;->showProgress(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public showUnKnowError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SignInFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SignInFragment;->mCommonErrorHandler:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SignInFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->onUnKnowError(Ljava/lang/Throwable;Landroid/content/Context;)V

    :cond_1
    return-void
.end method
