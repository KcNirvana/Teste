.class public final Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider$startLogin$1;
.super Ljava/lang/Object;
.source "AuthSnsProvider.kt"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WbAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider;->startLogin(Landroid/app/Activity;)V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/WeiboSSOAuthProvider$startLogin$1",
        "Lcom/sina/weibo/sdk/auth/WbAuthListener;",
        "(Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider;Landroid/app/Activity;)V",
        "cancel",
        "",
        "onFailure",
        "p0",
        "Lcom/sina/weibo/sdk/auth/WbConnectErrorMessage;",
        "onSuccess",
        "token",
        "Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider$startLogin$1;->this$0:Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider$startLogin$1;->$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider$startLogin$1;->$activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "onCancel"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onFailure(Lcom/sina/weibo/sdk/auth/WbConnectErrorMessage;)V
    .locals 2
    .param p1    # Lcom/sina/weibo/sdk/auth/WbConnectErrorMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider$startLogin$1;->$activity:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    const-string v0, "onFailure"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 3
    .param p1    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider$startLogin$1;->this$0:Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider$startLogin$1;->$activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    const-string v2, "token.token"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/ui/internal/WeiboSSOAuthProvider;->storeSnsToken(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
