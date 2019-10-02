.class public abstract Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;
.super Lcom/xiaomi/passport/ui/internal/SignInFragment;
.source "FragmentBaseSign.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentBaseSign.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentBaseSign.kt\ncom/xiaomi/passport/ui/internal/BaseSignInFragment\n*L\n1#1,126:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001a\u001a\u00020\u001bH\u0004J\u0008\u0010\u001c\u001a\u00020\u001bH\u0016J\u001c\u0010\u001d\u001a\u00020\u001b2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010\"\u001a\u00020\u001bH\u0002J\u0008\u0010#\u001a\u00020\u001bH\u0002J\u0008\u0010$\u001a\u00020\u001bH\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016\u00a8\u0006%"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;",
        "Lcom/xiaomi/passport/ui/internal/SignInFragment;",
        "provider",
        "",
        "(Ljava/lang/String;)V",
        "mAuthProvider",
        "Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;",
        "getMAuthProvider",
        "()Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;",
        "setMAuthProvider",
        "(Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;)V",
        "mUserLicenseUtils",
        "Lcom/xiaomi/passport/ui/internal/UserLicenseUtils;",
        "getMUserLicenseUtils",
        "()Lcom/xiaomi/passport/ui/internal/UserLicenseUtils;",
        "getProvider",
        "()Ljava/lang/String;",
        "span1",
        "Landroid/text/style/ClickableSpan;",
        "getSpan1",
        "()Landroid/text/style/ClickableSpan;",
        "setSpan1",
        "(Landroid/text/style/ClickableSpan;)V",
        "span2",
        "getSpan2",
        "setSpan2",
        "hideSns",
        "",
        "onDestroyView",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setAgreementText",
        "showBindTitle",
        "showSns",
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

.field private mAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mUserLicenseUtils:Lcom/xiaomi/passport/ui/internal/UserLicenseUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final provider:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private span1:Landroid/text/style/ClickableSpan;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private span2:Landroid/text/style/ClickableSpan;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/SignInFragment;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->provider:Ljava/lang/String;

    sget-object p1, Lcom/xiaomi/passport/ui/internal/PassportUI;->INSTANCE:Lcom/xiaomi/passport/ui/internal/PassportUI;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/internal/PassportUI;->getBaseAuthProvider(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->mAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    new-instance p1, Lcom/xiaomi/passport/ui/internal/UserLicenseUtils;

    invoke-direct {p1}, Lcom/xiaomi/passport/ui/internal/UserLicenseUtils;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->mUserLicenseUtils:Lcom/xiaomi/passport/ui/internal/UserLicenseUtils;

    return-void
.end method

.method private final setAgreementText()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->mUserLicenseUtils:Lcom/xiaomi/passport/ui/internal/UserLicenseUtils;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/UserLicenseUtils;->getURLLicenses(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const/4 v6, 0x1

    add-int/2addr v3, v6

    if-ne v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget v7, Lcom/xiaomi/passport/ui/R$string;->passport_user_agreement_prefix:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ne v3, v6, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    sget v7, Lcom/xiaomi/passport/ui/R$string;->and:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    const-string v6, " , "

    :goto_1
    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/passport/ui/internal/URLLicense;

    invoke-virtual {v6}, Lcom/xiaomi/passport/ui/internal/URLLicense;->getReadableText()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    new-instance v7, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment$setAgreementText$1;

    invoke-direct {v7, p0, v5}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment$setAgreementText$1;-><init>(Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;Ljava/util/Map$Entry;)V

    const/16 v5, 0x21

    invoke-virtual {v1, v7, v4, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v4, v6

    goto :goto_0

    :cond_5
    sget v0, Lcom/xiaomi/passport/ui/R$id;->tv_user_agreement:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "tv_user_agreement"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/xiaomi/passport/ui/R$id;->tv_user_agreement:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tv_user_agreement"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private final showBindTitle()V
    .locals 2

    sget v0, Lcom/xiaomi/passport/ui/R$id;->mi_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "mi_logo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/xiaomi/passport/ui/R$id;->signin_title:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "signin_title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/xiaomi/passport/ui/R$id;->signin_title:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/xiaomi/passport/ui/R$string;->bind_sign_in_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private final showSns()V
    .locals 7

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PassportUI;->INSTANCE:Lcom/xiaomi/passport/ui/internal/PassportUI;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/PassportUI;->getMProviders$passportui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/passport/ui/internal/AuthProvider;

    instance-of v3, v2, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/xiaomi/passport/ui/R$layout;->sns_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/xiaomi/passport/ui/R$id;->sns_image:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object v5, v2

    check-cast v5, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;

    invoke-virtual {v5}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->getIconRes()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v6, Lcom/xiaomi/passport/ui/R$id;->sns_list_layout:I

    invoke-virtual {p0, v6}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment$showSns$1;

    invoke-direct {v3, p0, v2}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment$showSns$1;-><init>(Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;Lcom/xiaomi/passport/ui/internal/AuthProvider;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->getTintColor()I

    move-result v2

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    if-gtz v1, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->hideSns()V

    :cond_2
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getMAuthProvider()Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->mAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    return-object v0
.end method

.method public final getMUserLicenseUtils()Lcom/xiaomi/passport/ui/internal/UserLicenseUtils;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->mUserLicenseUtils:Lcom/xiaomi/passport/ui/internal/UserLicenseUtils;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpan1()Landroid/text/style/ClickableSpan;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->span1:Landroid/text/style/ClickableSpan;

    return-object v0
.end method

.method public final getSpan2()Landroid/text/style/ClickableSpan;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->span2:Landroid/text/style/ClickableSpan;

    return-object v0
.end method

.method protected final hideSns()V
    .locals 2

    sget v0, Lcom/xiaomi/passport/ui/R$id;->sns_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "sns_layout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/passport/ui/internal/SignInFragment;->onDestroyView()V

    sget v0, Lcom/xiaomi/passport/ui/R$id;->tv_user_agreement:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    check-cast v0, Landroid/text/Spannable;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->span1:Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget v0, Lcom/xiaomi/passport/ui/R$id;->tv_user_agreement:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    check-cast v0, Landroid/text/Spannable;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->span2:Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    check-cast v1, Landroid/text/style/ClickableSpan;

    iput-object v1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->span1:Landroid/text/style/ClickableSpan;

    iput-object v1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->span2:Landroid/text/style/ClickableSpan;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_clearFindViewByIdCache()V

    return-void

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.text.Spannable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.text.Spannable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/SignInFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->mAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v0, "sid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "arguments!!.getString(\"sid\")"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;->setPresenter(Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->signin_title:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "signin_title"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "signin_title.text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget p1, Lcom/xiaomi/passport/ui/R$id;->mi_logo:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string p2, "mi_logo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->signin_title:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "signin_title"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    sget-object p1, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;->Companion:Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/SNSAuthProvider$Companion;->isBindingSnsAccount()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->showBindTitle()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->hideSns()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->showSns()V

    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->setAgreementText()V

    return-void
.end method

.method public final setMAuthProvider(Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->mAuthProvider:Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    return-void
.end method

.method public final setSpan1(Landroid/text/style/ClickableSpan;)V
    .locals 0
    .param p1    # Landroid/text/style/ClickableSpan;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->span1:Landroid/text/style/ClickableSpan;

    return-void
.end method

.method public final setSpan2(Landroid/text/style/ClickableSpan;)V
    .locals 0
    .param p1    # Landroid/text/style/ClickableSpan;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->span2:Landroid/text/style/ClickableSpan;

    return-void
.end method
