.class public Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;
.super Lcom/xiaomi/passport/ui/internal/BaseAuthCredential;
.source "AuthBaseProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;",
        "Lcom/xiaomi/passport/ui/internal/BaseAuthCredential;",
        "phone",
        "Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
        "ticket",
        "",
        "sid",
        "(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Ljava/lang/String;Ljava/lang/String;)V",
        "newPsw",
        "getNewPsw",
        "()Ljava/lang/String;",
        "setNewPsw",
        "(Ljava/lang/String;)V",
        "getPhone",
        "()Lcom/xiaomi/passport/ui/internal/PhoneWrapper;",
        "getTicket",
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
.field private newPsw:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ticket:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/ui/internal/PhoneWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ticket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sid"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PHONE_SMS_AUTH_PROVIDER"

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/passport/ui/internal/BaseAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->ticket:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNewPsw()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->newPsw:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhone()Lcom/xiaomi/passport/ui/internal/PhoneWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->phone:Lcom/xiaomi/passport/ui/internal/PhoneWrapper;

    return-object v0
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public final setNewPsw(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneSmsAuthCredential;->newPsw:Ljava/lang/String;

    return-void
.end method
