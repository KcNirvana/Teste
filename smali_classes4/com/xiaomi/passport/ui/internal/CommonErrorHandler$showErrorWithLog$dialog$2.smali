.class final Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showErrorWithLog(Landroid/content/Context;Ljava/lang/Throwable;I)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $tr:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;->$tr:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;->$tr:Ljava/lang/Throwable;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Log.getStackTraceString(tr)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->access$showBigTh(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;->this$0:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;

    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;->$tr:Ljava/lang/Throwable;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Log.getStackTraceString(tr)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->access$showMidTh(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
