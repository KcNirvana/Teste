.class public final Lcom/xiaomi/passport/ui/internal/SnsAuthActivity$onCreate$2;
.super Lcom/xiaomi/passport/ui/internal/PassportWebView;
.source "ActivitySnsAuth.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->onCreate(Landroid/os/Bundle;)V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/SnsAuthActivity$onCreate$2",
        "Lcom/xiaomi/passport/ui/internal/PassportWebView;",
        "(Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;Landroid/content/Context;)V",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "shouldOverrideUrlLoading",
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
.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity$onCreate$2;->this$0:Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;

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

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity$onCreate$2;->this$0:Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;

    invoke-static {p1}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->access$getMProgressHolder$p(Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;)Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/ProgressHolder;->dismissProgress()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "code"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity$onCreate$2;->this$0:Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity$onCreate$2;->this$0:Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/SnsAuthActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/PassportWebView;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
