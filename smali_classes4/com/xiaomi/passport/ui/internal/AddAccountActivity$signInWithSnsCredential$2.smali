.class final Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ActivityAddAccount.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->signInWithSnsCredential(Lcom/xiaomi/passport/ui/internal/SNSAuthProvider;Lcom/xiaomi/passport/ui/internal/SNSAuthCredential;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/AddAccountActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/AddAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/AddAccountActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/AddAccountActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->access$dismissProgress(Lcom/xiaomi/passport/ui/internal/AddAccountActivity;)V

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/AddAccountActivity;

    check-cast p1, Ljava/io/IOException;

    invoke-static {v0, p1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->access$showNetworkError(Lcom/xiaomi/passport/ui/internal/AddAccountActivity;Ljava/io/IOException;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/AddAccountActivity;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/AddAccountActivity;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getMWebAuth()Lcom/xiaomi/passport/ui/internal/WebAuth;

    move-result-object v1

    check-cast p1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getNotificationUrl()Ljava/lang/String;

    move-result-object p1

    const-string v2, "it.notificationUrl"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaomi/passport/ui/internal/WebAuth;->getNotificationFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/SignInFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->gotoFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/AddAccountActivity;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/AddAccountActivity;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getDefaultAuthProvider()Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/AddAccountActivity;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getMSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;->getFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/xiaomi/passport/ui/internal/AddAccountListener$DefaultImpls;->gotoFragment$default(Lcom/xiaomi/passport/ui/internal/AddAccountListener;Landroid/support/v4/app/Fragment;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/AddAccountActivity;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/AddAccountActivity;->getMCommonErrorHandler()Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AddAccountActivity$signInWithSnsCredential$2;->this$0:Lcom/xiaomi/passport/ui/internal/AddAccountActivity;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->onUnKnowError(Ljava/lang/Throwable;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
