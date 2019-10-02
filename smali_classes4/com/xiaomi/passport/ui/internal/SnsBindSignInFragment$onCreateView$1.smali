.class public final Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment$onCreateView$1;
.super Lcom/xiaomi/passport/ui/internal/PassportWebView;
.source "FragmentSnsAuth.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/SnsBindSignInFragment$onCreateView$1",
        "Lcom/xiaomi/passport/ui/internal/PassportWebView;",
        "(Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;Landroid/content/Context;)V",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "onSnsBindCancel",
        "",
        "accountInfo",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "onSnsBindFinished",
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
.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment$onCreateView$1;->this$0:Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;

    invoke-direct {p0, p2}, Lcom/xiaomi/passport/ui/internal/PassportWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment$onCreateView$1;->this$0:Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;->dismissProgress()V

    return-void
.end method

.method public onSnsBindCancel(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z
    .locals 1
    .param p1    # Lcom/xiaomi/accountsdk/account/data/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "accountInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment$onCreateView$1;->this$0:Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;->loginSuccess(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSnsBindFinished(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z
    .locals 1
    .param p1    # Lcom/xiaomi/accountsdk/account/data/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "accountInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment$onCreateView$1;->this$0:Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/internal/SnsBindSignInFragment;->loginSuccess(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    const/4 p1, 0x1

    return p1
.end method
