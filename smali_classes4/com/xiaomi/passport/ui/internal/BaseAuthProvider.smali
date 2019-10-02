.class public abstract Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;
.super Lcom/xiaomi/passport/ui/internal/AuthProvider;
.source "AuthBaseProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H&J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000cH&R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;",
        "Lcom/xiaomi/passport/ui/internal/AuthProvider;",
        "name",
        "",
        "(Ljava/lang/String;)V",
        "passportRepo",
        "Lcom/xiaomi/passport/ui/internal/PassportRepo;",
        "getPassportRepo",
        "()Lcom/xiaomi/passport/ui/internal/PassportRepo;",
        "setPassportRepo",
        "(Lcom/xiaomi/passport/ui/internal/PassportRepo;)V",
        "getFragment",
        "Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;",
        "sid",
        "setPresenter",
        "",
        "fragment",
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/AuthProvider;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;

    invoke-direct {p1}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;-><init>()V

    check-cast p1, Lcom/xiaomi/passport/ui/internal/PassportRepo;

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-void
.end method


# virtual methods
.method public abstract getFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getPassportRepo()Lcom/xiaomi/passport/ui/internal/PassportRepo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-object v0
.end method

.method public final setPassportRepo(Lcom/xiaomi/passport/ui/internal/PassportRepo;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/PassportRepo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/BaseAuthProvider;->passportRepo:Lcom/xiaomi/passport/ui/internal/PassportRepo;

    return-void
.end method

.method public abstract setPresenter(Ljava/lang/String;Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
