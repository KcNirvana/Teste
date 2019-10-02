.class public final Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;
.super Ljava/lang/Object;
.source "FragmentGetPhAuthMethod.kt"

# interfaces
.implements Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B)\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0005J\u0012\u0010!\u001a\u00020\"2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0018\u0010#\u001a\u00020\"2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u001a\u0010$\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016R\u000e\u0010\n\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;",
        "Lcom/xiaomi/passport/ui/internal/PhAuthContract$Presenter;",
        "context",
        "Landroid/content/Context;",
        "sid",
        "",
        "view",
        "Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;",
        "name",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;Ljava/lang/String;)V",
        "TAG",
        "getContext",
        "()Landroid/content/Context;",
        "getName",
        "()Ljava/lang/String;",
        "passportRepo",
        "Lcom/xiaomi/passport/ui/internal/PassportRepo;",
        "getPassportRepo",
        "()Lcom/xiaomi/passport/ui/internal/PassportRepo;",
        "setPassportRepo",
        "(Lcom/xiaomi/passport/ui/internal/PassportRepo;)V",
        "provider",
        "Lcom/xiaomi/passport/ui/internal/AuthProvider;",
        "getProvider",
        "()Lcom/xiaomi/passport/ui/internal/AuthProvider;",
        "getSid",
        "getView",
        "()Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;",
        "createAuthCredential",
        "Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;",
        "phone",
        "Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
        "ticket",
        "getPhoneAuthMethod",
        "",
        "invalidateCathePhoneNum",
        "sendTicket",
        "captchaCode",
        "Lcom/xiaomi/passport/ui/internal/CaptchaCode;",
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
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final provider:Lcom/xiaomi/passport/ui/internal/AuthProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->sid:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->view:Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    iput-object p4, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->name:Ljava/lang/String;

    const-string p1, "PhTicketSignIn"

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->TAG:Ljava/lang/String;

    sget-object p1, Lcom/xiaomi/passport/ui/internal/PassportUI;->INSTANCE:Lcom/xiaomi/passport/ui/internal/PassportUI;

    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/passport/ui/internal/PassportUI;->getProvider(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/AuthProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->provider:Lcom/xiaomi/passport/ui/internal/AuthProvider;

    new-instance p1, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;

    invoke-direct {p1}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;-><init>()V

    check-cast p1, Lcom/xiaomi/passport/ui/internal/PassportRepo;

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const-string p4, "PHONE_SMS_AUTH_PROVIDER"

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$invalidateCathePhoneNum(Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;Landroid/content/Context;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->invalidateCathePhoneNum(Landroid/content/Context;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V

    return-void
.end method

.method private final invalidateCathePhoneNum(Landroid/content/Context;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    invoke-virtual {p2}, Lcom/xiaomi/passport/ui/internal/PhoneWrapper;->getActivateInfo()Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget p2, p2, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->slotId:I

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/ui/internal/PassportRepo;->invalidateCathePhoneNum(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final createAuthCredential(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;
    .locals 2
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ticket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->sid:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;-><init>(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassportRepo()Lcom/xiaomi/passport/ui/internal/PassportRepo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-object v0
.end method

.method public getPhoneAuthMethod(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V
    .locals 2
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->view:Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    sget v0, Lcom/xiaomi/passport/ui/R$string;->passport_error_phone_error:I

    invoke-interface {p1, v0}, Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;->showPhoneNumError(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->view:Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;->showProgress()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/ui/internal/PassportRepo;->getPhoneAuthMethod(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$1;-><init>(Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$getPhoneAuthMethod$2;-><init>(Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/ui/internal/Source;->get(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getProvider()Lcom/xiaomi/passport/ui/internal/AuthProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->provider:Lcom/xiaomi/passport/ui/internal/AuthProvider;

    return-object v0
.end method

.method public final getSid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public final getView()Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->view:Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    return-object v0
.end method

.method public sendTicket(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Lcom/xiaomi/passport/ui/internal/CaptchaCode;)V
    .locals 2
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/passport/ui/internal/CaptchaCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->view:Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;

    invoke-interface {v0}, Lcom/xiaomi/passport/ui/internal/PhAuthContract$View;->showProgress()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/ui/internal/PassportRepo;->sendPhoneTicket(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Lcom/xiaomi/passport/ui/internal/CaptchaCode;)Lcom/xiaomi/passport/ui/internal/Source;

    move-result-object p2

    new-instance v0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$sendTicket$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$sendTicket$1;-><init>(Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$sendTicket$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter$sendTicket$2;-><init>(Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;Lcom/xiaomi/passport/ui/internal/PhoneWrapper;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/passport/ui/internal/Source;->get(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setPassportRepo(Lcom/xiaomi/passport/ui/internal/PassportRepo;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/PassportRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhAuthPresenter;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-void
.end method
