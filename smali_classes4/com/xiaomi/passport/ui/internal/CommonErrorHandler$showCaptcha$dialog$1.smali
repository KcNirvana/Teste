.class final Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$dialog$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showCaptcha(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/xiaomi/passport/ui/internal/Captcha;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function2;

.field final synthetic $captchaCode:Landroid/widget/EditText;

.field final synthetic $lastIck:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Landroid/widget/EditText;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$dialog$1;->$callback:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$dialog$1;->$captchaCode:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$dialog$1;->$lastIck:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$dialog$1;->$callback:Lkotlin/jvm/functions/Function2;

    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$dialog$1;->$captchaCode:Landroid/widget/EditText;

    const-string v0, "captchaCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$dialog$1;->$lastIck:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
