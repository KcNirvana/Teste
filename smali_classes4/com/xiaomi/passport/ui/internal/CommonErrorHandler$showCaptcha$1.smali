.class final Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $captcha:Lcom/xiaomi/passport/ui/internal/Captcha;

.field final synthetic $captchaImg:Landroid/widget/ImageView;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $lastIck:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Lcom/xiaomi/passport/ui/internal/Captcha;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->$captcha:Lcom/xiaomi/passport/ui/internal/Captcha;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->$captchaImg:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->$lastIck:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;->$captcha:Lcom/xiaomi/passport/ui/internal/Captcha;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/Captcha;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->access$getCaptcha(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$1;-><init>(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1$2;-><init>(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/passport/ui/internal/Source;->get(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
