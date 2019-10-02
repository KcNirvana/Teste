.class public final Lcom/xiaomi/passport/ui/internal/PassportWebFragment$onCreateView$1;
.super Lcom/xiaomi/passport/ui/internal/PassportWebView;
.source "AuthWeb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PassportWebFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/PassportWebFragment$onCreateView$1",
        "Lcom/xiaomi/passport/ui/internal/PassportWebView;",
        "(Lcom/xiaomi/passport/ui/internal/PassportWebFragment;Landroid/content/Context;)V",
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
.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PassportWebFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PassportWebFragment;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportWebFragment$onCreateView$1;->this$0:Lcom/xiaomi/passport/ui/internal/PassportWebFragment;

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

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportWebFragment$onCreateView$1;->this$0:Lcom/xiaomi/passport/ui/internal/PassportWebFragment;

    invoke-static {p1}, Lcom/xiaomi/passport/ui/internal/PassportWebFragment;->access$getMProgressHolder$p(Lcom/xiaomi/passport/ui/internal/PassportWebFragment;)Lcom/xiaomi/passport/ui/internal/ProgressHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/ProgressHolder;->dismissProgress()V

    return-void
.end method
