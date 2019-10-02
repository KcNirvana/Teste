.class final Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$2;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Passport"

    const-string v1, "captcha"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$2;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    check-cast p1, Ljava/io/IOException;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$2;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->$context:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->access$onIOError(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Ljava/io/IOException;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$2;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$2;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->onUnKnowError(Ljava/lang/Throwable;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
