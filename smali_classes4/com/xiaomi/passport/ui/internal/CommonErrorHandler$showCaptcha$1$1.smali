.class final Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$1;
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
        "Lcom/xiaomi/passport/ui/internal/Captcha;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/xiaomi/passport/ui/internal/Captcha;",
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

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$1;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaomi/passport/ui/internal/Captcha;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$1;->invoke(Lcom/xiaomi/passport/ui/internal/Captcha;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/xiaomi/passport/ui/internal/Captcha;)V
    .locals 2
    .param p1    # Lcom/xiaomi/passport/ui/internal/Captcha;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$1;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->$captchaImg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/Captcha;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$1;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->$lastIck:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/Captcha;->getIck()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
