.class public final Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ActivitySnsAuth.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "()V",
        "mProgressHolder",
        "Lcom/xiaomi/passport/ui/internal/ProgressHolder;",
        "mWebView",
        "Landroid/webkit/WebView;",
        "getMWebView",
        "()Landroid/webkit/WebView;",
        "setMWebView",
        "(Landroid/webkit/WebView;)V",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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

.field private final mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

.field public mWebView:Landroid/webkit/WebView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/internal/ProgressHolder;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    return-void
.end method

.method public static final synthetic access$getMProgressHolder$p(Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;)Lcom/xiaomi/passport/ui/internal/ProgressHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getMWebView()Landroid/webkit/WebView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v1, "mWebView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v1, "mWebView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    const-string v1, "mWebView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/xiaomi/passport/ui/R$layout;->passport_webview_layout:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->setContentView(I)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->close_btn:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "close_btn"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->close_btn:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity$onCreate$1;-><init>(Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity$onCreate$2;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity$onCreate$2;-><init>(Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;Landroid/content/Context;)V

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_3

    const-string v2, "mWebView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lcom/xiaomi/passport/ui/R$id;->webview_container:I

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_4

    const-string v2, "mWebView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->mProgressHolder:Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/internal/ProgressHolder;->showProgress(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->mWebView:Landroid/webkit/WebView;

    if-nez p1, :cond_5

    const-string v0, "mWebView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final setMWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method
