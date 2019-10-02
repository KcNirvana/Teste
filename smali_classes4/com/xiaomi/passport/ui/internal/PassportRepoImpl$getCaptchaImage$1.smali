.class final Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getCaptchaImage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PassportCore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;->getCaptchaImage(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/xiaomi/passport/ui/internal/Captcha;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getCaptchaImage$1;->this$0:Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getCaptchaImage$1;->$url:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/xiaomi/passport/ui/internal/Captcha;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getCaptchaImage$1;->this$0:Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getCaptchaImage$1;->$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;->access$getCaptchaImageNullSafe(Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/internal/Captcha;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v3, "captcha.second"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getCaptchaImage$1;->$url:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/xiaomi/passport/ui/internal/Captcha;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$getCaptchaImage$1;->invoke()Lcom/xiaomi/passport/ui/internal/Captcha;

    move-result-object v0

    return-object v0
.end method
