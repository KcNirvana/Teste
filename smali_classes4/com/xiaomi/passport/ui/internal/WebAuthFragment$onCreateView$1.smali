.class public final Lcom/xiaomi/passport/ui/internal/WebAuthFragment$onCreateView$1;
.super Lcom/xiaomi/passport/ui/internal/PassportWebView;
.source "AuthWeb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/WebAuthFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u001c\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/WebAuthFragment$onCreateView$1",
        "Lcom/xiaomi/passport/ui/internal/PassportWebView;",
        "(Lcom/xiaomi/passport/ui/internal/WebAuthFragment;Landroid/content/Context;)V",
        "onLoginEnd",
        "",
        "accountInfo",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        "onNeedReLogin",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
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
.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/WebAuthFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/WebAuthFragment;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/WebAuthFragment$onCreateView$1;->this$0:Lcom/xiaomi/passport/ui/internal/WebAuthFragment;

    invoke-direct {p0, p2}, Lcom/xiaomi/passport/ui/internal/PassportWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoginEnd(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z
    .locals 1
    .param p1    # Lcom/xiaomi/accountsdk/account/data/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "accountInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/WebAuthFragment$onCreateView$1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->addOrUpdateAccountManager(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/WebAuthFragment$onCreateView$1;->this$0:Lcom/xiaomi/passport/ui/internal/WebAuthFragment;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/internal/WebAuthFragment;->loginSuccess(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onNeedReLogin()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/WebAuthFragment$onCreateView$1;->this$0:Lcom/xiaomi/passport/ui/internal/WebAuthFragment;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/WebAuthFragment;->getAddAccountListener()Lcom/xiaomi/passport/ui/internal/AddAccountListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/ui/internal/AddAccountListener;->goBack(Z)V

    :cond_0
    return v1
.end method

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

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/WebAuthFragment$onCreateView$1;->this$0:Lcom/xiaomi/passport/ui/internal/WebAuthFragment;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/WebAuthFragment;->dismissProgress()V

    return-void
.end method
