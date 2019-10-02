.class public final Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0016\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u0013J\u0018\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\rH\u0003JV\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000b26\u0010\u001f\u001a2\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(#\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\u000f0 J \u0010%\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010#\u001a\u00020&2\u0006\u0010\u001a\u001a\u00020\rH\u0002J \u0010\'\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010(\u001a\u00020&H\u0002J\u0018\u0010)\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\rH\u0002J\u0018\u0010*\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010+\u001a\u00020&H\u0002J\u0018\u0010*\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\rH\u0002J\u0018\u0010,\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0018\u0010-\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001a\u0010.\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006/"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;",
        "",
        "()V",
        "passportRepo",
        "Lcom/xiaomi/passport/ui/internal/PassportRepo;",
        "getPassportRepo",
        "()Lcom/xiaomi/passport/ui/internal/PassportRepo;",
        "setPassportRepo",
        "(Lcom/xiaomi/passport/ui/internal/PassportRepo;)V",
        "getCaptcha",
        "Lcom/xiaomi/passport/ui/internal/Source;",
        "Lcom/xiaomi/passport/ui/internal/Captcha;",
        "url",
        "",
        "onIOError",
        "",
        "e",
        "Ljava/io/IOException;",
        "context",
        "Landroid/content/Context;",
        "view",
        "Landroid/view/View;",
        "onUnKnowError",
        "tr",
        "",
        "showBigTh",
        "msg",
        "showCaptcha",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "captcha",
        "callback",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "code",
        "ick",
        "showError",
        "",
        "showErrorWithLog",
        "msgId",
        "showLittleTh",
        "showMidTh",
        "resId",
        "showUnKnowError",
        "showUnknowIOExceptionWithLog",
        "showUnknownHostException",
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
.field private passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;-><init>()V

    check-cast v0, Lcom/xiaomi/passport/ui/internal/PassportRepo;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-void
.end method

.method public static final synthetic access$getCaptcha(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/Source;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->getCaptcha(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onIOError(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Ljava/io/IOException;Landroid/content/Context;)V
    .locals 0
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->onIOError(Ljava/io/IOException;Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$showBigTh(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showBigTh(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$showMidTh(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showMidTh(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final getCaptcha(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/Source;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/passport/ui/internal/Source<",
            "Lcom/xiaomi/passport/ui/internal/Captcha;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/ui/internal/PassportRepo;->getCaptchaImage(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p1

    return-object p1
.end method

.method private final onIOError(Ljava/io/IOException;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->onIOError(Ljava/io/IOException;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private final showBigTh(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x1030242

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    const p2, 0x102000b

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final showError(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showError$dialog$1;->INSTANCE:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showError$dialog$1;

    check-cast p2, Landroid/content/DialogInterface$OnClickListener;

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private final showErrorWithLog(Landroid/content/Context;Ljava/lang/Throwable;I)V
    .locals 2

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p3

    sget-object v0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$1;->INSTANCE:Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$1;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x104000a

    invoke-virtual {p3, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p3

    sget v0, Lcom/xiaomi/passport/ui/R$string;->passport_log_detail:I

    new-instance v1, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showErrorWithLog$dialog$2;-><init>(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Landroid/content/Context;Ljava/lang/Throwable;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p3, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private final showLittleTh(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method private final showMidTh(Landroid/content/Context;I)V
    .locals 1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private final showMidTh(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private final showUnKnowError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p2, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    iget v1, v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->code:I

    const/16 v2, 0x272f

    if-ne v1, v2, :cond_0

    iget p2, v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->code:I

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->codeDesc:Ljava/lang/String;

    const-string v1, "tr.codeDesc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showError(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_0
    sget v0, Lcom/xiaomi/passport/ui/R$string;->passport_unknow_error:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showErrorWithLog(Landroid/content/Context;Ljava/lang/Throwable;I)V

    return-void
.end method

.method private final showUnknowIOExceptionWithLog(Landroid/content/Context;Ljava/io/IOException;)V
    .locals 1

    check-cast p2, Ljava/lang/Throwable;

    sget v0, Lcom/xiaomi/passport/ui/R$string;->passport_unknow_network_error:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showErrorWithLog(Landroid/content/Context;Ljava/lang/Throwable;I)V

    return-void
.end method

.method private final showUnknownHostException(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    sget v0, Lcom/xiaomi/passport/ui/R$string;->passport_unknow_host_network_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026nknow_host_network_error)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showLittleTh(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/xiaomi/passport/ui/R$string;->passport_unknow_host_network_error:I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showMidTh(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getPassportRepo()Lcom/xiaomi/passport/ui/internal/PassportRepo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-object v0
.end method

.method public final onIOError(Ljava/io/IOException;Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showUnknownHostException(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    instance-of p3, p1, Ljava/net/SocketTimeoutException;

    if-eqz p3, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    sget p3, Lcom/xiaomi/passport/ui/R$string;->passport_timeout_network_error:I

    invoke-direct {p0, p2, p1, p3}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showErrorWithLog(Landroid/content/Context;Ljava/lang/Throwable;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showUnknowIOExceptionWithLog(Landroid/content/Context;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public final onUnKnowError(Ljava/lang/Throwable;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->showUnKnowError(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    throw p1

    :cond_1
    throw p1
.end method

.method public final setPassportRepo(Lcom/xiaomi/passport/ui/internal/PassportRepo;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/PassportRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-void
.end method

.method public final showCaptcha(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/xiaomi/passport/ui/internal/Captcha;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/passport/ui/internal/Captcha;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "Lcom/xiaomi/passport/ui/internal/Captcha;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captcha"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/xiaomi/passport/ui/R$layout;->dg_captcha_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/xiaomi/passport/ui/R$id;->captcha_input:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget v1, Lcom/xiaomi/passport/ui/R$id;->captcha_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p3}, Lcom/xiaomi/passport/ui/internal/Captcha;->getIck()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/xiaomi/passport/ui/internal/Captcha;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v9, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p3

    move-object v5, v1

    move-object v6, v8

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$1;-><init>(Lcom/xiaomi/passport/ui/internal/CommonErrorHandler;Lcom/xiaomi/passport/ui/internal/Captcha;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p3, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/xiaomi/passport/ui/R$string;->passport_captcha_title:I

    invoke-virtual {p3, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$dialog$1;

    invoke-direct {p2, p4, v0, v8}, Lcom/xiaomi/passport/ui/internal/CommonErrorHandler$showCaptcha$dialog$1;-><init>(Lkotlin/jvm/functions/Function2;Landroid/widget/EditText;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast p2, Landroid/content/DialogInterface$OnClickListener;

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method
